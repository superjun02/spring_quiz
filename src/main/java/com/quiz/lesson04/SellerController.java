package com.quiz.lesson04;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.quiz.lesson04.bo.SellerBO;
import com.quiz.lesson04.model.Seller;

@RequestMapping("/lesson04")
@Controller
public class SellerController {
	@Autowired
	SellerBO sellerBO;
	
	// http://localhost:8080/lesson04/quiz01/1
	@RequestMapping(method = RequestMethod.GET, path = "/quiz01/1")
	public String quiz01_1() {
		return "lesson04/addSeller";
	}
	
	@PostMapping("/quiz01/add_seller")
	public String addSeller(
			@RequestParam("nickname") String nickname,
			@RequestParam(value = "profileImage", required = false) String profileImage,
			@RequestParam("temperature") double temperature) {
		Seller seller = new Seller();
		
		seller.setNickname(nickname);
		seller.setProfileImage(profileImage);
		seller.setTemperature(temperature);
		
		sellerBO.addSeller(seller);
		
		return "lesson04/afterAddSeller";
	}
	// http://localhost:8080/lesson04/quiz01/seller_info?id=1
	// http://localhost:8080/lesson04/quiz01/seller_info
	@GetMapping("/quiz01/seller_info")
	public String getLastUser(Model model,
			@RequestParam(value = "id", required = false) Integer id) {
		Seller seller = new Seller();
		if (id == null) {
			seller = sellerBO.getLastSeller();
		} else {
			seller = sellerBO.getSellerById(id);
		}
		
		
		model.addAttribute("seller", seller);
		model.addAttribute("title", "판매자 정보");
		
		return "lesson04/lastSeller"; // 결과 jsp
	}
	
}
