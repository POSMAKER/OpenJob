<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	$(document).ready(function() {
		$("#category").change(function() {
			var categoryVal = $("#category").val();

			if (categoryVal == "all") {
				$("#searchWord").attr("placeholder", "기업, 채용공고를 검색해보세요.");
			} else if (categoryVal == "company") {
				$("#searchWord").attr("placeholder", "기업명으로 검색");
			} else if (categoryVal == "post") {
				$("#searchWord").attr("placeholder", "회사명, 희망직무 등으로 검색");
			}
		});
	});
</script>
<html>
<style>

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
		<!-- 검색바 -->
		<%@include file="/WEB-INF/views/searchview/searchBar.jsp"%>
		<div style="background-color: #e6e6e6; padding: 20px;">

			<!-- 채용 정보  -->
			<c:if test="${category ne 'company' }">
				<%@include file="/WEB-INF/views/searchview/searchPost.jsp"%>
			</c:if>

			<!-- 기업 정보  -->
			<c:if test="${category ne 'post' }">
				<%@include file="/WEB-INF/views/searchview/searchCompany.jsp"%>
			</c:if>
		</div>
	</div>
</body>
</html>

<!-- 

post
직종
직종상세
근무지역
경력
공고시작일>>>공고가 올라온 기간을 검색하기 위하여
작성일


company
기업형태

 -->