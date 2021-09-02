package com.quiz.lesson04.dao;

import org.springframework.stereotype.Repository;

import com.quiz.lesson04.model.Realtor;

@Repository
public interface RealtorDAO {
	public void insertNewRealtor(Realtor realtor);
	
	public Realtor selectRealtorById(int id);
}
