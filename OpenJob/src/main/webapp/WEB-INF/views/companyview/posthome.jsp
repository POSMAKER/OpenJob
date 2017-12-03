<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[오픈잡] 채용 홈</title>
</head>
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<body>
	<div class="container-fluid" style="margin-top: 56px">
		<%@include file="/WEB-INF/views/searchview/searchBar.jsp"%>
		<div class="row" style="background-color:#e6e6e6;">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<h3>채용 홈</h3>
				<a href="${home }/company/13/post/7">채용공고 페이지 예제</a><br>
			<c:forEach var="item" items="${postLst }">
				${item.companyno}:${item.postno}<br>
				${item.thumbimg} :: ${item.title }<br>
				${item.location }:${item.jobcategory }:${item.subjobcategory }:${item.type }:${item.career }<br>
			</c:forEach>	
				
			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
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
	$("#category option[value='post']").prop("selected", true)
			.trigger('change');
</script>