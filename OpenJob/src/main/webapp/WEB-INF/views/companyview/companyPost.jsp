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
<div class="row" style="padding-top: 15px;">
	<!-- LEFT -->
	<div class="col-lg-12" style="margin-bottom: 15px;" align="center">
		<!-- 기업 리뷰 페이지 -->
		<div
			style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding:15px;"
			align="left">
			<!-- 검색: 리뷰의 직종, 리뷰의 전/현 직 상태 -->
			<select name="cars" id="subjobcateSel">
				<option value="default">직종전체</option>
				<c:forEach var="item" items="${subjobcategoryList}">
				<option value="${item }">${item }</option>
				</c:forEach>
			</select>
			<select name="cars" id="employstatusSel">
				<option value="default">현재재직상태</option>
				<c:forEach var="item" items="${employstatus}">
				<option value="${item }">${item }</option>
				</c:forEach>
			</select>
			<br/>
			<br/>
			총 0 개의 기업 리뷰
		</div>
		<div
			style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding:15px;"
			align="left"></div>
	</div>
	<!-- RIGHT -->
</div>
<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf" %>