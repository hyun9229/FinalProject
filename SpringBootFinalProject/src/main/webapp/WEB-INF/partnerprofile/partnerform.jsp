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



</style>
</head>
<body>

<form action="insert" method="post" >

 <div class="box">
	<fieldset>

	
	<legend style="font-size: 30px;">펫시터 정보 등록</legend><br><br>
	

		
		 <label for="name"><b style="font-size: 20px;">돌봄 타이틀</b> &nbsp;<span style="color: red; font-size: 25px;">*</span> </label><br><br>
		
			
			 <textarea style="width: 700px; height:100px;" placeholder="이곳에 직접 입력해주세요" name="partnerprof_subject" class="form-control" required="required"></textarea>

		</fieldset>		
		
			<label for="name"><b style="font-size: 20px;">별점</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="partnerprof_star" placeholder="이름" class="form-control" required="required" style="width: 700px;"><br>
		
		<br>
	<label for="name"><b style="font-size: 20px;">이용 가격</b> &nbsp;<span style="color: red; font-size: 25px;">*</span></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 &emsp;&emsp;&emsp;&emsp;&emsp;
			 <input type="text"  name="partnerprof_price" placeholder="이름" class="form-control" required="required" style="width: 700px;"><br>
	
 </div> 
 <button type="submit" class="btn btn-primary" style="margin-left: 700px; width: 300px; height: 80px; font-size: 25px;">펫시터 정보 등록</button>
 </form>
</body>
</html>