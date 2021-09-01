package com.quiz.lesson04.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson04.dao.SellerDAO;
import com.quiz.lesson04.model.Seller;

@Service
public class SellerBO {
	@Autowired
	SellerDAO sellerDAO;
	
	public void addSeller(Seller seller) {
		sellerDAO.insertSeller(seller);
	}
	
	public Seller getLastSeller() {
		return sellerDAO.selectLastSeller();
	}
	
	public Seller getSellerById(int id) {
		return sellerDAO.selectSellerById(id);
	}
}
