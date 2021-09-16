package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.ReserveDAO;
import com.quiz.lesson06.model.Reserve;

@Service
public class ReserveBO {
	@Autowired
	private ReserveDAO reserveDAO;
	
	public List<Reserve> getReserveList() {
		return reserveDAO.selectReserveList();
	}
	
	public void deleteBookmarkById(int id) {
		reserveDAO.deleteBookmarkById(id);
	}
	
	public void addReserve(Reserve reserve) {
		reserveDAO.insertReserve(reserve);
	}
	
	public boolean checkReserveByName(String name, String phoneNumber) {
		return reserveDAO.checkReserveByName(name, phoneNumber);
	}
	
	public Reserve getReserveByName(String name, String phoneNumber) {
		return reserveDAO.selectReserveByName(name, phoneNumber);
	}
}
