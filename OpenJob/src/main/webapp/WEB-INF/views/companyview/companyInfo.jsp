<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 예외 처리 -->

<!-- HEAD -->
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
<div class="container-fluid" style="background-color: #e6e6e6;">
	<div class="row">
		<div class="col-xl-2"></div>
		<div class="col-xl-8">
			<div class="row" style="padding-top: 15px;">
				<!-- LEFT -->
				<div class="col-xl-9" style="margin-bottom: 15px;" align="center">	
					<div
						style="padding: 15px; width: 100%; background-color: #ffffff;"
						align="left">
					<div class="row" style="margin: 0 15 15 15px;">
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">웹사이트</span>
							</div>
							<div class="row" style="margin-bottom: 15px;">${companyInfo.website }</div>
						</div>
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">본사</span>
							</div>
							<div class="row">${companyInfo.address }</div>
						</div>
					</div>
					<div class="row" style="margin: 15px;">
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">사원수</span>
							</div>
							<div class="row" style="margin-bottom: 15px;">${companyInfo.employeenum }명</div>
						</div>
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">설립일</span>
							</div>
							<div class="row">${companyInfo.founddate }</div>
						</div>
					</div>
					<div class="row" style="margin: 15px;">
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">기업형태</span>
							</div>
							<div class="row" style="margin-bottom: 15px;">${companyInfo.type }</div>
						</div>
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">매출액</span>
							</div>
							<div class="row">${companyInfo.sales }원</div>
						</div>
					</div>
					<div class="row" style="margin: 15px;">
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">산업군</span>
							</div>
							<div class="row" style="margin-bottom: 15px;">${companyInfo.industry }</div>
						</div>
						<div class="col-xl-6">
							<div class="row">
								<span style="font-weight: bold">대표</span>
							</div>
							<div class="row">${companyInfo.ceo }</div>
						</div>
					</div>
					<div class="row" style="margin: 15px;">
						<div>${companyInfo.companyinfo }</div>
					</div>
				</div>
				</div>
				<!-- RIGHT -->
				<div class="col-xl-3" align="center">
					<img src="${home }/imgs/AD1.jpg"
						style="width: 100%; min-width: 145px; max-width: 320px;">
				</div>
			</div>
			<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>