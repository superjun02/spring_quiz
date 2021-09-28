package com.quiz.extra;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExtraController {
	
	@RequestMapping("/extra/leestagram")
	public String main() {
		return "extra/login";
	}
	

	@RequestMapping("/extra/signUp")
	public String signUp() {
		return "extra/signup";
	}
}
