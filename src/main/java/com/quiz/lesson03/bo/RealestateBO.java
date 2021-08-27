package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.RealestateDAO;
import com.quiz.lesson03.model.Realestate;

@Service
public class RealestateBO {

	@Autowired
	private RealestateDAO realEstateDao;
	
	public Realestate getRealEstateById(int id) {
		Realestate realEstate = realEstateDao.selectRealEstateById(id);
				
		return realEstate;
	}
	
	public List<Realestate> getRealEstateListByRentPrice(Integer rentPrice) {
		List<Realestate> realEstateList = realEstateDao.selectRealEstateListByRentPrice(rentPrice);
				
		return realEstateList;
	}
	
	public List<Realestate> getRealEstateListByAreaPrice(int area, int price) {
		List<Realestate> realEstateList = realEstateDao.selectRealEstateListByAreaPrice(area, price);
				
		return realEstateList;
	}
}
