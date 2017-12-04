<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>

.heading {
	font-size: 16px;
	font-weight: bold;
}
</style>
<c:forEach var="interview" items="${interviewLst}">
	<div
		style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
		align="left">
		<div class="container-fluid">
	<div class="row" style="border-bottom: 1px solid lightgray;">
		<div class="col-lg-12"
			style="padding-bottom: 15px; padding-left: 0px;">
			<span style="font-size: 12px;"> ${interview.jobcategory }&nbsp;|
			&nbsp;<fmt:formatDate pattern="yyyy/MM/dd"
					value="${interview.writedate }" />
			</span>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3" style="padding-left: 0px; padding-bottom: 15px; border-right: 1px solid lightgray;">
				<span
						style="font-size: 13px;">면접 난이도&nbsp;&nbsp;&nbsp;${interview.interviewlevel }</span>
						<div id="tot" class="progress total_bar"
							style="width: 130px; height: 7px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${interview.interviewlevel*10 }" />
							</c:import>
						</div>
				<br><br>
				<span
						style="font-size: 13px;">면접 경로: ${interview.interviewroot }</span>
		</div>
		<div class="col-sm-9">
			<div style="font-weight: bold; font-size: 18px;">"${interview.interviewprocess }"</div>
			<br>
			<div>
				<span class="heading">면접 질문</span><br> ${interview.interviewquestion }
			</div>
			<br>
			<div>
				<span class="heading">질문 답변</span><br> ${interview.interviewanswer }
			</div>
			<br>
			<div>
				<span class="heading">면접 결과</span>:&nbsp;
				<c:choose>
					<c:when test="${interview.successed eq 'Y'}">
				<span style="font-weight: bold; color: orange;">합격</span>
				</c:when>
					<c:when test="${interview.successed eq 'W'}">
				<span style="font-weight: bold; color: gray;">발표 대기 중</span>
				</c:when>
					<c:when test="${interview.successed eq 'N'}">
				<span style="font-weight: bold; color: red;">불합격</span>
				</c:when>
				</c:choose>
			</div>
			<br>
			<div>
			<span class="heading">면접 경험</span>:&nbsp;
				<c:choose>
					<c:when test="${interview.experience eq 'P'}">
				<span class="heading" style="color: blue">긍정적</span>
				</c:when>
					<c:when test="${interview.experience eq 'S'}">
			<span class="heading" style="color: gray">보통</span>
				</c:when>
					<c:when test="${interview.experience eq 'N'}">
				<span class="heading" style="color: red">부정적</span>
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