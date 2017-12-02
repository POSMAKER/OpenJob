<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<style>
</style>
<div class="container-fluid fixed-top"
	style="padding-left: 0px; padding-right: 0px;">
	<div class="row" style="padding: 0;">
		<div class="col-xl-2  bg-dark d-xl-block"
			style="padding: 10px 10px; margin: 0; display: none;"></div>
		<div class="col-xl-8" style="padding: 0; margin: 0; min-height: 56px;">
			<nav class="navbar navbar-expand-md bg-dark navbar-dark"
				style="padding: 0px 15px; min-height: 56px;">
				<a class="navbar-brand" href="${home }/searchhome"><i
					class="fa fa-home" style="font-size: 30px"></i><span
					class="d-md-none" style="font: 25px bold;">&nbsp;Open Job</span></a>

				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsingNavbar3">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="navbar-collapse collapse" id="collapsingNavbar3">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link ${nav_companytag }"
							style="width: 50px;" href="${home }/company/companyhome">기업</a> <c:if
								test="${nav_companytag !=null }">
								<svg class="d-md-block"
									style="position: relative; bottom: -3px; display: none;"
									height="10" width="50">
							  <polygon points="15,10 25,0 35,10" style="fill:white;" />
							</svg>
							</c:if>
						<li class="nav-item"><a class="nav-link ${nav_posttag }"
							style="width: 50px;" href="${home }/company/posthome">채용</a> <c:if
								test="${nav_posttag !=null }">
								<svg class="d-md-block"
									style="position: relative; bottom: -3px; display: none;"
									height="10" width="50">
							  <polygon points="15,10 25,0 35,10" style="fill:white;" />
							</svg>
							</c:if></li>
					</ul>

					<ul class="navbar-nav ml-auto">
						<c:if test="${USER.companyno != null }">
							<li class="nav-item dropdown "><a
								class="nav-link dropdown-toggle" id="navbardrop"
								data-toggle="dropdown">기업 서비스</a>
								<div class="dropdown-menu">
									<a class="dropdown-item"
										href="${home }/company/${USER.companyno}/info">내 기업 </a> <a
										class="dropdown-item"
										href="${home }/company/${USER.companyno}/post">기업공고 관리</a>
								</div></li>
						</c:if>
						<c:if test="${USER.memberno != null }">
							<li class="nav-item dropdown "><a
								class="nav-link dropdown-toggle" id="navbardrop"
								data-toggle="dropdown">회원 서비스</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="${home }/UserAcount">회원정보 관리
									</a>
									<c:if test="${USER.companyno == null }">
										<a class="dropdown-item" href="#">기업회원 등록</a>
									</c:if>
								</div></li>
						</c:if>
						<c:choose>
							<c:when test="${USER != null }">
								<li class="nav-item"><a class="nav-link"
									href="${home }/MemberLogout">로그아웃</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link ${nav_logintag }"
									style="width:70px;" href="${home }/MemberLogin">로그인</a> <c:if
										test="${nav_logintag !=null }">
										<svg class="d-md-block"
											style="position: relative; bottom: -3px; display: none;"
											height="10" width="50">
							  <polygon points="25,10 35,0 45,10" style="fill:white;"/>
							</svg>
									</c:if></li>
								<li class="nav-item"><a class="nav-link ${nav_signuptag }"
									style="width:80px;" href="${home }/SiginUp">회원가입</a> <c:if
										test="${nav_signuptag !=null }">
										<svg class="d-md-block"
											style="position: relative; bottom: -3px; display: none;"
											height="10" width="50">
							  <polygon points="30,10 40,0 50,10" style="fill:white;" />
							</svg>
									</c:if></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</nav>
		</div>
		<div class="col-xl-2  bg-dark d-xl-block"
			style="padding: 10px 0px; display: none;"></div>
	</div>
</div>