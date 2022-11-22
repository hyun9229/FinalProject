package sist.data.mapper;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.AnimalDto;
import sist.data.dto.MemberDto;

@Mapper
public interface AnimalMapperInter {

	public void insertAnimal(AnimalDto dto);
	//mem_num에 따른 getData
	public int getSearchByNum(String mem_num);
}
