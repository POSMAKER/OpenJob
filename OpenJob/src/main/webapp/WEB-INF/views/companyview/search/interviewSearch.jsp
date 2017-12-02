<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="interviewsearch_div"
	style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
	align="left">
	<!-- 검색: 리뷰의 직종, 리뷰의 전/현 직 상태 -->
	<select name="s_jobcate" id="s_jobcate">
		<option value="null">직종전체</option>
		<c:forEach var="item" items="${s_jobcateLst}">
			<option value="${item.jobcategory }">${item.jobcategory }</option>
		</c:forEach>
	</select>
	 <select name="s_position" id="s_position">
		<option value="null">직급</option>
		<c:forEach var="item" items="${s_positionLst}">
			<option value="${item.position }">${item.position }</option>
		</c:forEach>
	</select> 
		 <select name="s_success" id="s_success">
		<option value="null">합격여부</option>
		<c:forEach var="item" items="${s_successLst}">
		<c:choose>
			<c:when test="${item.successed eq 'Y' }">
			<option value="${item.successed }">합격</option>
			</c:when>
			<c:when test="${item.successed eq 'N' }">
			<option value="${item.successed }">불합격</option>
			</c:when>
			<c:otherwise>
			<option value="${item.successed }">대기중</option>
			</c:otherwise>
		</c:choose>
		</c:forEach>
	</select> 
	<br /> <br /> 총 <span id="interviewcounter" style="color: #ff4d4d; font-size: 16px; font-weight: bold">${fn:length(interviewLst) }</span> 개의 기업 리뷰
</div>
<script>
	$("#interviewsearch_div select").change(function(){
		var jobcategory = $("#s_jobcate option:selected").val();
		var position = $("#s_position option:selected").val();
		var successed = $("#s_success option:selected").val();
		$.ajax({
			url : '${home}/company/frag_showinterviewLst',
			type : 'POST',
			data : {
				"companyno" : ${companyno },
				"jobcategory": jobcategory,
				"position" : position,
				"successed" : successed
			},
			success : function(result) {
				$("#interviewsearchresult_div").html(result);
			}
		});
	});		
</script>