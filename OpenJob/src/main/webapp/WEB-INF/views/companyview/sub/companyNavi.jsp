<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
ul.mynavi {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #fff;
	min-height: 71px;
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

html, body {
	overflow-x: hidden;
}

body {
	padding-right: 0 !important
}
</style>
<title>${company.companyname}
<c:choose>
<c:when test="${infoactive eq 'active'}">[기업정보]</c:when>
<c:when test="${reviewactive  eq 'active'}">[기업리뷰]</c:when>
<c:when test="${interviewactive  eq 'active'}">[면접후기]</c:when>
<c:when test="${postactive  eq 'active'}">[채용공고]</c:when>
</c:choose>
</title>
<c:url var="compurl" value="/company/${companyno }" />
<div class="row flex-row-reverse">
	<div class="col-lg-2" style="height: 0px;"></div>
	<div class="col-lg-2" style="padding: 15px;" align="center">
		<button type="button" data-toggle="modal" data-target="#myModal"
			data-backdrop="static" data-keyboard="false" class="btn btn-success" style="width:200px; height:41px;">
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

	</div>
	<div class="col-lg-6" style="min-width: 350px; padding-left: 15px;">
		<ul class="mynavi">
			<li class="mynaviitem"><a class="mylink ${infoactive}"
				href="${compurl }/info">Info<br> 기업정보
			</a></li>
			<li class="mynaviitem"><a class="mylink ${reviewactive}"
				href="${compurl}/review"><span
							style="color: #ff4d4d;font-weight: bold">${reviewcount }</span><br> 기업리뷰
			</a></li>
			<li class="mynaviitem"><a class="mylink ${interviewactive}"
				href="${compurl}/interview"><span
							style="color: #ff4d4d;font-weight: bold">${interviewcount }</span><br> 면접후기
			</a></li>
			<li class="mynaviitem"><a class="mylink ${postactive}"
				href="${compurl}/post"><span
							style="color: #ff4d4d;font-weight: bold">${postcount }</span><br> 채용공고
			</a></li>
		</ul>
	</div>
	<div class="col-sm-2" style="height: 0px;"></div>
</div>








