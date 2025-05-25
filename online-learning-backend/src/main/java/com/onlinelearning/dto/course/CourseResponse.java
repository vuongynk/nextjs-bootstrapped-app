package com.onlinelearning.dto.course;

import com.onlinelearning.model.Course;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CourseResponse {
    private Long id;
    private String title;
    private String description;
    private String instructor;
    private String category;
    private Course.Level level;
    private BigDecimal price;
    private Double rating;
    private Integer totalStudents;
    private Course.Status status;
    private String thumbnail;
    private Integer duration;
    private Integer totalLessons;
    private String createdAt;
    private String updatedAt;
}
