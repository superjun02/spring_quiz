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
	
	public int insertRealEstate(Realestate realestate);
	
	public int insertRealEstateAsField(
			@Param("realtorId") int realtorId,
			@Param("address") String address,
			@Param("area") int area,
			@Param("type") String type,
			@Param("price") int price,
			@Param("rentPrice") int rentPrice);
	
	public int updateRealEstate(
			@Param("id") int id,
			@Param("type") String type,
			@Param("price") int price);
}
