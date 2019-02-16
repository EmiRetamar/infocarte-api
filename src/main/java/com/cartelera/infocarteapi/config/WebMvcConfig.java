package com.cartelera.infocarteapi.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

  private final long MAX_AGE_SECS = 3600;

  @Override
  public void addCorsMappings(CorsRegistry registry) {
    registry.addMapping("/**")
      .allowedOrigins("*")
      .allowedOrigins("https://infocarte.herokuapp.com")
      .allowedMethods("HEAD", "OPTIONS", "GET", "POST", "PATCH", "DELETE")
      .allowedHeaders("Access-Control-Allow-Origin")
      .maxAge(MAX_AGE_SECS);
  }
}
