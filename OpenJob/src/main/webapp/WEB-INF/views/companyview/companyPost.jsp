<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:if test="${company==null }">
<script>
	alert("기업 정보가 없습니다.");
	window.location.href='${home}/';
</script>
</c:if>
<head>
<title>${company.companyname }</title>
</head>
<%@include file="/WEB-INF/views/companyview/sub/companytop.jspf" %>

<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf" %>