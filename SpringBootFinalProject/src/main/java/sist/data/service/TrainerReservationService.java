package sist.data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.mapper.TrainerReservationMapperInter;

@Service
public class TrainerReservationService implements TrainerReservationServiceInter {

	@Autowired
	TrainerReservationMapperInter mapperInter;
}
