package com.philaporter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.logging.Logger;

@SpringBootApplication
@RestController
public class Application {

  Logger logger = Logger.getLogger("com.philaporter.Application");

  @RequestMapping("/health/ready")
  public void ready() {
    logger.info("/health/ready was successful");
  }

  @RequestMapping("/health")
  public void health() {
    logger.info("/health check was successful");
  }

  public static void main(String[] args) {
    SpringApplication.run(Application.class, args);
  }
}
