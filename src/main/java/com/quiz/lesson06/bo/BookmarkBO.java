package com.quiz.lesson06.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookmarkDAO;
import com.quiz.lesson06.model.Bookmark;

@Service
public class BookmarkBO {
	@Autowired
	BookmarkDAO bookmarkDAO;
	
	public void addBookmark(Bookmark bookmark) {
		bookmarkDAO.insertBookmark(bookmark);
	}
	
	public List<Bookmark> getBookmarkList() {
		List<Bookmark> bookmarkList = bookmarkDAO.selectBookmarkList();
		
		return bookmarkList;
	}
	
	public boolean existBookmarkByUrl(String url) {
		return bookmarkDAO.existBookmarkByUrl(url);
	}
	
	public void deleteBookmarkById(int id) {
		bookmarkDAO.deleteBookmarkById(id);
	}
}
