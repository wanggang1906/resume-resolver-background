package com.emit.resume.domain;

import lombok.Data;

@Data
public class UserToken {
    private String token;
    private  String role_user;
    private  boolean authenticated;

    public UserToken(String token, String role_user) {
        this.token = token;
        this.role_user = role_user;
    }

}
