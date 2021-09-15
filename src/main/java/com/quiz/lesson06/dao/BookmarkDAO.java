package com.quiz.lesson06.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.quiz.lesson06.model.Bookmark;

@Repository
public interface BookmarkDAO {
	public void insertBookmark(Bookmark bookmark);
	
	public List<Bookmark> selectBookmarkList();
	
	public boolean existBookmarkByUrl(String name);
	
	public void deleteBookmarkById(int id);
}
