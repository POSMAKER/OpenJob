<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<body>
	<div class="container-fluid" style="margin-top: 55px; padding: 0px;">
		<!-- CompanyTitle -->
		<c:import url="/company/frag_companytitle">
			<c:param name="memberno" value="${USER.memberno }" />
		</c:import>
		<!-- Company Navbar or PostTitle -->
		<c:choose>
			<c:when test="${post!=null }">
				<%@include file="/WEB-INF/views/companyview/sub/posttitle.jsp"%>
			</c:when>
			<c:otherwise>
				<c:import url="/company/frag_companynavi">
					<c:param name="companyno_now" value="${companyno }" />
				</c:import>
				<!-- Modal Form -->
				<c:import url="/company/${frmoption}Form" />
			</c:otherwise>
		</c:choose>