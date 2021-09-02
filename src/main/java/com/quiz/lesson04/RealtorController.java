package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson04.bo.RealtorBO;
import com.quiz.lesson04.model.Realtor;

@RequestMapping("/lesson04")
@Controller
public class RealtorController {
	@Autowired
	
	private RealtorBO realtorBO;
	
	// http://localhost:8080/lesson04/quiz02/1
	@GetMapping("/quiz02/1")
	public String addRealtorView() {
		return "lesson04/addRealtor";
	}
	
	@PostMapping("/quiz02/add_realtor")
	public String addRealtor(
			@ModelAttribute Realtor realtor,
			Model model) {
		realtorBO.addNewRealtor(realtor);
		
		Realtor myRealtor = realtorBO.getRealtorById(realtor.getId());
		
		model.addAttribute("realtor", myRealtor);
		
		return "lesson04/afterAddRealtor";
	}
}
