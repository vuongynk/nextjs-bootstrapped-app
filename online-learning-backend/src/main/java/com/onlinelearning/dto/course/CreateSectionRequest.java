package com.onlinelearning.dto.course;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CreateSectionRequest {
    
    @NotBlank(message = "Section title is required")
    @Size(min = 3, max = 100, message = "Title must be between 3 and 100 characters")
    private String title;

    @Size(max = 500, message = "Description must not exceed 500 characters")
    private String description;

    private Integer orderIndex;

    @Valid
    private List<CreateLessonRequest> lessons;
}

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
class CreateLessonRequest {
    
    @NotBlank(message = "Lesson title is required")
    @Size(min = 3, max = 100, message = "Title must be between 3 and 100 characters")
    private String title;

    @Size(max = 500, message = "Description must not exceed 500 characters")
    private String description;

    @NotBlank(message = "Lesson type is required")
    private String type;

    @NotBlank(message = "Lesson content is required")
    private String content;

    private String duration;

    private Integer orderIndex;

    private Boolean isPreview;
}
