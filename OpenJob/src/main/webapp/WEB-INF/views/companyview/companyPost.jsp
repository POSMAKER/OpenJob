<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<!-- values: companyno, postLst, frmoption, postactive -->
<!-- 예외 처리 -->

<head>
<style>
span.tag {
	background-color: #cceeff;
	display: inline-block;
	font-size: 12px;
	padding: 2 5px;
	margin: 2px;
}

span.subtitle {
	color: #a6a6a6;
	font-size: 13px;
}

body.modal-open {
	overflow: hidden;
	position: fixed;
	width: 100%;
}
</style>
</head>
<!-- NavBar -->
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<!-- CompanyTop -->
<c:import url="/company/frag_companytop">
	<c:param name="companyno" value="${companyno }" />
</c:import>
<div class="container-fluid" style="background-color: #e6e6e6;">
	<div class="row">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="row" style="padding-top: 15px;">
				<!-- LEFT -->
				<div class="col-xl-12" style="margin-bottom: 15px;" align="center">
					<!-- 기업 리뷰 페이지 -->
					<c:import url="/company/frag_postsearch">
						<c:param name="companyno" value="${companyno }" />
					</c:import>
					<div id="postsearchresult_div">
					<c:import url="/company/frag_showpostLst">
						<c:param name="companyno" value="${companyno }" />
					</c:import>
					</div>
			</div>
			<!-- RIGHT -->
		</div>
		<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>