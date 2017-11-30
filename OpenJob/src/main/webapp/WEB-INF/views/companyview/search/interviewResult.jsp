<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:forEach var="interview" items="${interviewLst}">
	<div
		style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
		align="left">
		<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12"
			style="padding-bottom: 15px; padding-left: 0px;">
			<span style="font-size: 12px;"> ${interview.jobcategory }&nbsp;|
			&nbsp;<fmt:formatDate pattern="yyyy/MM/dd"
					value="${interview.writedate }" />
			</span>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3" style="padding-left: 0px; padding-bottom: 15px;">
			<span style="font-size: 12px;">
				<div>
					면접 난이도<br>${interview.interviewlevel }</div>
				<br>
				<div>
					면접 경로<br>${interview.interviewroot }</div>
			</span>
		</div>
		<div class="col-sm-9">
			<div>"${interview.interviewprocess }"</div>
			<br>
			<div>
				면접 질문<br> ${interview.interviewquestion }
			</div>
			<br>
			<div>
				질문 답변<br> ${interview.interviewanswer }
			</div>
			<br>
			<div>
				면접 결과
				<c:choose>
					<c:when test="${interview.successed eq 'Y'}">
				합격
				</c:when>
					<c:when test="${interview.successed eq 'W'}">
				발표 대기 중
				</c:when>
					<c:when test="${interview.successed eq 'N'}">
				불합격
				</c:when>
				</c:choose>
			</div>
			<br>
			<div>
				<c:choose>
					<c:when test="${interview.experience eq 'P'}">
				긍정적
				</c:when>
					<c:when test="${interview.experience eq 'S'}">
				보통
				</c:when>
					<c:when test="${interview.experience eq 'N'}">
				부정적
				</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</div>
	</div>
</c:forEach>
<script>
	$("#interviewcounter").html('${fn:length(interviewLst) }');
</script>