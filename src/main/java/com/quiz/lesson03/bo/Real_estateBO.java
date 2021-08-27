package com.quiz.lesson03.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson03.dao.Real_estateDAO;
import com.quiz.lesson03.model.Real_estate;

@Service
public class Real_estateBO {

	@Autowired
	private Real_estateDAO real_estateDao;
	
	public Real_estate getReal_estateById(int id) {
		Real_estate real_estate = real_estateDao.selectReal_estateById(id);
				
		return real_estate;
	}
	
	public List<Real_estate> getReal_estateListByRentPrice(Integer rentPrice) {
		List<Real_estate> real_estateList = real_estateDao.selectReal_estateListByRentPrice(rentPrice);
				
		return real_estateList;
	}
	
	public List<Real_estate> getReal_estateListByAreaPrice(int area, int price) {
		List<Real_estate> real_estateList = real_estateDao.selectReal_estateListByAreaPrice(area, price);
				
		return real_estateList;
	}
}
