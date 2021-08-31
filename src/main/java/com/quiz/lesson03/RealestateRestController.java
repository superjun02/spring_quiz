package com.quiz.lesson03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.quiz.lesson03.bo.RealestateBO;
import com.quiz.lesson03.model.Realestate;

@RequestMapping("lesson03")
@RestController
public class RealestateRestController {
	
	@Autowired
	private RealestateBO realEstateBO;
	
	@RequestMapping("/quiz01/1")
	public Realestate quiz01_1(@RequestParam(value = "id") int id) {
		Realestate realEstate = realEstateBO.getRealEstateById(id);
				
		return realEstate;
	}
	
	@RequestMapping("/quiz01/2")
	public List<Realestate> quiz01_2(@RequestParam(value = "rent_price") Integer rentPrice) {
		List<Realestate> realEstateList = realEstateBO.getRealEstateListByRentPrice(rentPrice);

		return realEstateList;
	}
	
	@RequestMapping("/quiz01/3")
	public List<Realestate> quiz01_3(int area, int price) {
		List<Realestate> realEstateList = realEstateBO.getRealEstateListByAreaPrice(area, price);

		return realEstateList;
	}
	
	@RequestMapping("quiz02/1")
	public String quiz02() {
		Realestate realEstate = new Realestate();
		realEstate.setRealtorId(3);
		realEstate.setAddress("푸르지옹 리버 303동 1104호");
		realEstate.setArea(89);
		realEstate.setType("매매");
		realEstate.setRentPrice(null);
		realEstate.setPrice(100000);
		
		int rowCount = realEstateBO.addRealEstate(realEstate);
		
		return "입력 성공 : " + rowCount;
	}
	
	@RequestMapping("quiz02/2")
	public String quiz02_2(@RequestParam(value = "realtor_id") int realtorId) {
		
		int rowCount = realEstateBO.addRealEstateAsField(
				realtorId, "썅떼빌리버 오피스텔 814호", 45, "월세", 100000, 120);
		
		return "입력 성공 : " + rowCount;
	}
	
	//http://localhost:8080/lesson03/quiz03?id=8&type=전세&price=70000
	@RequestMapping("quiz03")
	public String quiz03(
			@RequestParam(value="id") int id,
			@RequestParam(value="type") String type,
			@RequestParam(value="price") int price) {
		
		int rowCount = realEstateBO.updateRealEstate(id, type, price);
		return "변경 완료:" + rowCount;
	}
	
	//http://localhost:8080/lesson03/quiz04?id=21
	@RequestMapping("quiz04")
	public String quiz04(@RequestParam(value="id") int id) {
		
		int rowCount = realEstateBO.deleteRealEstateById(id);
		return "삭제 완료:" + rowCount;
	}
}
