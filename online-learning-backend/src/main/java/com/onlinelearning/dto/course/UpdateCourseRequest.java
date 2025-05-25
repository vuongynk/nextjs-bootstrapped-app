package com.onlinelearning.dto.course;

import com.onlinelearning.model.Course;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
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
public class UpdateCourseRequest {
    
    @NotBlank(message = "Course title is required")
    @Size(min = 5, max = 100, message = "Title must be between 5 and 100 characters")
    private String title;

    @NotBlank(message = "Course description is required")
    @Size(min = 20, max = 2000, message = "Description must be between 20 and 2000 characters")
    private String description;

    @NotNull(message = "Course price is required")
    @DecimalMin(value = "0.0", message = "Price must be greater than or equal to 0")
    private BigDecimal price;

    @NotNull(message = "Course level is required")
    private Course.Level level;

    @NotBlank(message = "Course category is required")
    private String category;

    @NotNull(message = "Course duration is required")
    private Integer duration;

    private String thumbnail;

    @Size(max = 10, message = "Maximum 10 prerequisites allowed")
    private List<String> prerequisites;

    @Size(max = 10, message = "Maximum 10 learning objectives allowed")
    private List<String> learningObjectives;

    private Course.Status status;

    // Additional fields for updating course content
    private List<UpdateSectionRequest> sections;

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class UpdateSectionRequest {
        private Long id;
        private String title;
        private String description;
        private Integer orderIndex;
        private List<UpdateLessonRequest> lessons;
    }

    @Data
    @Builder
    @AllArgsConstructor
    @NoArgsConstructor
    public static class UpdateLessonRequest {
        private Long id;
        private String title;
        private String description;
        private String content;
        private Integer orderIndex;
        private Boolean isPreview;
    }
}
