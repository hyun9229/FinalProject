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
<script type="text/javascript">
$(function(){
	
	$("#updateTrainerStatus").click(function(){
		
		alert($(this).attr("num"));
		/* $.ajax({
			type:"get",
			dataType:"html",
			data:{"mem_num":$(this).attr("num")},
			url:"updateTrainerStatus",
			success:function(){
				alert("ye");
			}
		}); */ 
	});
});
</script>
</head>
<body>
<c:if test="${sessionScope.myid=='admin'}">
  
  <!-- 훈련사 지원현황-->
  <table class="table table-bordered" style="width: 800px;">
    <tr>
      <td colspan="5" align="center">훈련사 지원현황</td>
    </tr>
    <c:forEach var="tdto" items="${tlist }" varStatus="i">
      <tr>
        <td>${i.count }</td>
        <td>${tdto.trainer_name }</td>
        <td>${tdto.trainer_gender }</td>
        <td>${tdto.trainer_phone }</td>
        <td><button type="button" id="updateTrainerStatus" num="${tdto.mem_num }">승인</button></td>
      </tr>
    </c:forEach>
  </table>
  
  <!-- 펫시터 지원현황 -->
  <table class="table table-bordered" style="width: 800px;">
    <tr>
      <td colspan="5" align="center">펫시터 지원현황</td>
    </tr>
    <c:forEach var="pdto" items="${plist }" varStatus="i">
      <tr>
        <td>${i.count }</td>
        <td>${pdto.partner_name }</td>
        <td>${pdto.partner_gender }</td>
        <td>${pdto.partner_phone }</td>
        <td><button type="button" onclick="location.href=''">승인</button></td>
      </tr>
    </c:forEach>
  </table>
  
</c:if> 
</body>
</html>