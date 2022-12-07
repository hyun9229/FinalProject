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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<!-- 결제 정보 출력 -->

<script type="text/javascript">
//카카오페이
IMP.init('imp78851038');
$(".paybtn").click(function(){
	IMP.request_pay({
		
		pg: "kakaopay",
		pay_method: "card",
		merchant_uid: "iamport_sist2",
		name: "WAYO",
		amount: ${trainerprof_price},
		buyer_name: ${mem_name},
		buyer_tel: ${mem_phone}
	}, function(rsp){
		console.log(rsp);
		
		if(rsp.success){
			
			var msg="결제가 완료되었습니다.";
			//msg+="\n고유ID : " + rsp.imp_uid;
			//msg+="\n상점거래ID : " + rsp.merchant_uid; 
			msg+="\n결제금액 : " + rsp.paid_amount + " 원";
			
			location.href="../mypage";
			} else {
			
			var msg="결제에 실패하였습니다.";
			msg+=rsp.error_msg;
			
			//실패시 reload
			location.reload();
			}
		    alert(msg);
	});	
});

//KG이니시스
$(".inicisbtn").click(function(){
	IMP.request_pay({
		
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: "iamport_sist2",
		name: "WAYO",
		amount: ${trainerprof_price},
		buyer_name: "${mem_name}",
		buyer_tel: "${mem_phone}"
	}, function(rsp){
		console.log(rsp);
		
		if(rsp.success){
			
			var msg="결제가 완료되었습니다.";
			//msg+="\n고유ID : " + rsp.imp_uid;
			//msg+="\n상점거래ID : " + rsp.merchant_uid; 
			msg+="\n결제금액 : " + rsp.paid_amount + " 원";
			
			location.href="../mypage";
			} else {
			
			var msg="결제에 실패하였습니다.";
			msg+=rsp.error_msg;
			
			//실패시 reload
			location.reload();
			}
		    alert(msg);
	});	
});
</script>
</body>
</html>