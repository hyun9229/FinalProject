package sist.data.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import sist.data.dto.PartnerprofileDto;
import sist.data.mapper.PartnerprofileMapperInter;

@Service
public class PartnerprofileService implements PartnerprofileServiceInter {

	@Autowired
	PartnerprofileMapperInter mapperInter;




	@Override
	public List<PartnerprofileDto> partnerProList(String partnerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.partnerProList(partnerprof_num);
	}




	@Override
	public void getProNum(String partner_num) {
		// TODO Auto-generated method stub
		mapperInter.getProNum(partner_num);
	}




	@Override
	public PartnerprofileDto getData(String partnerprof_num) {
		// TODO Auto-generated method stub
		return mapperInter.getData(partnerprof_num);
	}




	@Override
	public int getMaxNum() {
		// TODO Auto-generated method stub
		return mapperInter.getMaxNum();
	}




	@Override
	public String getNum(String partner_num) {
		// TODO Auto-generated method stub
		return mapperInter.getNum(partner_num);
	}




	@Override
	public void insertPartnerProf(PartnerprofileDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertPartnerProf(dto);
	}




	@Override
	public List<PartnerprofileDto> getAllList() {
		// TODO Auto-generated method stub
		return mapperInter.getAllList();
	}


}