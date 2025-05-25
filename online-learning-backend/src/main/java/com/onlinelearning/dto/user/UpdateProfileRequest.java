package com.onlinelearning.dto.user;

import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UpdateProfileRequest {
    @NotBlank
    private String firstName;
    @NotBlank
    private String lastName;
    private Integer age;
    private String gender;
    private String phone;
    private String address;
}
