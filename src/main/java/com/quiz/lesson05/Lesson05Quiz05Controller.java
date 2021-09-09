package com.quiz.lesson05;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@PostMapping("/lesson05/quiz05_2")
	public String quiz05_2(
			@RequestParam("date") Date date,
			@RequestParam("weather") String weather,
			@RequestParam("temperatures") double temperatures,
			@RequestParam("precipitation") double precipitation,
			@RequestParam("microDust") String microDust,
			@RequestParam("windSpeed") double windSpeed,
			Model model
			) {
		Weatherhistory weatherhistory = new Weatherhistory();
		
		weatherhistory.setDate(date);
		weatherhistory.setWeather(weather);
		weatherhistory.setTemperatures(temperatures);
		weatherhistory.setPrecipitation(precipitation);
		weatherhistory.setMicroDust(microDust);
		weatherhistory.setWindSpeed(windSpeed);
		
		weatherhistoryBO.addWeatherhistory(weatherhistory);
		
		List<Weatherhistory> weatherhistorys = weatherhistoryBO.getWeatherhistory();

		model.addAttribute("weatherhistorys", weatherhistorys);
		return "lesson05/quiz05";
	}
}
