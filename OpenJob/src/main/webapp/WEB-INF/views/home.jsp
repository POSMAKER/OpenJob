<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="home" value="<%=request.getContextPath() %>"></c:set>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<br/>
<br/>
<table border="1px solid">
<tr>
	<td>기업 번호</td>
	<td>기업 정보</td>
</tr>
<c:choose>
	<c:when test="${companyList!=null }">
		<c:forEach var="company" items="${companyList }">
			<tr>
				<td><img src='${home }/companyimgs/${company.thumbimg }'></td>
				<td>${company.companyinfo}</td>
			</tr>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<tr>
			<td colspan="2">값이 비어있습니다.</td>
		</tr>
	</c:otherwise>
</c:choose>
</table>
</body>
</html>
