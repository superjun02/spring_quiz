package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.Store;

@Controller
public class Lesson05Quiz06Controller {
	@Autowired StoreBO storeBO;
	
	@RequestMapping("/lesson05/quiz06")
	public String quiz06(Model model) {
		List<Store> stores = storeBO.getStoreList();
		
		model.addAttribute("stores", stores);
		
		return "lesson05/quiz06";
	}
}
