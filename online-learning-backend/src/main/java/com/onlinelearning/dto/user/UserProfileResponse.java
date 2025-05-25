package com.onlinelearning.dto.user;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserProfileResponse {
    private String id;
    private String firstName;
    private String lastName;
    private Integer age;
    private String gender;
    private String phone;
    private String address;
}
