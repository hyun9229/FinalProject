package sist.data.service;

import sist.data.dto.ReservationDto;

public interface TrainerReservationServiceInter {

	public void insertReservation(ReservationDto dto);
	public ReservationDto getData(String res_num);
	public void deleteReservation(String res_num);
	public void updateReservation(ReservationDto dto);
}
