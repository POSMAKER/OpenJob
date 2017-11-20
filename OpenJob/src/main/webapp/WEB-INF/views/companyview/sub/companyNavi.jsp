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
body { padding-right: 0 !important }
</style>
<c:url var="compurl" value="/company/${company.companyno }" />
<div class="row flex-row-reverse">
	<div class="col-lg-3" style="height: 1px;"></div>
	<div class="col-lg-2" style="padding: 15px;" align="center">
	
		<button type="button" data-toggle="modal"
			data-target="#myModal" data-backdrop="static"
   data-keyboard="false"><c:choose>
				<c:when test="${frmoption eq 'review'}">
					기업 리뷰 작성
				</c:when>
				<c:when test="${frmoption == 'interview'}">
					면접 후기 작성
				</c:when>
				<c:when test="${frmoption == 'post'}">
					채용 공고 등록
				</c:when>
			</c:choose></button>
   
	</div>
	<div class="col-lg-4" style="min-width: 320px; padding-left: 15px;">
		<ul class="mynavi">
			<li class="mynaviitem"><a class="mylink ${infoactive}"
				href="${compurl }/info">Info<br> 기업정보
			</a></li>
			<li class="mynaviitem"><a class="mylink ${reviewactive}"
				href="${compurl}/review">0<br> 기업리뷰
			</a></li>
			<li class="mynaviitem"><a class="mylink ${interviewactive}"
				href="${compurl}/interview">0<br> 면접후기
			</a></li>
			<li class="mynaviitem"><a class="mylink ${postactive}"
				href="${compurl}/post">0<br> 채용공고
			</a></li>
		</ul>
	</div>
	<div class="col-lg-3"></div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog" style="padding-right: 0px;">
	<div class="modal-dialog modal-lg" style="top:45px;">
		<!-- Modal content-->
		<div class="modal-content" style="background-color: transparent; ">
		<div class="row">
			<div class="col-lg-9" style="background-color: white">
			<div class="modal-header" style="height:50px;">
			<h4 class="modal-title"><c:choose>
				<c:when test="${frmoption == 'review'}">
					기업 리뷰 작성
				</c:when>
				<c:when test="${frmoption == 'interview'}">
					면접 후기 작성
				</c:when>
				<c:when test="${frmoption =='post'}">
					채용 공고 등록
				</c:when>
			</c:choose></h4>
			<button type="button" class="close" data-dismiss="modal">&times;</button>	
			</div>
			<div style="padding:15px;">
			<c:choose>
				<c:when test="${frmoption eq 'review'}">
					<%@include file="/WEB-INF/views/companyview/Form/reviewForm.jsp"%>
				</c:when>
				<c:when test="${frmoption eq 'interview'}">
					<%@include file="/WEB-INF/views/companyview/Form/interviewForm.jsp"%>
				</c:when>
				<c:when test="${frmoption eq 'post'}">
					<%@include file="/WEB-INF/views/companyview/Form/postForm.jsp"%>
				</c:when>
			</c:choose>
			</div>
			</div>
			<div class="col-lg-3" style="padding-left:10px;">
				<div style="background-color: white; padding:15px;">
				<span style="font-size:13px;">
				정보 등록 정책<br>
				기업리뷰의 신뢰성을 높이고 고의적 기업 평점 조작을 방지하기 위해, 작성된 모든 정보는 잡플래닛의 자체적인 검토 과정을 거쳐 등록됩니다.<br>
				<br>
				등록이 거부되는 이유<br>
				1. 기업을 이해하는데 도움이 안되거나 항목과 상관없는 내용<br>
				2. 부서, 직급 등 개인을 특정지을 수 있는 정보나 폄훼, 비방성 표현<br>
				3. 욕설, 비속어, 은어 및 공격적인 언어<br>
				4. 기업 비밀에 해당하는 내용<br>
				5. 존재하지 않거나 명확하지 않은 기업명<br>
				</span>
				</div>
			</div>
			</div>
		</div>
	</div>
</div>
