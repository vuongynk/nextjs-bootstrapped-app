package com.onlinelearning.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class DashboardResponse {
    private UserProfileResponse userProfile;
    private int totalEnrolledCourses;
    private int completedCourses;
    private int inProgressCourses;
    private double overallProgress;
    private List<EnrolledCourseResponse> recentCourses;
    private List<CertificateResponse> recentCertificates;
    private List<CourseProgressResponse> courseProgress;
}
