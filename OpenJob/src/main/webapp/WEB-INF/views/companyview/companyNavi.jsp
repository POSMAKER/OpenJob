<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
ul.mynavi {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #fff;
    height:71px;
}

li.mynaviitem {
    float: left;
    margin-bottom:20px;
}

li.mynaviitem a.mylink {
    display: block;
    color: black;
    text-align: center;
    font-weight: bold;
    padding: 10px 15px;
    text-decoration: none;
}

li.mynaviitem a:hover {
    border-bottom: 3px green solid;
    margin-bottom: none;
}

li.mynaviitem a.active {
    border-bottom: 3px green solid;
    margin-bottom: none;
}
</style>
	<div class="row">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<ul class="mynavi">
				<li class="mynaviitem"><a class="mylink ${infoactive}" href="#">Info<br>기업정보</a></li>
				<li class="mynaviitem"><a class="mylink ${reviewactive}" href="#">0<br>기업리뷰</a></li>
				<li class="mynaviitem"><a class="mylink ${interviewactive}" href="#">0<br>면접후기</a></li>
				<li class="mynaviitem"><a class="mylink ${postactive}" href="#">0<br>채용공고</a></li>
			</ul>
		</div>
		<div class="col-sm-1"></div>
	</div>

