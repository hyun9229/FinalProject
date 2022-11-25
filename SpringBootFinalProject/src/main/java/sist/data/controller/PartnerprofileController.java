package sist.data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.util.PerformanceSensitive;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



import sist.data.dto.PartnerDto;
import sist.data.dto.PartnerprofileDto;
import sist.data.service.MemberService;
import sist.data.service.PartnerService;
import sist.data.service.PartnerprofileService;

@Controller
public class PartnerprofileController {
	
	
	
	@Autowired
	PartnerprofileService service;
	
	@Autowired
	PartnerService pservice;
	
	@Autowired
	MemberService mservice;


	//리스트
	@GetMapping("/partnerprofile/partnerlist")
	public ModelAndView list(@RequestParam(defaultValue = "20") String partnerprof_num,String partner_num
			 )
	{
		ModelAndView model=new ModelAndView();
	 	
		
		PartnerDto dto=pservice.getData(partner_num);
		model.addObject("dto", dto);
		
		List<PartnerDto> list=pservice.PartnerMuList();
		model.addObject("list", list);
		
		PartnerprofileDto adto=service.getData(partnerprof_num);
		model.addObject("adto", adto);
		
		List<PartnerprofileDto> alist=service.partnerProList(partnerprof_num);
		model.addObject("alist", alist);
	
		
		model.setViewName("/partnerprofile/partnerlist");
		
		return model;
	}
	
	//인서트
	@GetMapping("/partnerprofile/partnerform")
	public String proform()
	{
		return "/partnerprofile/partnerform";
	}

	@PostMapping("/partnerprofile/insert")
	public String proinsert(@ModelAttribute PartnerprofileDto adto,
			HttpSession session)
	
	{
		
	 
	  
	  String myid=(String)session.getAttribute("myid");
	  String mem_num=mservice.getNum(myid);
	  
	  PartnerDto dto=new PartnerDto();	
	  
	  dto.setPartner_num(pservice.getMNum(mem_num));
	  dto.setPartner_name(pservice.getName(mem_num));
	  dto.setPartner_gender(pservice.getGender(mem_num));
	  dto.setPartner_date(pservice.getDate(mem_num));
	  dto.setPartner_time(pservice.getTime(mem_num));
	  dto.setPartner_exp(pservice.getExp(mem_num));	  
	  
	
      service.insertPartnerProf(adto);
	  
	
		
		
		//return "redirect:partnerdetail?partnerprof_num="+pservice.getData(partnerprof_num);
		return "redirect:partnerlist";
		
		
		
	}
	
	//클릭시 펫시터 소개
	@GetMapping("/partnerprofile/partnerdetail")
	public ModelAndView detailform(@RequestParam(defaultValue = "20") String partnerprof_num, String partner_num)
	{
		ModelAndView model=new ModelAndView();
		
		
		
		//num에 해당하는 dto
      
       
    	
		PartnerDto dto=pservice.getData(partner_num);
		model.addObject("dto", dto);
		
		List<PartnerDto> list=pservice.PartneruuList(partner_num);
		model.addObject("list", list);
		
		PartnerprofileDto adto=service.getData(partnerprof_num);
		model.addObject("adto", adto);
		
		List<PartnerprofileDto> alist=service.partnerProList(partnerprof_num);
		model.addObject("alist", alist);
		
		
		model.setViewName("/partnerprofile/partnerdetail");
		
		return model;
	}
}