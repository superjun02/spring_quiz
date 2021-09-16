package com.quiz.lesson06.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Reserve;

@Repository
public interface ReserveDAO {
	public List<Reserve> selectReserveList();
	
	public void deleteBookmarkById(int id);
	
	public void insertReserve(Reserve reserve);
	
	public boolean checkReserveByName(@Param("name") String name, @Param("phoneNumber") String phoneNumber);
	
	public Reserve selectReserveByName(@Param("name") String name, @Param("phoneNumber") String phoneNumber);
}
