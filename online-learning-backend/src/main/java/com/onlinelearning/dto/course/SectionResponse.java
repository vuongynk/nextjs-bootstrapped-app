package com.onlinelearning.dto.course;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SectionResponse {
    private Long id;
    private String title;
    private String description;
    private Integer orderIndex;
    private List<LessonResponse> lessons;
    private Integer totalLessons;
    private Integer completedLessons;
    private Double progress;
    private String createdAt;
    private String updatedAt;
}

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
class LessonResponse {
    private Long id;
    private String title;
    private String description;
    private String type;
    private String content;
    private String duration;
    private Integer orderIndex;
    private Boolean isPreview;
    private Boolean isCompleted;
    private String completedAt;
    private Double progress;
    private String createdAt;
    private String updatedAt;
}
