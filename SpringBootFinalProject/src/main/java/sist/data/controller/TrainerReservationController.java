package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import sist.data.service.ReservationService;

@Controller
public class TrainerReservationController {

	@Autowired
	ReservationService service;
	
	@GetMapping("/trainer/resform")
	public String resform() {
		
		return "/reservation/treservationform";
	}
}
