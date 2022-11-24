package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import sist.data.service.ReservationService;

@Controller
public class TrainerReservationController {

	@Autowired
	ReservationService service;
}
