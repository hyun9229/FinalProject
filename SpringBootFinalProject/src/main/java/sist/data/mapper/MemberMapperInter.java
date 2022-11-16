package sist.data.mapper;

import org.apache.ibatis.annotations.Mapper;

import sist.data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public void insertMember(MemberDto dto);
}
