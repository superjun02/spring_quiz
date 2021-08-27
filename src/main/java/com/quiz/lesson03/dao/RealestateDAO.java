package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Realestate;

@Repository
public interface RealestateDAO {
	public Realestate selectRealEstateById(int id);
	
	public List<Realestate> selectRealEstateListByRentPrice(Integer rentPrice);
	
	public List<Realestate> selectRealEstateListByAreaPrice(@Param("area") int area, @Param("price") int price);
}
