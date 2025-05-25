package com.onlinelearning.repository;

import com.onlinelearning.model.Certificate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

public interface CertificateRepository extends JpaRepository<Certificate, Long> {
    
    Optional<Certificate> findByCertificateNumber(String certificateNumber);
    
    List<Certificate> findByUserId(Long userId);
    
    @Query("SELECT c FROM Certificate c WHERE c.course.id = :courseId")
    List<Certificate> findByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT c FROM Certificate c WHERE c.user.id = :userId AND c.course.id = :courseId")
    Optional<Certificate> findByUserIdAndCourseId(
        @Param("userId") Long userId,
        @Param("courseId") Long courseId
    );
    
    @Query("SELECT COUNT(c) FROM Certificate c WHERE c.course.id = :courseId")
    long countCertificatesByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT c FROM Certificate c WHERE c.status = :status")
    List<Certificate> findByStatus(@Param("status") Certificate.Status status);
    
    @Query("SELECT c FROM Certificate c WHERE c.expiresAt < :date AND c.status = 'ISSUED'")
    List<Certificate> findExpiredCertificates(@Param("date") LocalDateTime date);
    
    @Query("SELECT c FROM Certificate c WHERE c.course.instructor.id = :instructorId")
    List<Certificate> findByInstructorId(@Param("instructorId") Long instructorId);
    
    @Query("SELECT COUNT(c) FROM Certificate c WHERE c.course.instructor.id = :instructorId")
    long countCertificatesByInstructor(@Param("instructorId") Long instructorId);
    
    @Query("SELECT c FROM Certificate c WHERE c.issuedAt >= :startDate AND c.issuedAt <= :endDate")
    List<Certificate> findCertificatesIssuedBetween(
        @Param("startDate") LocalDateTime startDate,
        @Param("endDate") LocalDateTime endDate
    );
    
    @Query("SELECT c FROM Certificate c WHERE " +
           "LOWER(c.recipientName) LIKE LOWER(CONCAT('%', :keyword, '%')) OR " +
           "c.certificateNumber LIKE CONCAT('%', :keyword, '%')")
    List<Certificate> searchCertificates(@Param("keyword") String keyword);
    
    @Query("SELECT c FROM Certificate c WHERE c.user.id = :userId " +
           "ORDER BY c.issuedAt DESC")
    List<Certificate> findRecentCertificatesByUserId(@Param("userId") Long userId);
    
    @Query("SELECT COUNT(c) FROM Certificate c WHERE " +
           "c.course.id = :courseId AND c.grade = :grade")
    long countCertificatesByGrade(
        @Param("courseId") Long courseId,
        @Param("grade") String grade
    );
    
    @Query("SELECT AVG(c.finalScore) FROM Certificate c WHERE c.course.id = :courseId")
    Double calculateAverageScoreByCourse(@Param("courseId") Long courseId);
    
    @Query("SELECT c FROM Certificate c WHERE c.status = 'ISSUED' " +
           "AND c.course.id = :courseId " +
           "ORDER BY c.finalScore DESC")
    List<Certificate> findTopPerformersByCourse(@Param("courseId") Long courseId);
    
    boolean existsByUserIdAndCourseId(Long userId, Long courseId);
    
    @Query("SELECT c FROM Certificate c WHERE c.user.id = :userId " +
           "AND c.status = 'ISSUED' AND " +
           "(c.expiresAt IS NULL OR c.expiresAt > CURRENT_TIMESTAMP)")
    List<Certificate> findValidCertificatesByUserId(@Param("userId") Long userId);
}
