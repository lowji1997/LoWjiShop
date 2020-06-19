package com.lowji.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("thongke/")
public class AdminController {
@GetMapping
public String Default() {
	return "admin";
}
}
