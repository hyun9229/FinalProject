package sist.data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("reservation")
public class ReservationDto {

	public String res_num;
	public String mem_num;
	public String mem_name;
	public String mem_addr;
	public String trainerprof_num;
	public String partnerprof_num;
	public String res_visit;
	public String res_animal;
	public String ani_num;
	public String ani_photo;
	public String ani_name;
	public String ani_gender;
	public String ani_type;
	public String res_match;
	public String res_norm_time;
	public String res_norm_date;
	public String res_rout_date;
	public String res_rout_start;
	public String res_pub_pass;
	public String res_priv_pass;
	public String res_key_loc;
	public String res_contact_method;
}
