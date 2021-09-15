package com.quiz.lesson06;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quiz.lesson06.bo.BookmarkBO;
import com.quiz.lesson06.model.Bookmark;

@RequestMapping("/lesson06/quiz01")
@Controller
public class Lesson06Quiz01Controller {
	@Autowired
	BookmarkBO bookmarkBO;
	
	
	@RequestMapping("/add_bookmark_view")
	public String add_bookmark_view() {
		return "lesson06/addBookmark";
	}
	
	@ResponseBody
	@PostMapping("/after_add_bookmark")
	public String after_add_bookmark(
			@RequestParam("name") String name,
			@RequestParam("url") String url) {
		// DB INSERT
		Bookmark bookmark = new Bookmark();
		
		bookmark.setName(name);
		bookmark.setUrl(url);	
		
		bookmarkBO.addBookmark(bookmark);
		
		return "success";
	}
	
	@RequestMapping("/bookmarkList")
	public String bookmarkList(Model model) {
		List<Bookmark> bookmarkList = bookmarkBO.getBookmarkList();

		model.addAttribute("bookmarkList", bookmarkList);
		return "lesson06/bookmarkList";
	}
	
	@ResponseBody
	@RequestMapping("/is_duplication")
	public Map<String, Boolean> isDuplication(
			@RequestParam("url") String url) {
		
		// SELECT DB - name
		
		Map<String, Boolean> result = new HashMap<>();
		result.put("is_duplication", bookmarkBO.existBookmarkByUrl(url));
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping("/deleteBookmark")
	public String deleteBookmark(
			@RequestParam("id") int id) {
		bookmarkBO.deleteBookmarkById(id);
		
		return "success";
	}
}
