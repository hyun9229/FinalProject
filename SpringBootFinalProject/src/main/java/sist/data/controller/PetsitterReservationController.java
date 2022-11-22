package sist.data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import sist.data.service.PetsitterReservationService;

@Controller
public class PetsitterReservationController {

	@Autowired
	PetsitterReservationService service;
}
