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
<div class="container-fluid fixed-top">
<div class="row" style="padding:0;">
<div class="col-xl-2  bg-dark"  style="padding:0; margin:0;"></div>
<div class="col-xl-8"  style="padding:0; margin:0;">
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<a class="navbar-brand" href="${home }/"><i class="fa fa-home"
		style="font-size: 30px"></i><span class="d-lg"
		style="font: 25px bold;">&nbsp;Open Job</span></a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#collapsingNavbar3">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse" id="collapsingNavbar3">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${home }/companyhome">기업</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${home }/searchhome">검색</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${home }/memberhome">회원</a></li>
		</ul>

		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown "><a
				class="nav-link dropdown-toggle" id="navbardrop"
				data-toggle="dropdown">기업 서비스</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">채용공고 등록</a> <a
						class="dropdown-item" href="#">기업회원 가입</a> <a
						class="dropdown-item" href="#">기업사진 관리</a>
				</div></li>
			<c:choose>
				<c:when test="${USER != null }">
				<li class="nav-item"><a class="nav-link" href="${home }/MemberLogout">로그아웃</a></li>
				</c:when>
				<c:otherwise>
				<li class="nav-item"><a class="nav-link" href="${home }/MemberLogin">로그인</a></li>
				</c:otherwise>
			</c:choose>
			<li class="nav-item"><a class="nav-link" href="${home }/">회원가입</a></li>
		</ul>
	</div>
</nav>
</div>
<div class="col-xl-2  bg-dark"  style="padding:0;"></div>
</div>
</div>