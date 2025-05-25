package com.onlinelearning.dto.user;

import java.time.LocalDateTime;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CourseProgressResponse {
    private String courseId;
    private String courseName;
    private Double overallProgress;
    private Integer completedLessons;
    private Integer totalLessons;
    private List<SectionProgressResponse> sectionProgress;

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class SectionProgressResponse {
        private String sectionId;
        private String sectionName;
        private Double progress;
        private Integer completedLessons;
        private Integer totalLessons;
        private List<LessonProgressResponse> lessonProgress;
    }

    @Data
    @Builder
    @NoArgsConstructor
    @AllArgsConstructor
    public static class LessonProgressResponse {
        private String lessonId;
        private String lessonName;
        private String status;
        private Double timeSpent;
        private LocalDateTime completionDate;
    }
}
