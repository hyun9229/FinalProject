package sist.data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import sist.data.service.MemberService;
import sist.data.service.ReservationService;

@Controller
public class TrainerReservationController {

	@Autowired
	ReservationService service;
	
	@Autowired
	MemberService mservice;
	
	@GetMapping("/trainer/resform")
	public String resform(Model model,HttpSession session) {
		
		String myid=(String)session.getAttribute("myid");
		
		model.addAttribute("mem_addr", mservice.getDataById(myid).getMem_addr());
		
		return "/reservation/treservationform";
	}
}
