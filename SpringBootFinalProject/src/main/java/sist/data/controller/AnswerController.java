package sist.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AnswerController {
	
	//답변 폼 포워드 
		@GetMapping("/trainer/qna/answer")
		public String answerform()
		{
		return "/answer/answerform";
		}

}
