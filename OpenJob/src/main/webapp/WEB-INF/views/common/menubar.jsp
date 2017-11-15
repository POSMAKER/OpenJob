<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
a {
	width: 150px;
}

</style>
<nav class="navbar navbar-expand bg-dark navbar-dark fixed-top">
	<a class="navbar-brand" href="${home }/"><i class="fa fa-home" style="font-size: 30px"></i></a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="${home }/companyhome">기업</a></li>
		<li class="nav-item"><a class="nav-link" href="${home }/searchhome">검색</a></li>
		<li class="nav-item"><a class="nav-link" href="${home }/memberhome">회원</a></li>
		<li class="nav-item dropdown">
      		<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">기업 서비스</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="#">채용공고 등록</a>
				<a class="dropdown-item" href="#">기업회원 가입</a>
				<a class="dropdown-item" href="#">기업사진 관리</a>
			</div>
   		</li>
		<li class="nav-item"><a class="nav-link" href="${home }/">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="${home }/">회원가입</a></li>
		
	</ul>
</nav>