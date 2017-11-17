<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<style>
table {
	border-style: solid;
}

td, tr {
	padding: 10px;
}
</style>
<head>
<title>상세검색</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 100px;">
		<div style="background-color: #e6e6e6;">
			<div class=row></div>
			<div class=row>
				<div class="col-sm-3">div3</div>
				<div class="col-sm-6">
					<strong>채용공고</strong>
					<div class=row>
						<table border="1" style="width: 800px;">
							<c:if test="${postList!=null }">
								<c:forEach var="post" items="${postList }">
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
						<br>
						<table border="1" style="width: 800px;">
							<c:if test="${companyList!=null }">
								<c:forEach var="company" items="${companyList }">
									<tr>
										<td colspan="2">${company.companyname }</td>
									</tr>
									<tr>
										<td>${company.industry }${company.subindustry }</td>
										<td>${company.address }</td>
									</tr>

								</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
				<div class="col-sm-3">div3</div>
			</div>
		</div>
	</div>
</body>
</html>