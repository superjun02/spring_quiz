package com.quiz.lesson05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson02.bo.StoreBO;
import com.quiz.lesson02.model.Store;
import com.quiz.lesson05.bo.NewReviewBO;
import com.quiz.lesson05.model.NewReview;

@Controller
public class Lesson05Quiz06Controller {
	@Autowired StoreBO storeBO;
	
	@RequestMapping("/lesson05/quiz06")
	public String quiz06(Model model) {
		List<Store> stores = storeBO.getStoreList();
		
		model.addAttribute("stores", stores);
		
		return "lesson05/quiz06";
	}
	
	@Autowired NewReviewBO newReviewBO;
	
	@GetMapping("/lesson05/quiz06_1")
	public String quiz06_1(Model model,
			@RequestParam("storeId") int storeId,
			@RequestParam("storeName") String storeName) {
		
		List<NewReview> reviews = newReviewBO.getNewReviewByStoreId(storeId);
		
		model.addAttribute("storeName", storeName);
		model.addAttribute("reviews", reviews);
		
		
		return "lesson05/quiz06_1";
	}
}
