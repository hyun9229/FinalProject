package sist.data.dto;

import java.security.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("answer")
public class AnswerDto {
	private int ans_num;
	private int trainer_num;
	private String trainer_name;
	private String ans_content;
	private Timestamp ans_date;
}
