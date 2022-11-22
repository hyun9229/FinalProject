package sist.data.service;

import org.springframework.beans.factory.annotation.Autowired;

import sist.data.dto.AnimalDto;
import sist.data.mapper.AnimalMapperInter;

public class AnimalService implements AnimalServiceInter {

	@Autowired
	AnimalMapperInter mapperInter;
	
	@Override
	public void insertAnimal(AnimalDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertAnimal(dto);
	}

	@Override
	public int getSearchByNum(String mem_num) {
		// TODO Auto-generated method stub
		return mapperInter.getSearchByNum(mem_num);
	}

}
