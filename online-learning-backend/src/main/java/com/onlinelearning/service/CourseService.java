package com.onlinelearning.service;

import com.onlinelearning.dto.course.*;
import com.onlinelearning.model.Course;
import com.onlinelearning.model.Section;
import com.onlinelearning.model.User;
import com.onlinelearning.repository.CourseRepository;
import com.onlinelearning.repository.SectionRepository;
import com.onlinelearning.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CourseService {

    private final CourseRepository courseRepository;
    private final UserRepository userRepository;
    private final SectionRepository sectionRepository;

    public Page<CourseResponse> getPublicCourses(
            String search,
            String category,
            String level,
            Pageable pageable
    ) {
        Page<Course> courses;
        if (search != null && !search.isEmpty()) {
            courses = courseRepository.searchCourses(search, pageable);
        } else if (category != null && !category.isEmpty()) {
            courses = courseRepository.findByCategory(category, pageable);
        } else if (level != null && !level.isEmpty()) {
            courses = courseRepository.findByLevel(Course.Level.valueOf(level.toUpperCase()), pageable);
        } else {
            courses = courseRepository.findAllPublishedCourses(pageable);
        }
        return courses.map(this::mapToCourseResponse);
    }

    public CourseDetailResponse getPublicCourseDetails(Long id) {
        Course course = courseRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Course not found"));
        return mapToCourseDetailResponse(course);
    }

    public List<String> getAllCategories() {
        return courseRepository.findAllCategories();
    }

    @Transactional
    public CourseResponse createCourse(CreateCourseRequest request, String instructorEmail) {
        User instructor = userRepository.findByEmail(instructorEmail)
                .orElseThrow(() -> new RuntimeException("Instructor not found"));

        if (!instructor.isInstructor()) {
            throw new RuntimeException("User is not an instructor");
        }

        Course course = Course.builder()
                .title(request.getTitle())
                .description(request.getDescription())
                .price(request.getPrice())
                .level(request.getLevel())
                .category(request.getCategory())
                .duration(request.getDuration())
                .instructor(instructor)
                .status(Course.Status.DRAFT)
                .build();

        return mapToCourseResponse(courseRepository.save(course));
    }

    @Transactional
    public CourseResponse updateCourse(Long id, UpdateCourseRequest request, String instructorEmail) {
        Course course = courseRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        if (!course.getInstructor().getEmail().equals(instructorEmail)) {
            throw new RuntimeException("Not authorized to update this course");
        }

        course.setTitle(request.getTitle());
        course.setDescription(request.getDescription());
        course.setPrice(request.getPrice());
        course.setLevel(request.getLevel());
        course.setCategory(request.getCategory());
        course.setDuration(request.getDuration());

        return mapToCourseResponse(courseRepository.save(course));
    }

    @Transactional
    public void deleteCourse(Long id, String instructorEmail) {
        Course course = courseRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        if (!course.getInstructor().getEmail().equals(instructorEmail)) {
            throw new RuntimeException("Not authorized to delete this course");
        }

        courseRepository.delete(course);
    }

    @Transactional
    public void enrollInCourse(Long courseId, String studentEmail) {
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));
        User student = userRepository.findByEmail(studentEmail)
                .orElseThrow(() -> new RuntimeException("Student not found"));

        if (!course.isPublished()) {
            throw new RuntimeException("Course is not published");
        }

        student.enrollInCourse(course);
        userRepository.save(student);
    }

    public List<CourseResponse> getEnrolledCourses(String studentEmail) {
        User student = userRepository.findByEmail(studentEmail)
                .orElseThrow(() -> new RuntimeException("Student not found"));

        return student.getEnrolledCourses().stream()
                .map(this::mapToCourseResponse)
                .collect(Collectors.toList());
    }

    public List<CourseResponse> getTeachingCourses(String instructorEmail) {
        User instructor = userRepository.findByEmail(instructorEmail)
                .orElseThrow(() -> new RuntimeException("Instructor not found"));

        return instructor.getCreatedCourses().stream()
                .map(this::mapToCourseResponse)
                .collect(Collectors.toList());
    }

    public List<SectionResponse> getCourseSections(Long courseId, String userEmail) {
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        User user = userRepository.findByEmail(userEmail)
                .orElseThrow(() -> new RuntimeException("User not found"));

        if (!course.isPublished() && !course.getInstructor().equals(user)) {
            throw new RuntimeException("Not authorized to view course sections");
        }

        return course.getSections().stream()
                .map(this::mapToSectionResponse)
                .collect(Collectors.toList());
    }

    @Transactional
    public SectionResponse addSection(Long courseId, CreateSectionRequest request, String instructorEmail) {
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new RuntimeException("Course not found"));

        if (!course.getInstructor().getEmail().equals(instructorEmail)) {
            throw new RuntimeException("Not authorized to add sections to this course");
        }

        Section section = Section.builder()
                .title(request.getTitle())
                .description(request.getDescription())
                .orderIndex(course.getSections().size() + 1)
                .course(course)
                .build();

        return mapToSectionResponse(sectionRepository.save(section));
    }

    public List<CourseResponse> getPopularCourses() {
        return courseRepository.findMostPopularCourses(Pageable.ofSize(10))
                .stream()
                .map(this::mapToCourseResponse)
                .collect(Collectors.toList());
    }

    public List<CourseResponse> getNewCourses() {
        return courseRepository.findNewCourses(Pageable.ofSize(10))
                .stream()
                .map(this::mapToCourseResponse)
                .collect(Collectors.toList());
    }

    private CourseResponse mapToCourseResponse(Course course) {
        return CourseResponse.builder()
                .id(course.getId())
                .title(course.getTitle())
                .description(course.getDescription())
                .instructor(course.getInstructor().getName())
                .category(course.getCategory())
                .level(course.getLevel())
                .price(course.getPrice())
                .rating(course.getRating())
                .totalStudents(course.getTotalStudents())
                .status(course.getStatus())
                .build();
    }

    private CourseDetailResponse mapToCourseDetailResponse(Course course) {
        return CourseDetailResponse.builder()
                .id(course.getId())
                .title(course.getTitle())
                .description(course.getDescription())
                .instructor(course.getInstructor().getName())
                .category(course.getCategory())
                .level(course.getLevel())
                .price(course.getPrice())
                .rating(course.getRating())
                .totalStudents(course.getTotalStudents())
                .totalLessons(course.getTotalLessons())
                .duration(course.getDuration())
                .status(course.getStatus())
                .sections(course.getSections().stream()
                        .map(this::mapToSectionResponse)
                        .collect(Collectors.toList()))
                .build();
    }

    private SectionResponse mapToSectionResponse(Section section) {
        return SectionResponse.builder()
                .id(section.getId())
                .title(section.getTitle())
                .description(section.getDescription())
                .orderIndex(section.getOrderIndex())
                .build();
    }
}
