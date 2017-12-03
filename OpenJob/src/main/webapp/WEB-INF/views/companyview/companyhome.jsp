<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[오픈잡] 기업 홈</title>
<style>
div.mainbar {
	width: 19%;
	background-color: green;
}

div.seperator {
	width: 1%;
	background-color: white;
}
</style>

</head>
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<body>
	<div class="container-fluid" style="margin-top: 56px">
		<%@include file="/WEB-INF/views/searchview/searchBar.jsp"%>
		<div class="row" style="background-color: #e6e6e6;">
			<div class="col-lg-2"></div>
			<div class="col-lg-8" style="padding: 15px; width: 100%; background-color: #ffffff; margin-bottom: 15px; margin-top:15px;">
				<div class="row">
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">총 만족도</span><br>
						<c:forEach var="item" items="${rank_totalScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">승진 기회</span><br>
						<c:forEach var="item" items="${rank_promotionScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">복지 및 급여</span><br>
						<c:forEach var="item" items="${rank_walfareScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">업무와 삶의 균형</span><br>
						<c:forEach var="item" items="${rank_balanceScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">사내문화</span><br>
						<c:forEach var="item" items="${rank_atmosphereScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
					<div class="col-xl-4" align="left" style="padding-left:55px; margin-bottom: 15px;">
					<span style="font-size: 18px; font-weight: bold;">경영진</span><br>
						<c:forEach var="item" items="${rank_executiveScore}">
						<a href="${home }/company/${item.companyno}/info">${item.companyname }</a>&nbsp;&nbsp;&nbsp;${item.address/10 }<br>
							<div id="tot" class="progress total_bar"
								style="width: 200px; height: 7px;">
								<c:import url="/company/frag_bar">
									<c:param name="bar_value" value="${item.address }" />
								</c:import>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$("#category").change(function() {
		var categoryVal = $("#category").val();
		if (categoryVal == "all") {
			$("#searchWord").attr("placeholder", "기업, 채용공고를 검색해보세요.");
		} else if (categoryVal == "company") {
			$("#searchWord").attr("placeholder", "기업명으로 검색");
		} else if (categoryVal == "post") {
			$("#searchWord").attr("placeholder", "회사명, 희망직무 등으로 검색");
		}
	});
	$("#category option[value='company']").prop("selected", true).trigger(
			'change');
</script>