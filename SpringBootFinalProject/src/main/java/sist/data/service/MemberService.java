package sist.data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sist.data.dto.MemberDto;
import sist.data.mapper.MemberMapperInter;

@Service
public class MemberService implements MemberServiceInter {

	@Autowired
	MemberMapperInter mapperInter;
	
	@Override
	public void insertMember(MemberDto dto) {
		// TODO Auto-generated method stub
		mapperInter.insertMember(dto);
	}

}
