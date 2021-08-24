package com.quiz.lesson01;

import java.util.Map;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/lesson01/quiz02")
@RestController
public class Lesson01Quiz02RestController {

	@RequestMapping("/1")
	public List<Map<String, Object>> printList() {
		List<Map<String, Object>> list = new ArrayList<>();

		Map<String, Object> map = new HashMap<String, Object>() {
			{
				put("rate", 15);
				put("director", "봉준호");
				put("time", 131);
				put("title", "기생충");
			}
		};
		
		list.add(map);
		
		map = new HashMap<String, Object>() {
			{
				put("rate", 0);
				put("director", "로베르트 베니니");
				put("time", 116);
				put("title", "인생은 아름다워");
			}
		};
		
		list.add(map);
		
		map = new HashMap<String, Object>() {
			{
				put("rate", 12);
				put("director", "크리스토퍼 놀란");
				put("time", 147);
				put("title", "인셉션");
			}
		};
		
		list.add(map);
		
		map = new HashMap<String, Object>() {
			{
				put("rate", 19);
				put("director", "윤종빈");
				put("time", 113);
				put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
			}
		};
		
		list.add(map);
		
		map = new HashMap<String, Object>() {
			{
				put("rate", 15);
				put("director", "프란시스 로맨스");
				put("time", 137);
				put("title", "헝거게임");
			}
		};
		
		list.add(map);
		
		return list;
	}
	
	@RequestMapping("/2")
	public List<Data> printQuiz02() {
		List<Data> dataList = new ArrayList<>();
		Data data = new Data();
		
		data.setTitle("안녕하세요 가입인사 드립니다.");
		data.setUser("hagulu");
		data.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		
		dataList.add(data);
		
		
		data = new Data();
		
		data.setTitle("헐 대박");
		data.setUser("bada");
		data.setContent("오늘 목요일이 있어.... 금요일인줄");
		
		dataList.add(data);
		
		
		data = new Data();
		
		data.setTitle("오늘 데이트 한 이야기 해드릴게요.");
		data.setUser("dulumary");
		data.setContent("....");
		
		dataList.add(data);
		
		return dataList;
	}
	
	
	@RequestMapping("/3")
	public ResponseEntity<Data> entity() {
		Data data = new Data();
		
		data.setTitle("안녕하세요 가입인사 드립니다.");
		data.setUser("hagulu");
		data.setContent("안녕하세요. 가입했어요. 앞으로 잘 부탁 드립니다. 활동 열심히 하겠습니다.");
		
		return new ResponseEntity<>(data, HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
