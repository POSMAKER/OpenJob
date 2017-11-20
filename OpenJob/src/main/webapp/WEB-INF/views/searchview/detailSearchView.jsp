<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
$(document).ready(function(){
    $("#searchBtn").click(function(){
        alert("test");
    });
});
</script>
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
			<div class="col-sm-4" align="right" style="padding-right: 0px;">
				<!-- 로고 중복 코드 -->
				<div class="imgLogo">
					<a href="${home }/"><img src="${home }/imgs/logo.jpg"
						style="width: 200px; height: 65px;"></a>
				</div>
			</div>
			<div class="col-sm-5">
				<div align="left" style="padding-top: 10px;">
					<!-- 검색창 중복 코드 -->
					<form action="${home }/search" method="get">
						<table style="border-style: solid; border-color: #77bbff;">
							<tr>
								<td><select name="category"
									style="width: 80px; border-style: none;">
										<option value="all">통합</option>
										<option value="company">기업</option>
										<option value="post">채용</option>
								</select></td>
								<td><input type="text" name="searchWord"
									placeholder="기업, 채용공고를 검색해보세요."
									style="width: 400px; border: none; min-width: 300px;" /></td>
								<td><button id="searchBtn"
										style="background: transparent; border: none;">
										<i class="fa fa-search" style="font-size: 25px;"></i>
									</button></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<!-- 광고 -->
			<div class="col-sm-3" style="padding-right: 0px; min-width: 100px;">
				<img src="${home }/imgs/detailSearchView_AD.jpg">
			</div>
		</div>
		<div style="background-color: #e6e6e6; padding: 20px;">
		
			<!-- 채용 정보 div -->
			<div class=row>
				<div class="col-sm-2">div2</div>
				<div class="col-sm-7"
					style="background-color: white; padding: 30px; min-width: 700px;">
					<strong>채용공고</strong>
					<hr>
					<div class=row style="padding-top: 0px;">
						<div align="center">
							<c:choose>
								<c:when test="${postList==null }">
									<h5>${postmsg }</h5>
								</c:when>
								<c:otherwise>
									<table border="1" style="width: auto;">
										<c:forEach var="post" items="${postList }">
											<tr>
												<td rowspan="3"><a href="#"><img
														src="${home }/companyimgs/${post.thumbimg }"
														style="width: 100px;"></a></td>
												<td colspan="2">${post.title }</td>
											</tr>
											<tr>
												<td colspan="2">${post.companyname }</td>
											</tr>
											<tr>
												<td>${post.jobcategory }</td>
												<td>${post.subjobcategory }</td>
											</tr>
										</c:forEach>
									</table>
								</c:otherwise>
							</c:choose>
						</div>

					</div>
				</div>
				<div class="col-sm-3">div3</div>
			</div>

			<!-- 기업 정보 div -->
			<div class="row" style="padding-top: 20px;">
				<div class="col-sm-2">div2</div>
				<div class="col-sm-7"
					style="background-color: white; padding: 30px; min-width: 700px;">
					<strong>기업정보</strong>
					<hr>
					<div class=row style="padding-top: 0px;">
						<div align="center">
							<c:choose>
								<c:when test="${companyList==null }">
									<h5>${companymsg }</h5>
								</c:when>
								<c:otherwise>
									<table border="1" style="width: auto;">
										<c:forEach var="company" items="${companyList }">
											<tr>
												<td rowspan="3"><a href="#"><img
														src="${home }/companyimgs/${company.thumbimg }"
														style="width: 100px;"></a></td>
												<td colspan="2"><strong><a href="#">${company.companyname }</a></strong></td>
											</tr>
											<tr>
												<td>${company.industry }</td>
												<td>${company.address }</td>
											</tr>
											<tr>
												<td colspan="2"><a href="#">기업리뷰</a> <a href="#">면접후기</a>
												</td>
											</tr>
										</c:forEach>
									</table>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div class="col-sm-3">div3</div>
			</div>
		</div>
	</div>
</body>
</html>