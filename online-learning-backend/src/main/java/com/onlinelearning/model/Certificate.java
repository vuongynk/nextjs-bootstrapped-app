package com.onlinelearning.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.UUID;

@Data
@NoArgsConstructor
@Entity
@Table(name = "certificates")
public class Certificate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String certificateNumber;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;

    private String grade;

    private Double finalScore;

    @Column(nullable = false)
    private String recipientName;

    private String courseDuration;

    private String courseCompletionDate;

    @Column(length = 1000)
    private String achievements;

    private String certificateUrl;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Status status = Status.ISSUED;

    @CreationTimestamp
    private LocalDateTime issuedAt;

    private LocalDateTime expiresAt;

    public enum Status {
        ISSUED,
        EXPIRED,
        REVOKED
    }

    // Constructor with required fields
    public Certificate(User user, Course course) {
        this.user = user;
        this.course = course;
        this.certificateNumber = generateCertificateNumber();
        this.recipientName = user.getName();
    }

    // Helper methods
    private String generateCertificateNumber() {
        // Generate a unique certificate number using UUID and timestamp
        return "CERT-" + UUID.randomUUID().toString().substring(0, 8).toUpperCase() + 
               "-" + System.currentTimeMillis();
    }

    public boolean isValid() {
        return status == Status.ISSUED && 
               (expiresAt == null || LocalDateTime.now().isBefore(expiresAt));
    }

    public void revoke() {
        this.status = Status.REVOKED;
    }

    public void setExpiry(LocalDateTime expiryDate) {
        this.expiresAt = expiryDate;
        if (expiryDate != null && LocalDateTime.now().isAfter(expiryDate)) {
            this.status = Status.EXPIRED;
        }
    }

    // Method to update certificate details
    public void updateDetails(String grade, Double finalScore, String achievements) {
        this.grade = grade;
        this.finalScore = finalScore;
        this.achievements = achievements;
        this.courseCompletionDate = LocalDateTime.now().toString();
    }

    // Method to set certificate URL after generation
    public void setCertificateFile(String url) {
        this.certificateUrl = url;
    }

    // Method to check if certificate has expired
    public boolean hasExpired() {
        if (expiresAt == null) {
            return false;
        }
        return LocalDateTime.now().isAfter(expiresAt);
    }

    // Method to automatically update status based on expiry
    @PreUpdate
    public void updateStatus() {
        if (status == Status.ISSUED && hasExpired()) {
            status = Status.EXPIRED;
        }
    }
}
