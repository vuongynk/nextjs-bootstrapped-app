package com.onlinelearning.repository;

import com.onlinelearning.model.Section;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface SectionRepository extends JpaRepository<Section, Long> {
    
    List<Section> findByCourseId(Long courseId);
    
    @Query("SELECT s FROM Section s WHERE s.course.id = :courseId ORDER BY s.orderIndex")
    List<Section> findByCourseIdOrdered(@Param("courseId") Long courseId);
    
    @Query("SELECT MAX(s.orderIndex) FROM Section s WHERE s.course.id = :courseId")
    Optional<Integer> findMaxOrderIndexByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT s FROM Section s WHERE s.course.id = :courseId AND s.orderIndex > :orderIndex")
    List<Section> findSectionsAfterOrderIndex(
        @Param("courseId") Long courseId,
        @Param("orderIndex") Integer orderIndex
    );
    
    @Query("SELECT COUNT(l) FROM Section s JOIN s.lessons l WHERE s.id = :sectionId")
    long countLessonsBySectionId(@Param("sectionId") Long sectionId);
    
    @Query("SELECT s FROM Section s WHERE s.course.id = :courseId AND " +
           "(LOWER(s.title) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(s.description) LIKE LOWER(CONCAT('%', :keyword, '%')))")
    List<Section> searchSectionsInCourse(
        @Param("courseId") Long courseId,
        @Param("keyword") String keyword
    );
    
    boolean existsByTitleAndCourseId(String title, Long courseId);
    
    @Query("SELECT s FROM Section s WHERE s.course.instructor.id = :instructorId")
    List<Section> findByInstructorId(@Param("instructorId") Long instructorId);
    
    @Query("SELECT s FROM Section s WHERE s.course.id = :courseId AND " +
           "EXISTS (SELECT l FROM s.lessons l WHERE l.isPreview = true)")
    List<Section> findSectionsWithPreviewLessons(@Param("courseId") Long courseId);
    
    void deleteByCourseId(Long courseId);
}
