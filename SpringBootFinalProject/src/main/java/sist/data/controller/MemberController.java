package sist.data.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import sist.data.dto.AnimalDto;
import sist.data.dto.MemberDto;
import sist.data.service.AnimalService;
import sist.data.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@Autowired
	AnimalService aservice;
	
	//Id체크
	@GetMapping("/member/idcheck")
	@ResponseBody
	public Map<String, Integer> idCheckProcess(String mem_id) {
			
	Map<String, Integer> map=new HashMap<>();
			
	int n=service.getSearchId(mem_id);
	map.put("count", n);
			
	return map;
	}
	
	@PostMapping("/member/insert")
	public String insert(@ModelAttribute MemberDto dto,Model model) {
		
		service.insertMember(dto);
		
		//member의 mem_num max값 넘기기
		int mem_num=service.getMaxNum();
		model.addAttribute("mem_num", mem_num);
		
		return "/member/membersuccess";
	}
	
	@GetMapping("/member/animalRegister")
	public String animalRegister(@RequestParam int mem_num,Model model) {
		
		model.addAttribute("mem_num", mem_num);
		return "/member/animalform";
	}
	
	@PostMapping("/member/animalinsert")
	public String insert(@ModelAttribute AnimalDto dto,
			@RequestParam MultipartFile upload,
			HttpSession session) {
		
		String path=session.getServletContext().getRealPath("/photo");
		
		if(upload.getOriginalFilename().equals(""))
			dto.setAni_photo(null);
		else {
			
			SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
			String photoname="f_"+sdf.format(new Date())+upload.getOriginalFilename();
			
			dto.setAni_photo(photoname);
			
			//실제 업로드
			try {
				upload.transferTo(new File(path+"//"+photoname));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		aservice.insertAnimal(dto);
		
		return "/member/animalsuccess";
	}
	

}
