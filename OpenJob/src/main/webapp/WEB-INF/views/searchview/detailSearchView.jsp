<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<style>

td, tr {
	padding: 10px;
}

#searchBtn {
	cursor: pointer;
}
.row {
	margin: 0px;
}

</style>
<head>
<title>상세검색</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 70px; padding: 0px;">
	<div class="row">
		<div class="col-sm-3" align="right" style="padding-right: 0px;">
			<!-- 로고 중복 코드 -->
				<div class="imgLogo">
				<a href="${home }/"><img src="${home }/imgs/logo.jpg"
					style="width: 200px; height: 65px;"></a>
				</div>
		</div>
		<div class="col-sm-6">
			<div align="center" style="padding-top: 10px;">
			<!-- 검색창 중복 코드 -->
			<form action="${home }/search" method="get">
			<table style="border-style: solid; border-color: #77bbff;">
				<tr>
					<td><select name="category" style="width: 80px; border-style: none;">
							<option value="all">통합</option>
							<option value="company">기업</option>
							<option value="post">채용</option>
					</select></td>
					<td><input type="text" name="searchWord" placeholder="기업, 채용공고를 검색해보세요." style="width: 400px; border: none;" /></td>
					<td><button id="searchBtn" style="background: transparent; border: none;"><i class="fa fa-search" style="font-size: 25px;"></i></button></td>
				</tr>
			</table>
			</form>
			</div>
		</div>
		<div class="col-sm-3" style="padding-right: 0px;"><img src="${home }/imgs/detailSearchView_AD.jpg"></div>
	</div>
		<div style="background-color: #e6e6e6; padding: 20px;">
			<div class=row>
				<div class="col-sm-2">div2</div>
				<div class="col-sm-7" style="background-color: white; padding: 30px;">
					<strong>채용공고</strong>
					<div class=row style="padding-top: 20px;">
					<div align="center">
						<table border="1" style="width: 600px;">
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
						<table border="1" style="width: 600px;">
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
				</div>
				<div class="col-sm-3">div3</div>
			</div>
		</div>
	</div>
</body>
</html>