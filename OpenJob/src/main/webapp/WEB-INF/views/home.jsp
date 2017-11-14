<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="home" value="<%=request.getContextPath()%>"></c:set>
<c:set var="path" value="/" />

<html>
<head>
<title>Home</title>
</head>
<body>
	<div align="center">
		<table style="width: 800px;">
			<tr>
				<td style="height: 100px;"><c:import url="${path }top" /></td>
			</tr>
			<tr>
				<table border="1px solid">
					<tr>
						<td>기업 번호</td>
						<td>기업 정보</td>
					</tr>
					<c:choose>
						<c:when test="${companyList!=null }">
							<c:forEach var="company" items="${companyList }">
								<tr>
									<td rowspan="2"><img src='${home }/companyimgs/${company.thumbimg }'></td>
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
			</tr>
			<tr>
				<td style="height: 100px;"><c:import url="${path }footer" /></td>
			</tr>
		</table>
	</div>
</body>
</html>
