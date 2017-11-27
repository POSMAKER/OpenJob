<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 임시 -->
<jsp:useBean id="USER" class="com.open.job.DTO.USER" scope="page" />
<c:set target="${USER }" property="memberno" value="1" />
<c:set target="${USER }" property="memberemail"
	value="kumasyrwork@cjfood.co.kr" />
<c:set target="${USER }" property="companyno" value="13" />
<c:set target="${USER }" property="companyname" value="씨제이푸드빌(주)" />
<!-- 임시 -->
<html>
<body>
	<div class="container-fluid" style="margin-top: 55px; padding: 0px;">
		<!-- CompanyTitle -->
		<c:import url="/company/frag_companytitle">
			<c:param name="memberno" value="${USER.memberno }" />
			<c:param name="companyno" value="${USER.companyno }" />
		</c:import>
		<!-- Company Navbar or PostTitle -->
		<c:choose>
			<c:when test="${post!=null }">
				<%@include file="/WEB-INF/views/companyview/sub/posttitle.jsp"%>
			</c:when>
			<c:otherwise>
				<c:import url="/company/frag_companynavi">
					<c:param name="companyno" value="${companyno }" />
				</c:import>
			</c:otherwise>
		</c:choose>
		<div style="background-color: #e6e6e6;">
			<div class="row">
				<div class="col-lg-2"></div>
				<div class="col-lg-8">