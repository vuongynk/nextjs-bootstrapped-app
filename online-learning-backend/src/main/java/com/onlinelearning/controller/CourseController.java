package com.onlinelearning.controller;

import com.onlinelearning.dto.course.*;
import com.onlinelearning.service.CourseService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/courses")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:3000")
public class CourseController {

    private final CourseService courseService;

    @GetMapping("/public")
    public ResponseEntity<Page<CourseResponse>> getPublicCourses(
            @RequestParam(required = false) String search,
            @RequestParam(required = false) String category,
            @RequestParam(required = false) String level,
            Pageable pageable
    ) {
        return ResponseEntity.ok(courseService.getPublicCourses(search, category, level, pageable));
    }

    @GetMapping("/public/{id}")
    public ResponseEntity<CourseDetailResponse> getPublicCourseDetails(@PathVariable Long id) {
        return ResponseEntity.ok(courseService.getPublicCourseDetails(id));
    }

    @GetMapping("/categories")
    public ResponseEntity<List<String>> getAllCategories() {
        return ResponseEntity.ok(courseService.getAllCategories());
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @PostMapping
    public ResponseEntity<CourseResponse> createCourse(
            @Valid @RequestBody CreateCourseRequest request,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.createCourse(request, authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @PutMapping("/{id}")
    public ResponseEntity<CourseResponse> updateCourse(
            @PathVariable Long id,
            @Valid @RequestBody UpdateCourseRequest request,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.updateCourse(id, request, authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCourse(
            @PathVariable Long id,
            Authentication authentication
    ) {
        courseService.deleteCourse(id, authentication.getName());
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("hasRole('STUDENT')")
    @PostMapping("/{id}/enroll")
    public ResponseEntity<Void> enrollInCourse(
            @PathVariable Long id,
            Authentication authentication
    ) {
        courseService.enrollInCourse(id, authentication.getName());
        return ResponseEntity.ok().build();
    }

    @PreAuthorize("hasRole('STUDENT')")
    @GetMapping("/enrolled")
    public ResponseEntity<List<CourseResponse>> getEnrolledCourses(Authentication authentication) {
        return ResponseEntity.ok(courseService.getEnrolledCourses(authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @GetMapping("/teaching")
    public ResponseEntity<List<CourseResponse>> getTeachingCourses(Authentication authentication) {
        return ResponseEntity.ok(courseService.getTeachingCourses(authentication.getName()));
    }

    @GetMapping("/{id}/sections")
    public ResponseEntity<List<SectionResponse>> getCourseSections(
            @PathVariable Long id,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.getCourseSections(id, authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @PostMapping("/{id}/sections")
    public ResponseEntity<SectionResponse> addSection(
            @PathVariable Long id,
            @Valid @RequestBody CreateSectionRequest request,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.addSection(id, request, authentication.getName()));
    }

    @GetMapping("/popular")
    public ResponseEntity<List<CourseResponse>> getPopularCourses() {
        return ResponseEntity.ok(courseService.getPopularCourses());
    }

    @GetMapping("/new")
    public ResponseEntity<List<CourseResponse>> getNewCourses() {
        return ResponseEntity.ok(courseService.getNewCourses());
    }

    @GetMapping("/{id}/progress")
    public ResponseEntity<CourseProgressResponse> getCourseProgress(
            @PathVariable Long id,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.getCourseProgress(id, authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @PutMapping("/{id}/publish")
    public ResponseEntity<CourseResponse> publishCourse(
            @PathVariable Long id,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.publishCourse(id, authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @GetMapping("/{id}/stats")
    public ResponseEntity<CourseStatsResponse> getCourseStats(
            @PathVariable Long id,
            Authentication authentication
    ) {
        return ResponseEntity.ok(courseService.getCourseStats(id, authentication.getName()));
    }
}
