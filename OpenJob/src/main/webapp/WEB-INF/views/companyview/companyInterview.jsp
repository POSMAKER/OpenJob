<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 예외 처리 -->

<head>
<style>
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
<div class="container-fluid" style="background-color: #e6e6e6; ">
	<div class="row">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="row" style="padding-top: 15px;">
				<!-- LEFT -->
				<div class="col-xl-9" style="margin-bottom: 15px;" align="center">
					<!-- 기업 리뷰 통계 -->
					<div
						style="padding: 15px; width: 100%; background-color: #ffffff; margin-bottom: 15px;"
						align="left">
						전체 리뷰 통계<br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br>
					</div>
					<div>
						<img src="${home }/imgs/AD3.jpg"
							style="width: 100%; min-width: 145px; margin-bottom: 15px;">
					</div>
					<!-- 면접 리뷰 검색 -->
					<c:import url="/company/frag_interviewsearch">
						<c:param name="companyno" value="${companyno }" />
					</c:import>
					<!-- 면접 리뷰 검색 결과 페이지 -->
					<div id="interviewsearchresult_div">
						<c:import url="/company/frag_showinterviewLst">
						<c:param name="companyno" value="${companyno }" />
					</c:import>
					</div>
				</div>
				<!-- RIGHT -->
				<div class="col-xl-3" align="center">
					<img src="${home }/imgs/AD4.jpg"
						style="width: 100%; min-width: 145px; max-width: 320px;">
				</div>
			</div>
			<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>