package com.onlinelearning.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class InstructorResponse {
    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private String specialization;
    private String qualification;
    private String bio;
    private String profileImage;
    private Integer totalCourses;
    private Double averageRating;
}
