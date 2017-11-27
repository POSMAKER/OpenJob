<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
						integerOnly="true" var="enddate" />
<head>
<title>${company.companyname } [채용]</title>    
</head>
<c:import url="/company/frag_companytop"/>

<div class="row" style="padding: 15px;">
	<!-- LEFT -->
	<div class="col-lg-8" >
	<div style="padding-bottom:15px;">
		<span style="background-color: white; padding:7px; font-size:14px; margin-right:5px;">${post.jobcategory }</span>
		<span style="background-color: white; padding:7px; font-size:14px; margin-right:5px;">${post.subjobcategory }</span>
		<span style="background-color: white; padding:7px; font-size:14px; margin-right:5px;">${post.employtype }</span>
		<span style="background-color: white; padding:7px; font-size:14px; margin-right:5px;">${post.location }</span>
	</div>
	<div style="background-color: #ffffff; margin-bottom: 15px;" align="left">
		기업소개<br>
		${post.companyintro }<br><br>
		주요업무<br>
		${post.mainduty }<br><br>
		지원자격<br>
		${post.requirement }<br><br>
		채용절차<br>
		${post.process }<br><br>
		문의처<br>
		${post.personcharged }<br>
		${post.emailcharged }<br>
		${post.phonecharged }<br><br>
		상세정보<br>
		${post.educationrecord }<br>
		${post.salary }<br>
		${post.position }<br>
		${post.duty }<br>
		${post.career }<br><br>
	</div>
	<div style="background-color: #ffffff; margin-bottom: 15px;" align="center">
		<div class="row" style="margin: 15px;">
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">웹사이트</span></div>
				<div class="row" style="margin-bottom: 15px;">${companyInfo.website }</div>
			</div>
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">본사</span></div>
				<div class="row">${company.address }</div>
			</div>
		</div>
		<div class="row" style="margin: 15px;">
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">사원수</span></div>
				<div class="row" style="margin-bottom: 15px;">${companyInfo.employeenum }명</div>
			</div>
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">설립일</span></div>
				<div class="row">${companyInfo.founddate }</div>
			</div>
		</div>
		<div class="row" style="margin: 15px;">
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">기업형태</span></div>
				<div class="row" style="margin-bottom: 15px;">${companyInfo.type }</div>
			</div>
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">매출액</span></div>
				<div class="row">${companyInfo.sales }원</div>
			</div>
		</div>
		<div class="row" style="margin: 15px;">
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">산업군</span></div>
				<div class="row" style="margin-bottom: 15px;">${company.industry }</div>
			</div>
			<div class="col-lg-6">
				<div class="row"><span style="font-weight: bold">대표</span></div>
				<div class="row">${companyInfo.ceo }</div>
			</div>
		</div>
	</div>
	</div>
	<!-- RIGHT -->
	<div class="col-lg-4" align="center" style="padding-right:0px;">
		<img src="${home }/imgs/AD5.png"
			style="width: 100%; min-width: 145px; max-width: 320px;">
	</div>
</div>
<%@include file="/WEB-INF/views/companyview/sub/companybot.jspf"%>