<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기업 리뷰 작성</title>
</head>
<body>
<script>
	function shownext(){
		$("#p1").hide();
		$("#p2").show();
	}
	function showprev(){
		$("#p2").hide();
		$("#p1").show();
	}
</script>
<span style="font-size: 12px;">작성을 완료하시면 실제 직원들이 입력한 수십만개 기업리뷰를 무료로 볼 수 있습니다.<br>
입력하신 모든 정보는 익명으로 처리되니 걱정마세요.</span>
<br><br>
<form>
<c:set var="companybase"/>
<%@include file="/WEB-INF/views/companyview/Formsub/reviewForm_p1.jsp" %>
<%@include file="/WEB-INF/views/companyview/Formsub/reviewForm_p2.jsp" %>
</form>
</body>
</html>