package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import sist.data.dto.MemberDto;
import sist.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@GetMapping("/member/form")
	public String form() {
		
		return "/member/memberform";
	}
	
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto) {
		
		service.insertMember(dto);
		return "/member/membersuccess";
	}
}
