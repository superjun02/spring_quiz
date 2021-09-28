package com.quiz.lesson06;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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

import com.quiz.lesson06.bo.ReserveBO;
import com.quiz.lesson06.model.Reserve;

@Controller
public class Lesson06Quiz03Controller {
	
	@Autowired
	private ReserveBO reserveBO;
	
	@RequestMapping("/lesson06/quiz03/main")
	public String main() {
		return "lesson06/main";
	}
	
	@RequestMapping("/lesson06/quiz03/reserveList")
	public String reserveList(Model model) {
		List<Reserve> reserveList = new ArrayList<>();
		// DB SELECT
		reserveList = reserveBO.getReserveList();
		
		model.addAttribute("reserveList", reserveList);
		
		return "lesson06/reserveList";
	}
	
	@ResponseBody
	@RequestMapping("/lesson06/quiz03/deleteReserve")
	public String deleteBookmark(
			@RequestParam("id") int id) {
		reserveBO.deleteBookmarkById(id);
		
		return "success";
	}
	
	@RequestMapping("/lesson06/quiz03/doReserve")
	public String doReserve() {
		return "lesson06/reserve";
	}
	
	@ResponseBody
	@PostMapping("/lesson06/quiz03/addReserve")
	public String addReserve(
			@RequestParam("name") String name, 
			@RequestParam("date") Date date,
			@RequestParam("day") int day,
			@RequestParam("person") int person,
			@RequestParam("phoneNumber") String phoneNumber,
			@RequestParam("status") String status) {
		
		Reserve reserve = new Reserve();
		
		reserve.setName(name);
		reserve.setDate(date);
		reserve.setDay(day);
		reserve.setPerson(person);
		reserve.setPhoneNumber(phoneNumber);
		reserve.setStatus(status);
		
		reserveBO.addReserve(reserve);
		
		return "success";
	}
	
	@ResponseBody
	@RequestMapping("/lesson06/quiz03/checkReserve")
	public Map<String, Object> checkReserve(
			@RequestParam("name") String name,
			@RequestParam("phoneNumber") String phoneNumber) {
		Map<String, Object> result = new HashMap<String, Object>();
		
		
		if (reserveBO.checkReserveByName(name, phoneNumber)) {
			Reserve reserve = new Reserve();
			
			reserve = reserveBO.getReserveByName(name, phoneNumber);
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
			String date = simpleDateFormat.format(reserve.getDate());
			
			result.put("result", "성공");
			result.put("name", reserve.getName());
			result.put("date", date);
			result.put("day", reserve.getDay());
			result.put("person", reserve.getPerson());
			result.put("status", reserve.getStatus());
							
			return result;
		} else {
			result.put("result", "실패");
					
			return result;
		}
	}
}
