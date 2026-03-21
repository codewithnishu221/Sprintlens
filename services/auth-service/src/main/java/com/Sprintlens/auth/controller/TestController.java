package com.Sprintlens.auth.controller;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class TestController {

    @GetMapping("/ping")
    public String ping(){
        return "Auth service is running!";
    }

    @GetMapping("/api/auth/me")
     public ResponseEntity<Map<String, String>> me(){
        return ResponseEntity.ok(Map.of("message", "you have a valid token"));
     }


}
