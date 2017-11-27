<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<!-- 예외 처리 -->

<head>
<title>${company.companyname }</title>
<style>
span.tag {
	background-color: #cceeff;
	display: inline-block;
	font-size: 12px;
	padding: 2 5px;
	margin: 2px;
}
span.subtitle{
	color:#a6a6a6;
	font-size: 13px;
}
 body.modal-open {
    overflow: hidden;
    position:fixed;
    width: 100%;
}
</style>
</head>
<!-- NavBar -->
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<!-- CompanyTop -->
<c:import url="/company/frag_companytop">
	<c:param name="companyno" value="${companyno }"/>
</c:import>
<div class="row" style="padding-top: 15px;">
	<!-- LEFT -->
	<div class="col-lg-12" style="margin-bottom: 15px;" align="center">
		<!-- 기업 리뷰 페이지 -->
		<div
			style="width: 100%; background-color: #ffffff; padding: 15px; margin-bottom: 15px;"
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
			</select> <br /> <br /> 총 <span
				style="color: #ff4d4d; font-size: 16px; font-weight: bold">${fn:length(postLst) }</span>
			개의 기업 공고
		</div>
		<c:forEach var="post" items="${postLst }" varStatus="status">
			<c:if test="${status.index mod 3 == 0}">
				<div class="row">
			</c:if>
			<div class="col-lg-4" style="padding-bottom: 15; height: 190px;"
				align="left">

				<div
					style="background-color: #ffffff; width: 100%; height: 100%; padding: 20px;">
					<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
						integerOnly="true" var="enddate" />
					<div
						style="margin-bottom: 10px; border: 1px lime solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: lime">D-${enddate-nowdate }</div>
					<br>
					<span
						style="width: 100%; overflow: hidden; display: inline-block; font-size: 17px; font-weight: bold; white-space: nowrap; text-overflow: ellipsis"><a
						style="color: black;"
						href="${home}/company/${company.companyno }/post/${post.postno}">${post.title}</a></span><br>
					<span class="subtitle"
						style="width: 100%; overflow: hidden; display: inline-block; white-space: nowrap; text-overflow: ellipsis">${post.jobcategory },
						${post.subjobcategory }</span><br>
					<br> <span class="tag">${post.location }</span><span
						class="tag">${post.career }</span>
				</div>
			</div>
			<c:if test="${status.index mod 3 == 2 || status.last}">
			</div>
			</c:if>
	</c:forEach>
</div>
<!-- RIGHT -->
</div>
<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>