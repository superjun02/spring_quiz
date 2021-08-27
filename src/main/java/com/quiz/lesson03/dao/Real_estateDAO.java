package com.quiz.lesson03.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson03.model.Real_estate;

@Repository
public interface Real_estateDAO {
	public Real_estate selectReal_estateById(int id);
	
	public List<Real_estate> selectReal_estateListByRentPrice(Integer rentPrice);
	
	public List<Real_estate> selectReal_estateListByAreaPrice(@Param("area") int area, @Param("price") int price);
}
