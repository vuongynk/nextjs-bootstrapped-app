package com.onlinelearning.repository;

import com.onlinelearning.model.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
    
    List<Lesson> findBySectionId(Long sectionId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.id = :sectionId ORDER BY l.orderIndex")
    List<Lesson> findBySectionIdOrdered(@Param("sectionId") Long sectionId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.id = :courseId")
    List<Lesson> findByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT MAX(l.orderIndex) FROM Lesson l WHERE l.section.id = :sectionId")
    Optional<Integer> findMaxOrderIndexBySectionId(@Param("sectionId") Long sectionId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.id = :sectionId AND l.orderIndex > :orderIndex")
    List<Lesson> findLessonsAfterOrderIndex(
        @Param("sectionId") Long sectionId,
        @Param("orderIndex") Integer orderIndex
    );
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.id = :courseId AND l.isPreview = true")
    List<Lesson> findPreviewLessonsByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.id = :courseId AND l.type = :type")
    List<Lesson> findLessonsByCourseIdAndType(
        @Param("courseId") Long courseId,
        @Param("type") Lesson.Type type
    );
    
    @Query("SELECT COUNT(p) FROM Lesson l JOIN l.studentProgress p " +
           "WHERE l.id = :lessonId AND p.status = 'COMPLETED'")
    long countCompletedByLessonId(@Param("lessonId") Long lessonId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.id = :courseId AND " +
           "(LOWER(l.title) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "LOWER(l.description) LIKE LOWER(CONCAT('%', :keyword, '%')))")
    List<Lesson> searchLessonsInCourse(
        @Param("courseId") Long courseId,
        @Param("keyword") String keyword
    );
    
    @Query("SELECT l FROM Lesson l JOIN l.studentProgress p " +
           "WHERE p.student.id = :studentId AND p.status = 'COMPLETED'")
    List<Lesson> findCompletedLessonsByStudentId(@Param("studentId") Long studentId);
    
    @Query("SELECT COUNT(l) FROM Lesson l WHERE l.section.course.id = :courseId")
    long countLessonsByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.instructor.id = :instructorId")
    List<Lesson> findByInstructorId(@Param("instructorId") Long instructorId);
    
    @Query("SELECT l FROM Lesson l JOIN l.studentProgress p " +
           "WHERE p.student.id = :studentId AND " +
           "p.status = 'IN_PROGRESS' AND " +
           "p.startedAt = (SELECT MAX(p2.startedAt) FROM Lesson l2 " +
           "JOIN l2.studentProgress p2 WHERE p2.student.id = :studentId)")
    Optional<Lesson> findLastAccessedLesson(@Param("studentId") Long studentId);
    
    @Query("SELECT DISTINCT l.type FROM Lesson l WHERE l.section.course.id = :courseId")
    List<Lesson.Type> findLessonTypesByCourseId(@Param("courseId") Long courseId);
    
    void deleteBySectionId(Long sectionId);
    
    @Query("SELECT l FROM Lesson l WHERE l.section.course.id = :courseId " +
           "AND NOT EXISTS (SELECT p FROM l.studentProgress p)")
    List<Lesson> findUnstartedLessonsByCourseId(@Param("courseId") Long courseId);
}
