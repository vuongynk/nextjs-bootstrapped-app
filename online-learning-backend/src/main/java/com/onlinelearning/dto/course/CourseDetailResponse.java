package com.onlinelearning.dto.course;

import com.onlinelearning.model.Course;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CourseDetailResponse {
    private Long id;
    private String title;
    private String description;
    private String instructor;
    private String instructorBio;
    private String category;
    private Course.Level level;
    private BigDecimal price;
    private Double rating;
    private Integer totalStudents;
    private Integer totalLessons;
    private Integer duration;
    private Course.Status status;
    private String thumbnail;
    private List<String> prerequisites;
    private List<String> learningObjectives;
    private List<SectionResponse> sections;
    private String createdAt;
    private String updatedAt;
    private Boolean isEnrolled;
    private Double progress;
    private List<ReviewResponse> reviews;
}
