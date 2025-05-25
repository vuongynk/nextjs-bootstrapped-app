package com.onlinelearning.repository;

import com.onlinelearning.model.Course;
import com.onlinelearning.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CourseRepository extends JpaRepository<Course, Long> {
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED'")
    Page<Course> findAllPublishedCourses(Pageable pageable);
    
    @Query("SELECT c FROM Course c WHERE c.instructor.id = :instructorId")
    List<Course> findByInstructorId(@Param("instructorId") Long instructorId);
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED' AND " +
           "(LOWER(c.title) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(c.description) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(c.category) LIKE LOWER(CONCAT('%', :keyword, '%')))")
    Page<Course> searchCourses(@Param("keyword") String keyword, Pageable pageable);
    
    @Query("SELECT c FROM Course c WHERE c.category = :category AND c.status = 'PUBLISHED'")
    List<Course> findByCategory(@Param("category") String category);
    
    @Query("SELECT c FROM Course c WHERE c.level = :level AND c.status = 'PUBLISHED'")
    List<Course> findByLevel(@Param("level") Course.Level level);
    
    @Query("SELECT c FROM Course c WHERE c.price <= :maxPrice AND c.status = 'PUBLISHED'")
    List<Course> findByPriceLessThanEqual(@Param("maxPrice") double maxPrice);
    
    @Query("SELECT c FROM Course c WHERE c.rating >= :minRating AND c.status = 'PUBLISHED'")
    List<Course> findByMinimumRating(@Param("minRating") double minRating);
    
    @Query("SELECT c FROM Course c JOIN c.enrolledStudents s WHERE s.id = :studentId")
    List<Course> findEnrolledCoursesByStudentId(@Param("studentId") Long studentId);
    
    @Query("SELECT COUNT(c) FROM Course c WHERE c.instructor.id = :instructorId")
    long countCoursesByInstructor(@Param("instructorId") Long instructorId);
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED' " +
           "ORDER BY c.totalStudents DESC")
    List<Course> findMostPopularCourses(Pageable pageable);
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED' " +
           "ORDER BY c.rating DESC NULLS LAST")
    List<Course> findTopRatedCourses(Pageable pageable);
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED' " +
           "AND c.createdAt >= CURRENT_DATE - 30")
    List<Course> findNewCourses(Pageable pageable);
    
    @Query("SELECT DISTINCT c.category FROM Course c WHERE c.status = 'PUBLISHED'")
    List<String> findAllCategories();
    
    @Query("SELECT c FROM Course c WHERE c.status = 'PUBLISHED' " +
           "AND c.category = :category " +
           "AND c.id != :courseId " +
           "ORDER BY c.rating DESC NULLS LAST")
    List<Course> findRelatedCourses(
        @Param("category") String category,
        @Param("courseId") Long courseId,
        Pageable pageable
    );
    
    @Query("SELECT c FROM Course c WHERE c.status = 'DRAFT' " +
           "AND c.instructor.id = :instructorId")
    List<Course> findDraftCoursesByInstructor(@Param("instructorId") Long instructorId);
    
    @Query("SELECT COUNT(s) FROM Course c JOIN c.enrolledStudents s " +
           "WHERE c.id = :courseId")
    long countEnrolledStudents(@Param("courseId") Long courseId);
    
    @Query("SELECT AVG(c.rating) FROM Course c WHERE c.instructor.id = :instructorId " +
           "AND c.rating IS NOT NULL")
    Double calculateAverageInstructorRating(@Param("instructorId") Long instructorId);
    
    boolean existsByTitleAndInstructor(String title, User instructor);
}
