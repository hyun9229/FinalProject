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
ul.menu{list-style: none;}

ul.menu li{
  cursor: pointer;
  width: 120px;
  float: left;
  border: 1px solid gray;
  height: 60px;
  line-height: 60px;
  margin-right: 10px;
  text-align: center;
  font-size: 20px;
}

ul.menu li a{
  color: black;
  text-decoration: none;
}
</style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>

<ul class="menu">
  <li>
    <a href="${root }/">Home</a>
  </li>
  <li>
    <a href="${root }/#">돌봄 서비스</a>
  </li>
  <li>
    <a href="${root }/#">훈련 서비스</a>
  </li>
  <li>
    <a href="${root }/#">훈련사 Q&A</a>
  </li>
  <li>
    <a href="${root }/#">이용 후기</a>
  </li>
  <li>
    <a href="${root }/#">파트너 지원</a>
  </li>
  <li>
    <a href="${root }/#">마이페이지</a>
  </li>
  <li>
    <a href="${root }/member/form">insert테스트</a>
  </li>
</ul>
</body>
</html>