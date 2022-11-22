package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import sist.data.service.TrainerReservationService;

@Controller
public class TrainerReservationController {

	@Autowired
	TrainerReservationService service;
}
