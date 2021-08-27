package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealestateBO;
import com.quiz.lesson03.model.Realestate;

@RequestMapping("lesson03/quiz01")
@RestController
public class RealestateRestController {
	
	@Autowired
	private RealestateBO realEstateBO;
	
	@RequestMapping("/1")
	public Realestate quiz01_1(@RequestParam(value = "id") int id) {
		Realestate realEstate = realEstateBO.getRealEstateById(id);
				
		return realEstate;
	}
	
	@RequestMapping("/2")
	public List<Realestate> quiz01_2(@RequestParam(value = "rent_price") Integer rentPrice) {
		List<Realestate> realEstateList = realEstateBO.getRealEstateListByRentPrice(rentPrice);

		return realEstateList;
	}
	
	@RequestMapping("/3")
	public List<Realestate> quiz01_3(int area, int price) {
		List<Realestate> realEstateList = realEstateBO.getRealEstateListByAreaPrice(area, price);

		return realEstateList;
	}
}
