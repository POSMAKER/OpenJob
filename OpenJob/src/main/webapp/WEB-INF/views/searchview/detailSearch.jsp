<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>상세검색</title>
</head>
<body style="height: 1500px">
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 100px">
		<table border="1" style="width: 1000px; height:500px;">
			<c:if test="${postLst!=null }">
				<c:forEach var="post" items="${postLst }">
					<tr>
						<td colspan="2">${post.title }</td>
					</tr>
					<tr>
						<td>${post.companyno }</td>
						<td>${post.startdate }</td>
					</tr>
					<tr>
						<td colspan="2">${post.jobcategory }</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</body>
</html>