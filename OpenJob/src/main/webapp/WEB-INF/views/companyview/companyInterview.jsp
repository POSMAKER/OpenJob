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
<div style="background-color: #e6e6e6;">
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div class="row" style="padding-top: 15px;">
				<!-- LEFT -->
				<div class="col-lg-8" style="margin-bottom: 15px;" align="center">
					<!-- 기업 리뷰 통계 -->
					<div
						style="width: 100%; background-color: #ffffff; margin-bottom: 15px;"
						align="left">
						전체 리뷰 통계<br> <br> <br> <br> <br> <br>
						<br> <br> <br> <br> <br> <br>
					</div>
					<div>
						<img src="${home }/imgs/AD3.jpg"
							style="width: 100%; min-width: 145px; margin-bottom: 15px;">
					</div>
					<!-- 기업 리뷰 페이지 -->
					<div
						style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
						align="left">
						<!-- 검색: 리뷰의 직종, 리뷰의 전/현 직 상태 -->
						<select name="cars" id="subjobcateSel">
							<option value="default">직종전체</option>
							<c:forEach var="item" items="${subjobcategoryList}">
								<option value="${item }">${item }</option>
							</c:forEach>
						</select> <select name="cars" id="employstatusSel">
							<option value="default">현재재직상태</option>
							<c:forEach var="item" items="${employstatus}">
								<option value="${item }">${item }</option>
							</c:forEach>
						</select> <br /> <br /> 총 ${fn:length(interviewLst) } 개의 기업 리뷰
					</div>
					<c:forEach var="interview" items="${interviewLst}">
						<div
							style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
							align="left">
							<%@include
								file="/WEB-INF/views/companyview/Viewsub/interviewView.jsp"%>
						</div>
					</c:forEach>
				</div>
				<!-- RIGHT -->
				<div class="col-lg-4" align="center">
					<img src="${home }/imgs/AD4.jpg"
						style="width: 100%; min-width: 145px; max-width: 320px;">
				</div>
			</div>
			<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>