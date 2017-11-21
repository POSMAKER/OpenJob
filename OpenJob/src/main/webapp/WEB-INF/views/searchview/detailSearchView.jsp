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

a:link {
	color: black;
	font-family: sans-serif;
	text-decoration: none;
}

a:visited {
	color: black;
	font-family: sans-serif;
	text-decoration: none;
}

a:hover {
	color: #cc3300;
	font-weight: bold;
}

a:active {
	color: #ff00cc;
	text-decoration: underline;
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
								<td><c:set var="selectedCate" value="" /> <select
									name="category" style="width: 80px; border-style: none;">
										<option value="all">통합</option>
										<option value="company" ${companySelected }>기업</option>
										<option value="post" ${postSelected }>채용</option>
								</select></td>
								<td><input type="text" name="searchWord"
									placeholder="기업, 채용공고를 검색해보세요."
									style="width: 400px; border: none; min-width: 300px;"
									value="${searchWord }" /></td>
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
			<c:if test="${category ne 'company' }">
				<%@include file="/WEB-INF/views/searchview/searchPost.jsp"%>
			</c:if>

			<!-- 기업 정보 div -->
			<c:if test="${category ne 'post' }">
				<%@include file="/WEB-INF/views/searchview/searchCompany.jsp"%>
			</c:if>
		</div>
	</div>
</body>
</html>