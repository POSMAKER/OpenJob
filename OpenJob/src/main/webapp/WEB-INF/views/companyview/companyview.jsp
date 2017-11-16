<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:if test="${company==null }">
	<jsp:forward page="${home }/" />
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${company.companyname }</title>
</head>
<body>
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid"
		style="height: 1500px; margin-top: 55px; padding: 0px;">
		<div style="background-color: #bfbfbf; height: 200px;">
			<div class="row" >
				<div class="col-sm-1"></div>
				<div class="col-sm-10" style="min-width:400px; " >
					<div class="row">
						<div class="col-sm-3" style="height:100%">
						<img alt="" src="${home }/companyimgs/${company.thumbimg}"
						style="width: 100%; height: 100%; max-width:130px; position: relative; max-height:130px; left:15px; top:50px;">
						</div>
						<div class="col-sm-5" style="height:100%">
								<span style="font-size:30px; font-weight:bold; margin:20px;">${company.companyname }</span>
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/companyview/companyNavi.jsp" />
		<div style="background-color: #e6e6e6; padding: 15px;" align="center">
			<div class="row">
				<div class="col-sm-1"></div>
				<div class="col-sm-10">
					<div class="row" style="padding: 15px;">
						<div class="col-sm-9"
							style="background-color: #ffffff; margin-bottom: 15px;"
							align="center">
							<div class="row" style="margin: 15px;">
								<div class="col-sm-6">
									<div class="row">웹사이트</div>
									<div class="row" style="margin-bottom: 15px;">${company.website }</div>
								</div>
								<div class="col-sm-6">
									<div class="row">본사</div>
									<div class="row">${company.address }</div>
								</div>
							</div>
							<div class="row" style="margin: 15px;">
								<div class="col-sm-6">
									<div class="row">사원수</div>
									<div class="row" style="margin-bottom: 15px;">${company.employeenum }명</div>
								</div>
								<div class="col-sm-6">
									<div class="row">설립일</div>
									<div class="row">${company.founddate }</div>
								</div>
							</div>
							<div class="row" style="margin: 15px;">
								<div class="col-sm-6">
									<div class="row">기업형태</div>
									<div class="row" style="margin-bottom: 15px;">${company.type }</div>
								</div>
								<div class="col-sm-6">
									<div class="row">매출액</div>
									<div class="row">${company.sales }원</div>
								</div>
							</div>
							<div class="row" style="margin: 15px;">
								<div class="col-sm-6">
									<div class="row">산업군</div>
									<div class="row" style="margin-bottom: 15px;">${company.industry }</div>
								</div>
								<div class="col-sm-6">
									<div class="row">대표</div>
									<div class="row">${company.ceo }</div>
								</div>
							</div>
							<div class="row" style="margin: 15px;">
								<div>${company.companyinfo }</div>
							</div>
						</div>
						<div class="col-sm-3" align="center">
							<img src="${home }/imgs/AD1.jpg"
								style="width: 100%; min-width: 200px; max-width: 300px;">
						</div>
					</div>
				</div>
				<div class="col-sm-1"></div>
			</div>
		</div>
	</div>
</body>
</html>