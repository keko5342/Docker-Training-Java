package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

  @GetMapping("/")
  private String hello(){
    return "index";
  }

  @GetMapping("/hotReload")
  private String hotReload(){
    return "/";
  }
}