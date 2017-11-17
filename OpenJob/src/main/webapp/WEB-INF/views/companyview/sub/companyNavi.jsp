<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
ul.mynavi {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #fff;
    min-height:71px;
}

li.mynaviitem {
    float: left;
}

li.mynaviitem a.mylink {
    display: block;
    color: black;
    text-align: center;
    font-weight: bold;
    padding: 10px 8px;
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
html, body { overflow-x: hidden; }
</style>
<c:url var="compurl" value="/company/${company.companyno }"/>
	<div class="row flex-row-reverse" >
		<div class="col-md-3" style="height:1px;"></div>
		<div class="col-md-2" style="padding:15px;" align="center">
			<button type="button">기업 리뷰 작성</button>
		</div>
		<div class="col-md-4" style="min-width: 320px; padding-left:15px;">
			<ul class="mynavi">
				<li class="mynaviitem"><a class="mylink ${infoactive}" href="${compurl }/info">Info<br> 기업정보</a></li>
				<li class="mynaviitem"><a class="mylink ${reviewactive}" href="${compurl}/review">0<br> 기업리뷰</a></li>
				<li class="mynaviitem"><a class="mylink ${interviewactive}" href="${compurl}/interview">0<br> 면접후기</a></li>
				<li class="mynaviitem"><a class="mylink ${postactive}" href="${compurl}/post">0<br> 채용공고</a></li>
			</ul>
		</div>
		<div class="col-sm-3"></div>
	</div>

