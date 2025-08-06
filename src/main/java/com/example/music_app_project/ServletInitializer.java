package com.example.music_app_project;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInitializer extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        // Thay thế YourProjectApplication.class bằng tên class main của bạn
        return application.sources(MusicAppProjectApplication.class); 
    }
}