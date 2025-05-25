package com.onlinelearning.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(length = 1000)
    private String bio;

    private String avatar;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Role role;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Status status = Status.ACTIVE;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "user_courses",
        joinColumns = @JoinColumn(name = "user_id"),
        inverseJoinColumns = @JoinColumn(name = "course_id")
    )
    private Set<Course> enrolledCourses = new HashSet<>();

    @OneToMany(mappedBy = "instructor", cascade = CascadeType.ALL)
    private Set<Course> createdCourses = new HashSet<>();

    @CreationTimestamp
    private LocalDateTime createdAt;

    @UpdateTimestamp
    private LocalDateTime updatedAt;

    private LocalDateTime lastLogin;

    public enum Role {
        STUDENT,
        INSTRUCTOR,
        ADMIN
    }

    public enum Status {
        ACTIVE,
        INACTIVE,
        SUSPENDED
    }

    // Constructor with required fields
    public User(String name, String email, String password, Role role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    // Helper methods
    public void enrollInCourse(Course course) {
        enrolledCourses.add(course);
        course.getEnrolledStudents().add(this);
    }

    public void unenrollFromCourse(Course course) {
        enrolledCourses.remove(course);
        course.getEnrolledStudents().remove(this);
    }

    public boolean isInstructor() {
        return role == Role.INSTRUCTOR;
    }

    public boolean isAdmin() {
        return role == Role.ADMIN;
    }

    public boolean isActive() {
        return status == Status.ACTIVE;
    }
}
