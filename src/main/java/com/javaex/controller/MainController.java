package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	//메인화면
	@RequestMapping(value="/main")
	public String main() {
	return "main/main";	
	}
	
}
