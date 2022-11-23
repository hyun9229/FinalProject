package sist.data.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.ReservationDto;

@Mapper
public interface TrainerReservationMapperInter {

	public void insertReservation(ReservationDto dto);
	public ReservationDto getData(String res_num);
	public void deleteReservation(String res_num);
	public void updateReservation(ReservationDto dto);
}
