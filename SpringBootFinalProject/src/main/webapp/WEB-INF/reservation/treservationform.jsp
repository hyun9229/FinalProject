<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gamja+Flower&family=Jua&family=Noto+Serif+KR&display=swap">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script src="https://kit.fontawesome.com/4f8084f592.js" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style type="text/css">
div.all {

background-color: #f8f8f8;


}

input[type=text], select {
  width: 300px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border-top:none;
  border-left:none;
  border-right:none;
  border-bottom: 2px solid gray;
  border-radius: 4px;
  box-sizing: border-box;
  
 
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}



 .test_obj input[type="radio"] {
        display: none;
    }
 
    .test_obj input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
        width: 100px;
    }
 
     .test_obj input[type="radio"]:checked + span {
        background-color: blue;
        color: #ffffff;
    }
    
    
div.box{

margin: 10px 400px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;

}

div.box1{

margin: 100px 400px;
margin-bottom:10px;
padding: 50px;
border-radius: 20px;
background-color: white;
border: none;
}

body * { font-family: 'Spoqa Han Sans Neo', 'sans-serif'; }

div.jiwon{

   margin-left: 400px;
   margin-top: 100px;
   font-size: 50px;

}

 input[type=checkbox], input[type=radio] {
     accent-color: blue;
    
    width: 20px;
    height: 20px;
    border: 1px;
}
</style>
</head>
<body>
<form action="insert" method="post">
  <div class="jiwon" style="border: none;">
  <b>방문교육 예약하기</b>
  </div>

<div class="all" style="border: none;">

<div class="box1">
	<fieldset>
	<legend style="font-size: 30px;">예약 정보</legend><br><br>
			
		<label for="name"><b style="font-size: 20px;">어디로 방문할까요?</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text" name="mem_addr" value="${mem_addr }" class="form-control" required="required"><br>
				
		<!-- <label for="mail"><b style="font-size: 20px;">방문 방법</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&nbsp;
			 <input type="text" name="trainer_birth" placeholder="예)1994-01-01" class="form-control" required="required">&emsp;<span style="color: gray; font-size: 13px; font-style: italic;">03년생부터(만 18세이상) 지원이 가능합니다.</span><br><br>
					
					
        <label class="test_obj"><b style="font-size: 20px;">성별</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp;&emsp;&emsp;
              <input type="radio" name="trainer_gender" value="남성" required="required">
              <span>남성</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp;
              <input type="radio" name="trainer_gender" value="여성" required="required">
              <span>여성</span> 
	    </label> <br><br>
	    
	    <label for="name"><b style="font-size: 20px;">연락처</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp; 
			<input type="text" name="trainer_phone" placeholder="연락처" class="form-control" required="required">&nbsp;
			<span style="color: gray; font-size: 13px; font-style: italic;">&emsp;입력한 번호로 합격 문자를 보내드립니다.</span><br>
			 
		<label for="name"><b style="font-size: 20px;">주소</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp; 
			 <input type="text" name="trainer_addr" placeholder="예)서울시 강남구 논현동" class="form-control" required="required">&emsp;
			 <span style="color: gray; font-size: 13px; font-style: italic;">시/군/구까지 입력해주세요.</span><br><br>
	    		
	    <label class="test_obj"><b style="font-size: 20px;">흡연여부</b> &nbsp;<span style="color: red; font-size: 25px;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &emsp;&emsp; <input type="radio" name="trainer_smoking" value="흡연" class="form-control" required="required">
              <span>흡연</span> 
	    </label>	
	    
	    <label class="test_obj">
             &emsp; <input type="radio" name="trainer_smoking" value="비흡연" required="required">
              <span>비흡연</span> 
	    </label> <br><br><br>		
	    		
	    <label for="name"><b style="font-size: 20px;">사진</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&emsp;&emsp;&emsp;&emsp; <input type="file" name="upload" required="required"><br> -->
		</fieldset>		

 </div>   

<div class="box">
	<fieldset>
	<legend style="font-size: 30px;">방문 방법</legend>
		
		<label for="name"><b style="font-size: 20px;">방문 방법</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
			 
			 <input type="radio" name="res_visit" value="일반 방문">&nbsp;&nbsp;일반 방문&nbsp;&nbsp;
			 <input type="radio" name="res_visit" value="정기 방문">&nbsp;&nbsp;정기 방문&nbsp;&nbsp;
			 
		<!-- 일반 방문 -->
		<label for="name"><b style="font-size: 20px;">방문 날짜</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		<input type="date" name="res_norm_date" class="form-control">
		
		<label for="name"><b style="font-size: 20px;">방문 시간</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		<input type="date" name="res_time" class="form-control">
		
		<!-- 정기 방문 -->
		<label for="name"><b style="font-size: 20px;">방문 요일</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		
		<label for="name"><b style="font-size: 20px;">시작 날짜</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
		
		<label for="name"><b style="font-size: 20px;">방문 시간</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
			 
		<!-- visitmethod 1 선택시 아래 2,3 비활성화 되도록 js 설정하기 -->
		<input type="radio" name="visitmethod" value="비밀번호">&nbsp;&nbsp;비밀번호&nbsp;&nbsp;
		<input type="radio" name="visitmethod" value="숨겨둔 키">&nbsp;&nbsp;숨겨둔 키&nbsp;&nbsp;
		<input type="radio" name="visitmethod" value="직접 만남">&nbsp;&nbsp;직접 만남
	    <br><br>
	    
	    <!-- 방법1_비밀 번호 -->
	    <label for="name"><b style="font-size: 20px;">비밀번호 입력</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <input type="text" name="res_pub_pass" placeholder="공동 현관 비밀번호">&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    &nbsp;&nbsp;&nbsp;
	    <input type="text" name="res_priv_pass" placeholder="내집 현관 비밀번호">
	    
	    <!-- 방법2_숨겨둔 키 -->
	    <label for="name"><b style="font-size: 20px;">숨겨둔 열쇠 위치</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <textarea style="width: 700px;" placeholder="예)현관문 옆에 있는 양수함에 넣어놨어요." name="res_key_loc"></textarea>
	    
	    <!-- 방법3_대면시 연락 방법 -->
	    <label for="name"><b style="font-size: 20px;">대면시 연락 방법</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label><br><br>
	    <textarea style="width: 700px;" placeholder="예)집 앞에 도착하면 010-0000-0000 번호로 연락주시면 제가 나가겠습니다." name="res_contact_method"></textarea>
	    
		</fieldset>		
   </div>
 </div> 

<button type="submit" class="btn btn-primary" style="margin-left: 700px; width: 300px; height: 80px; font-size: 25px;">지원서 제출</button>
  
</form>
</body>
</html>