<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
<title>Insert title here</title>
<style type="text/css">
body{

overflow-x: hidden;

}

#img1{


 
  width: 100%;
  height:400px;
  opacity: 0.7;
  


}

div.part{

margin-left: 200px;
}

hr{

width: 600px;
}

.card{

margin-right:200px;
margin-top: -800px;


}
#hr2{

width: 270px;
}

</style>
</head>
<body>
<img alt="" src="${root }/image/12.png" width="700px;" height="300px;" id="img1">
  <c:forEach var="adto" items="${alist }"> 
   <input type="hidden" name="partnerprof_num" value="${partnerprof_num }">  
멘트:${adto.partnerprof_subject }
가격:${adto.partnerprof_price }
</c:forEach>



 <c:forEach var="dto" items="${list }">      
<br><br><br><br>
<div class="part" style="border: none;">
 ${dto.partner_name }&nbsp;훈련사<br>
 <br><br>
 <hr>
 
<b>펫시터 경험</b> <br>
${dto.partner_exp }<br><br><br>
<b>가능한 시간대</b> <br>
 ${dto.partner_time }<br><br><br>
<b>가능한 날짜</b><br>
 ${dto.partner_date }<br><br><br>

<hr>
<b>펫시터 소개 영상</b><br><br><br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/sPuPMjzd50U" title="YouTube video player"
 frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
  allowfullscreen></iframe>

 
<div class="container mt-3">

  <div class="card" style="width:300px; height:150px; border: 2px solid #dcdcdc; float: right;">
       
    <div class="card-body">
      <p class="card-text"><b>이용 요금</b></p>
      <hr id="hr2"><br>
      <p class="card-text">방문 가격</p>
   </div>
  </div>


</div>
 



</c:forEach>      
</body>
</html>