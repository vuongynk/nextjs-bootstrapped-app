package com.onlinelearning.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
@NoArgsConstructor
@Entity
@Table(name = "courses")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String title;

    @Column(length = 2000)
    private String description;

    @Column(nullable = false)
    private BigDecimal price;

    private String thumbnail;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Level level;

    @Column(nullable = false)
    private String category;

    @Column(nullable = false)
    private Integer duration; // in weeks

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Status status = Status.DRAFT;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "instructor_id", nullable = false)
    private User instructor;

    @ManyToMany(mappedBy = "enrolledCourses")
    private Set<User> enrolledStudents = new HashSet<>();

    @OneToMany(mappedBy = "course", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("orderIndex")
    private List<Section> sections = new ArrayList<>();

    private Double rating;

    private Integer totalStudents = 0;

    private Integer totalLessons = 0;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    public enum Level {
        BEGINNER,
        INTERMEDIATE,
        ADVANCED,
        ALL_LEVELS
    }

    public enum Status {
        DRAFT,
        PUBLISHED,
        ARCHIVED
    }

    // Constructor with required fields
    public Course(String title, String description, BigDecimal price, Level level, 
                 String category, Integer duration, User instructor) {
        this.title = title;
        this.description = description;
        this.price = price;
        this.level = level;
        this.category = category;
        this.duration = duration;
        this.instructor = instructor;
    }

    // Helper methods
    public void addSection(Section section) {
        sections.add(section);
        section.setCourse(this);
        updateTotalLessons();
    }

    public void removeSection(Section section) {
        sections.remove(section);
        section.setCourse(null);
        updateTotalLessons();
    }

    public void updateTotalLessons() {
        this.totalLessons = sections.stream()
                .mapToInt(section -> section.getLessons().size())
                .sum();
    }

    public void updateRating(Double newRating) {
        if (this.rating == null) {
            this.rating = newRating;
        } else {
            // Calculate average rating
            this.rating = (this.rating + newRating) / 2;
        }
    }

    public void incrementTotalStudents() {
        this.totalStudents++;
    }

    public void decrementTotalStudents() {
        if (this.totalStudents > 0) {
            this.totalStudents--;
        }
    }

    public boolean isPublished() {
        return status == Status.PUBLISHED;
    }

    public boolean isDraft() {
        return status == Status.DRAFT;
    }

    public boolean isArchived() {
        return status == Status.ARCHIVED;
    }
}
