package com.onlinelearning.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
@Entity
@Table(name = "lessons")
public class Lesson {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(length = 2000)
    private String description;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Type type;

    @Column(nullable = false)
    private String content; // URL for video/file or actual content for text

    private Duration duration; // Duration of video or estimated completion time

    @Column(nullable = false)
    private Integer orderIndex;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;

    @OneToMany(mappedBy = "lesson", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<Progress> studentProgress = new HashSet<>();

    private Boolean isPreview = false;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    public enum Type {
        VIDEO,
        TEXT,
        QUIZ,
        ASSIGNMENT,
        RESOURCE
    }

    // Constructor with required fields
    public Lesson(String title, Type type, String content, Integer orderIndex, Section section) {
        this.title = title;
        this.type = type;
        this.content = content;
        this.orderIndex = orderIndex;
        this.section = section;
    }

    // Helper methods
    public boolean isCompleted(User student) {
        return studentProgress.stream()
                .anyMatch(progress -> 
                    progress.getStudent().equals(student) && 
                    progress.getStatus() == Progress.Status.COMPLETED
                );
    }

    public Progress getProgressForStudent(User student) {
        return studentProgress.stream()
                .filter(progress -> progress.getStudent().equals(student))
                .findFirst()
                .orElse(null);
    }

    public void markAsCompleted(User student) {
        Progress progress = getProgressForStudent(student);
        if (progress == null) {
            progress = new Progress(student, this);
            studentProgress.add(progress);
        }
        progress.setStatus(Progress.Status.COMPLETED);
        progress.setCompletedAt(LocalDateTime.now());
    }

    public boolean isVideo() {
        return type == Type.VIDEO;
    }

    public boolean isQuiz() {
        return type == Type.QUIZ;
    }

    public boolean isAssignment() {
        return type == Type.ASSIGNMENT;
    }

    // Inner Progress class to track student progress
    @Entity
    @Table(name = "lesson_progress")
    @Data
    @NoArgsConstructor
    public static class Progress {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "student_id", nullable = false)
        private User student;

        @ManyToOne(fetch = FetchType.LAZY)
        @JoinColumn(name = "lesson_id", nullable = false)
        private Lesson lesson;

        @Enumerated(EnumType.STRING)
        @Column(nullable = false)
        private Status status = Status.NOT_STARTED;

        private LocalDateTime startedAt;
        private LocalDateTime completedAt;
        private Integer score; // For quizzes and assignments

        public enum Status {
            NOT_STARTED,
            IN_PROGRESS,
            COMPLETED
        }

        // Constructor
        public Progress(User student, Lesson lesson) {
            this.student = student;
            this.lesson = lesson;
            this.startedAt = LocalDateTime.now();
        }
    }
}
