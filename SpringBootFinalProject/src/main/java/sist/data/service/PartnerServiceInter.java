package sist.data.service;

import java.util.List;

import sist.data.dto.PartnerDto;

public interface PartnerServiceInter {

	//insert
	public void insertPartner(PartnerDto dto);
		
	//list
	public List<PartnerDto> PartnerList();
	
public List<PartnerDto> PartnerMuList();
public List<PartnerDto> PartneruuList(String partner_num);
	
	public PartnerDto getData(String partner_num); 
	
	   
	//파트너 num 반환
			public String getNum(String partner_name);
		
			//디테일 클릭전 num	
			
			   public int getMaxNum();
			   
				 //파트너 memnum 반환
				 public String getMNum(String mem_num);
				 public String getName(String mem_num);
				 public String getGender(String mem_num);
				 public String getDate(String mem_num);
				 public String getTime(String mem_num);   
			     public String getExp(String mem_num);
			     
			   //getDataByMem_num
			     public PartnerDto getDataByMNum(String mem_num);
}
