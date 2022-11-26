package sist.data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;


import sist.data.dto.PartnerDto;
import sist.data.dto.PartnerprofileDto;



@Mapper
public interface PartnerprofileMapperInter {
	
	//insert
	//public void insertPartnerPro(PartnerprofileDto dto);
	
    
	public List<PartnerprofileDto> partnerProList(String partnerprof_num);
	public void getProNum(String partner_num);

    //디테일 클릭전 num	
   public PartnerprofileDto getData(String partnerprof_num);
   public int getMaxNum();
    
 //파트너 num 반환
 public String getNum(String partner_num);

 //파트너 인서트
 public void insertPartnerProf(PartnerprofileDto dto);	
 
 //파트넘값 전체출력
 List<PartnerprofileDto> getAllList();

 
   
}