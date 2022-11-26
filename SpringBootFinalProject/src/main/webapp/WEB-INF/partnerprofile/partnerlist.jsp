<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
.card{

height: 500px;
width: 500px;
margin-left: 400px;
margin-bottom: 100px;

}

div.answer2{

position: absolute;
top: -60px;
left : 670px;
width: 100%;
height: auto;
font-size: 40px;


}

div.a{

position: absolute;
top: 150px;
margin-left:580px;
width: 100%;
height: auto;
font-size: 20px;


}

</style>

</head>
<body>
<div style="width: 100%; height: 300px; background-color: #f8f8f8; border: none; margin-bottom: 200px;">
<div class="answer2" style="border: none;"><br><br>

<b>펫시터를 소개합니다!</b>

</div>


<div class="a" style="border: none;"><br><br>
<span style="color: gray;">
까다로운 펫시터 선발·관리 체계와 안전 시스템을 구축하였습니다.
</span>
</div>
</div>
<%--  <c:if test="${sessionScope.loginok!=null and sessionScope.myid=='admin' }">  
   
  
   
 </c:if>   --%>   
 
  <button type="button" onclick="location.href='/partnerprofile/partnerform'" style="width: 200px; height: 50px;"
   class="btn btn-primary btn1">펫시터 정보 등록</button> 
 
  <c:forEach var="dto" items="${list }">      

<div class="container mt-3">

  <div class="card" style="width:500px; height:200px; border: 2px solid #dcdcdc;"><br>
       
     
<!--         <img class="card-img-top" src="../image/12.png" class="rounded-circle" alt="Cinque Terre"> -->
  
    <div class="card-body">
      <h4 class="card-title">${dto.partner_name}&nbsp;펫시터</h4>
      <p class="card-text">${dto.partner_gender }</p>

     <c:forEach var="adto" items="${alist }"> 

멘트:${adto.partnerprof_subject }
가격:${adto.partnerprof_price }
</c:forEach>

      <a href="partnerdetail?partner_num=${dto.partner_num}" class="btn btn-primary">펫시터 프로필 보기</a>  
                    </div>
  </div>


</div>


</c:forEach>      
       
 

</body>
</html>