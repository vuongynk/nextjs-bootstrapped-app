package com.onlinelearning.repository;

import com.onlinelearning.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {
    
    Optional<User> findByEmail(String email);
    
    boolean existsByEmail(String email);
    
    @Query("SELECT u FROM User u WHERE u.role = 'INSTRUCTOR'")
    List<User> findAllInstructors();
    
    @Query("SELECT u FROM User u WHERE u.role = 'STUDENT'")
    List<User> findAllStudents();
    
    @Query("SELECT COUNT(u) FROM User u WHERE u.role = :role")
    long countByRole(@Param("role") User.Role role);
    
    @Query("SELECT u FROM User u WHERE u.name LIKE %:keyword% OR u.email LIKE %:keyword%")
    List<User> searchUsers(@Param("keyword") String keyword);
    
    @Query("SELECT u FROM User u JOIN u.enrolledCourses c WHERE c.id = :courseId")
    List<User> findStudentsByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT COUNT(u) FROM User u WHERE u.role = 'STUDENT' AND u.createdAt >= CURRENT_DATE - 30")
    long countNewStudentsLastMonth();
    
    @Query("SELECT u FROM User u WHERE u.role = 'INSTRUCTOR' AND " +
           "(u.name LIKE %:keyword% OR u.email LIKE %:keyword% OR " +
           "EXISTS (SELECT c FROM u.createdCourses c WHERE c.title LIKE %:keyword%))")
    List<User> searchInstructors(@Param("keyword") String keyword);
    
    @Query("SELECT u FROM User u WHERE u.status = 'ACTIVE' AND " +
           "EXISTS (SELECT c FROM u.enrolledCourses c WHERE c.id = :courseId)")
    List<User> findActiveStudentsByCourseId(@Param("courseId") Long courseId);
    
    @Query("SELECT u FROM User u WHERE u.lastLogin < CURRENT_DATE - 30")
    List<User> findInactiveUsers();
    
    @Query("SELECT u FROM User u JOIN u.enrolledCourses c " +
           "GROUP BY u HAVING COUNT(c) >= :minCourses")
    List<User> findStudentsWithMultipleCourses(@Param("minCourses") int minCourses);
    
    @Query("SELECT u FROM User u WHERE u.role = 'INSTRUCTOR' " +
           "AND (SELECT COUNT(c) FROM u.createdCourses c) >= :minCourses")
    List<User> findInstructorsWithMultipleCourses(@Param("minCourses") int minCourses);
    
    @Query("SELECT u FROM User u WHERE u.role = 'STUDENT' " +
           "AND NOT EXISTS (SELECT c FROM u.enrolledCourses c)")
    List<User> findStudentsWithNoCourses();
    
    @Query("SELECT u FROM User u WHERE u.role = 'INSTRUCTOR' " +
           "AND NOT EXISTS (SELECT c FROM u.createdCourses c)")
    List<User> findInstructorsWithNoCourses();
}
