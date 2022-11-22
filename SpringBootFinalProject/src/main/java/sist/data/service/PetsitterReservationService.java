package sist.data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.mapper.PetsitterReservationMapperInter;

@Service
public class PetsitterReservationService implements PetsitterReservationServiceInter {

	@Autowired
	PetsitterReservationMapperInter mapperInter;
}
