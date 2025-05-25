package com.onlinelearning.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CertificateResponse {
    private String id;
    private String courseId;
    private String courseName;
    private String certificateNumber;
    private String recipientName;
    private LocalDateTime issueDate;
    private LocalDateTime expiryDate;
    private String status;
    private String certificateUrl;
    private String verificationUrl;
    private Boolean isVerified;
}
