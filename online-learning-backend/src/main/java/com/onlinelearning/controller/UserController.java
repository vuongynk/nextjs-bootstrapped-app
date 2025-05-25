package com.onlinelearning.controller;

import com.onlinelearning.dto.user.*;
import com.onlinelearning.service.UserService;
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
@RequestMapping("/api/users")
@RequiredArgsConstructor
@CrossOrigin(origins = "http://localhost:3000")
public class UserController {

    private final UserService userService;

    @GetMapping("/profile")
    public ResponseEntity<UserProfileResponse> getUserProfile(Authentication authentication) {
        return ResponseEntity.ok(userService.getUserProfile(authentication.getName()));
    }

    @PutMapping("/profile")
    public ResponseEntity<UserProfileResponse> updateUserProfile(
            @Valid @RequestBody UpdateProfileRequest request,
            Authentication authentication
    ) {
        return ResponseEntity.ok(userService.updateUserProfile(request, authentication.getName()));
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin/all")
    public ResponseEntity<Page<UserResponse>> getAllUsers(
            @RequestParam(required = false) String search,
            @RequestParam(required = false) String role,
            Pageable pageable
    ) {
        return ResponseEntity.ok(userService.getAllUsers(search, role, pageable));
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin/instructors")
    public ResponseEntity<List<InstructorResponse>> getAllInstructors() {
        return ResponseEntity.ok(userService.getAllInstructors());
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PostMapping("/admin/instructors")
    public ResponseEntity<UserResponse> createInstructor(
            @Valid @RequestBody CreateInstructorRequest request
    ) {
        return ResponseEntity.ok(userService.createInstructor(request));
    }

    @PreAuthorize("hasRole('ADMIN')")
    @PutMapping("/admin/{id}/status")
    public ResponseEntity<UserResponse> updateUserStatus(
            @PathVariable Long id,
            @Valid @RequestBody UpdateUserStatusRequest request
    ) {
        return ResponseEntity.ok(userService.updateUserStatus(id, request));
    }

    @GetMapping("/dashboard")
    public ResponseEntity<DashboardResponse> getUserDashboard(Authentication authentication) {
        return ResponseEntity.ok(userService.getUserDashboard(authentication.getName()));
    }

    @GetMapping("/enrolled-courses")
    public ResponseEntity<List<EnrolledCourseResponse>> getEnrolledCourses(Authentication authentication) {
        return ResponseEntity.ok(userService.getEnrolledCourses(authentication.getName()));
    }

    @GetMapping("/certificates")
    public ResponseEntity<List<CertificateResponse>> getUserCertificates(Authentication authentication) {
        return ResponseEntity.ok(userService.getUserCertificates(authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @GetMapping("/instructor/dashboard")
    public ResponseEntity<InstructorDashboardResponse> getInstructorDashboard(Authentication authentication) {
        return ResponseEntity.ok(userService.getInstructorDashboard(authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @GetMapping("/instructor/courses")
    public ResponseEntity<List<InstructorCourseResponse>> getInstructorCourses(Authentication authentication) {
        return ResponseEntity.ok(userService.getInstructorCourses(authentication.getName()));
    }

    @PreAuthorize("hasRole('INSTRUCTOR')")
    @GetMapping("/instructor/students")
    public ResponseEntity<List<StudentResponse>> getInstructorStudents(Authentication authentication) {
        return ResponseEntity.ok(userService.getInstructorStudents(authentication.getName()));
    }

    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/admin/stats")
    public ResponseEntity<AdminStatsResponse> getAdminStats() {
        return ResponseEntity.ok(userService.getAdminStats());
    }
}
