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
<c:set var="root" value="<%=request.getContextPath() %>"/>
<title>Insert title here</title>
<style type="text/css">
div.content
{
	width: 980px;
	margin-left: 15%;
	border: 1px solid #E0E0E0;
	border-radius: 7px;
}

</style>
</head>
<body>
<div style="width:100%;"> 
	<div style="width:1000px;  margin-top:5%; margin-left: 15%; margin-bottom: 15px;">
	<b style="font-size: 24px; color:#555555;">[${dto.que_category }] 카테고리</b>
	<a href="../qna" style="font-size: 24px; color:gray; float:right; text-decoration: none;">목록으로 돌아가기 > </a><br>
	</div>
	<div class="content">
	<img src="${root }/image/question.png" alt="질문" style="width: 36px; height: 26px; margin-right: 13px;">
			<h4 style="color:#6a92fe;">와요 회원님의 질문</h4>
			<span>${dto.mem_name }</span>
			<fmt:formatDate value="${dto.que_date }" pattern="yyyy-MM-dd"/>
			<br>
			<b style="font-size: 25px; font-weight: 500;">${dto.que_subject }</b><br><br>
			<hr><br>
			<pre>${dto.que_content }</pre>
	</div> 


<div style="width:1000px;margin-left: 15%; margin-top:5%; ">
<c:if test="${sessionScope.loginok!=null && sessionScope.status==1}">
<button type="button" onclick="location.href='answer'">답변</button>
</c:if>

<c:if test="${sessionScope.loginok!=null && sessionScope.loginname==dto.mem_name}">
<button type="button" onclick="location.href='delete?que_num=${dto.que_num}'">삭제</button>
</c:if>

</div>
</div>
</body>
</html>