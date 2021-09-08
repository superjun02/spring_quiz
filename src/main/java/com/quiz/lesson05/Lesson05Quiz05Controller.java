package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson05.bo.WeatherhistoryBO;
import com.quiz.lesson05.model.Weatherhistory;

@Controller
public class Lesson05Quiz05Controller {
	@Autowired
	private WeatherhistoryBO weatherhistoryBO;
	
	@RequestMapping("/lesson05/quiz05")
	public String quiz05(Model model) {
		List<Weatherhistory> weatherhistorys = weatherhistoryBO.getWeatherhistory();

		model.addAttribute("weatherhistorys", weatherhistorys);
		return "lesson05/quiz05";
	}
	
	@RequestMapping("/lesson05/quiz05_1")
	public String quiz05_1() {
		return "lesson05/quiz05_1";
	}
}
