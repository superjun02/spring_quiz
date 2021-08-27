package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.Real_estateBO;
import com.quiz.lesson03.model.Real_estate;

@RequestMapping("lesson03/quiz01")
@RestController
public class Real_estateRestController {
	
	@Autowired
	private Real_estateBO real_estateBO;
	
	@RequestMapping("/1")
	public Real_estate quiz01_1(@RequestParam(value = "id") int id) {
		Real_estate real_estate = real_estateBO.getReal_estateById(id);
				
		return real_estate;
	}
	
	@RequestMapping("/2")
	public List<Real_estate> quiz01_2(@RequestParam(value = "rent_price") Integer rentPrice) {
		List<Real_estate> real_estateList = real_estateBO.getReal_estateListByRentPrice(rentPrice);

		return real_estateList;
	}
	
	@RequestMapping("/3")
	public List<Real_estate> quiz01_3(int area, int price) {
		List<Real_estate> real_estateList = real_estateBO.getReal_estateListByAreaPrice(area, price);

		return real_estateList;
	}
}
