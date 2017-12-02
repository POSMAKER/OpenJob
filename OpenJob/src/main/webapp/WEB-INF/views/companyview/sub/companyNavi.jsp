<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
li.compnav-item a.active {
	border-bottom: 3px green solid;
	margin-bottom: none;
}

li.compnav-item a.nav-link {
	display: block;
	color: black;
	text-align: center;
	font-weight: bold;
	padding: 10px 8px;
	text-decoration: none;
}

li.compnav-item a:hover {
	border-bottom: 3px green solid;
	margin-bottom: none;
}

ul.compnavi {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	min-height: 71px;
}

li.compnav-item {
	float: left;
}
</style>
<title>${company.companyname}<c:choose>
		<c:when test="${infoactive eq 'active'}">[기업정보]</c:when>
		<c:when test="${reviewactive  eq 'active'}">[기업리뷰]</c:when>
		<c:when test="${interviewactive  eq 'active'}">[면접후기]</c:when>
		<c:when test="${postactive  eq 'active'}">[채용공고]</c:when>
	</c:choose>
</title>
<c:url var="compurl" value="/company/${companyno }" />
<div class="container-fluid">
	<div class="row" style="padding: 0;">
		<div class="col-xl-2  bg-light" style="padding: 0; margin: 0;"></div>
		<div class="col-xl-8" style="padding: 0; margin: 0;">
			<nav class="navbar navbar-expand-md bg-light navbar-light"
				style="padding: 0 15;">
				<div class="navbar-collapse collapse" id="collapsingNavbar1">
					<ul class="navbar-nav compnavi">
						<li class="nav-item compnav-item"><a
							class="nav-link ${infoactive}" href="${compurl }/info">Info<br>
								기업정보
						</a></li>
						<li class="nav-item compnav-item"><a
							class="nav-link ${reviewactive}" href="${compurl}/review"><span
								style="color: #ff4d4d; font-weight: bold">${reviewcount }</span><br>
								기업리뷰 </a></li>
						<li class="nav-item compnav-item"><a
							class="nav-link ${interviewactive}" href="${compurl}/interview"><span
								style="color: #ff4d4d; font-weight: bold">${interviewcount }</span><br>
								면접후기 </a></li>
						<li class="nav-item compnav-item"><a
							class="nav-link ${postactive}" href="${compurl}/post"><span
								style="color: #ff4d4d; font-weight: bold">${postcount }</span><br>
								채용공고 </a></li>
					</ul>
				</div>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsingNavbar1">
					<span class="navbar-toggler-icon"></span>
				</button>
				<button id="navi_frmBtn" type="button" data-toggle="modal" data-target="#myModal"
					data-backdrop="static" data-keyboard="false"
					class="btn btn-success"
					style="margin: 15 5px; width: 200px; height: 41px;">
					<c:choose>
						<c:when test="${frmoption eq 'review'}">
							<span style="font-weight: bold; font-size: 18px;">기업 리뷰 작성</span>
						</c:when>
						<c:when test="${frmoption eq 'interview'}">
							<span style="font-weight: bold; font-size: 18px;">면접 후기 작성</span>
						</c:when>
						<c:when test="${frmoption eq 'post'}">
							<span style="font-weight: bold; font-size: 18px;">채용 공고 등록</span>
						</c:when>
					</c:choose>
				</button>
			</nav>

		</div>
		<div class="col-xl-2  bg-light" style="padding: 0;"></div>
	</div>
</div>