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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<c:set var="root" value="<%=request.getContextPath() %>"/>
<style type="text/css">
body *
{
	font-family: 'Spoqa Han Sans Neo';
}

div.whole{
	width:100%;
	height: 100%;
	margin-top:25%;
}

div.search
{
	display:flex;
	align-items:center;
	padding-left:24px;
	width:678px;
	height:65px;
	border:1px solid #DFE3EA;
	box-shadow:0 0px 3px 3px rgba(0,0,0,0.03);
	margin-top:28px; 
	border-radius: 5px;
}

input.searchword
{
	width:100%;
	 font-size:17px; 
	 letter-spacing:-0.2px; 
	 line-height:25px;
	 border:none;
	 color:#333333;
	 pointer-events:auto
}

ul.oq_list, ul.q_category
{
list-style:  none;
margin-left: -35px;
margin-top: 20px;

}
ul.oq_list li
{
	border:1px solid #DFE3EA;
	box-shadow:0 0px 3px 3px rgba(0,0,0,0.03);
	border-radius: 10px;
	width: 180px;
	height: 60px;
	float: left;
	margin-right: 15px;
	margin-bottom:10px;
	text-align: center;
	line-height: 60px;
}
ul.oq_list li a, ul.q_category li a
{
	text-decoration: none;
	color:#555555;
}

ul.q_category li
{
	border:1px solid #DFE3EA;
	box-shadow:0 0px 3px 3px rgba(0,0,0,0.03);
	border-radius: 10px;
	width: 85px;
	height: 50px;
	float: left;
	margin-right: 10px;
	margin-bottom:10px;
	text-align: center;
	line-height: 50px;
}
#qlist
{
	width:470px;
	height:370px;
	background-color: white;
	box-shadow: 0 0px 3px 3px rgba(0,0,0,0.07);
	border-radius: 7px;
	margin-bottom: 50px;
	padding: 30px 30px 30px 30px;
	float:left; 
	margin-right: 40px;
	cursor: pointer;
}
</style>

<title>Insert title here</title>
</head>
<body>
<div class="position-absolute top-0 start-50 translate-middle whole">
<div>
  <div style=" margin-left:15.5%;">
	<div style="width: 85%;  margin-top: 12%;">
		<div>
			<h1 style="font-size:50px; font-weight: 600; color:#555555;">훈련사 Q&A</h1>
			<p style="font-size:17px; color:#555555; margin-top: 24px;">우리 강아지, 고양이가 왜 그럴까요? 훈련사가 답변해드려요!</p>
		</div>

		<!-- 검색창 -->
		<form action="qna" >
		<div class="search">
			<input type="hidden" name="searchcolumn" value="que_subject">
			<input type="text" name="searchword" class="searchword" autocomplete="off" value="" placeholder="궁금한 키워드를 검색해보세요">
			<img src="../image/search.png" style="width:30px; height:30px; margin-right:15px;" >
		</div>
		</form>
	</div>
	
	<div style="width:85%; margin-top:12% ">
		<h4>자주 묻는 질문</h4>
		<ul class="oq_list">
			<li><a href="#">산책을 무서워해요</a></li>
			<li><a href="#">산책시 짖어요</a></li>
			<li><a href="#">배변 실수를 해요</a></li>
			<li><a href="#">식분증이 있어요 </a></li>
			<li><a href="#">입질이 있어요</a></li>
			<li><a href="#">자꾸 깨물어요 </a></li>
			<li><a href="#">분리불안이 있어요</a></li>
			<li><a href="#">사회성이 부족해요</a></li>
		</ul>
	</div>
	
	<div style="width:85%; margin-top:18% ">
	<h4>질문 카테고리</h4>
		<ul class="q_category">
			<li><a href="#">전체</a></li>
			<li><a href="#">배변</a></li>
			<li><a href="#">산책</a></li>
			<li><a href="#">공격성</a></li>
			<li><a href="#">짖음</a></li>
			<li><a href="#">기본예절 </a></li>
			<li><a href="#">기타</a></li>
		</ul>
	</div>
	
	<div style="width:85%; margin-top:12%; ">
	<p style="color:gray;">전체 글 ${count }개 &nbsp;&nbsp;&nbsp;
		<button type="button" class="btn btn-light" onclick="location.href='form'">
		<i class="bi bi-pencil-square"></i>질문하기</button></p>
		<c:forEach var="dto" items="${list}">
		<div id="qlist" onclick="location.href='qna/que_detail?que_num=${dto.que_num}'">
			<img src="../image/question.png" alt="질문" style="width: 36px; height: 26px; margin-right: 13px;">
			<b style="font-size: 20px; font-weight: 500;">${dto.que_subject }</b><br><br>
			${dto.que_date}
			<hr><br>
			${dto.que_content}
		</div>
		</c:forEach>
			
	</div>
  </div>
  </div>
  
</div>
</body>
</html>