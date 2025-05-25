package com.onlinelearning.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class EnrolledCourseResponse {
    private String courseId;
    private String courseName;
    private String courseImage;
    private String instructorName;
    private String status;
    private LocalDateTime enrollmentDate;
    private LocalDateTime lastAccessDate;
    private Double progress;
    private String grade;
    private LocalDateTime completionDate;
    private Boolean certificateIssued;
}
