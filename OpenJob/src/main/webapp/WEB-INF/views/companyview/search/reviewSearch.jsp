<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="reviewserch_div"
	style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
	align="left">
	<!-- 검색: 리뷰의 직종, 리뷰의 전/현 직 상태 -->
	<select name="s_jobcate" id="s_jobcate">
		<option value="null">직종전체</option>
		<c:forEach var="item" items="${s_jobcateLst}">
			<option value="${item.jobcategory }">${item.jobcategory }</option>
		</c:forEach>
	</select> <select name="s_status" id="s_status">
		<option value="null">재직상태</option>
		<c:forEach var="item" items="${s_statusLst}">
		<c:choose>
			<c:when test="${item.employstatus=='true' }">
				<option value="true">현직장</option>
			</c:when>
			<c:otherwise>
				<option value="false">전직장</option>
			</c:otherwise>
		</c:choose>
		</c:forEach>
	</select> <br /> <br /> 총 <span id="reviewcounter" style="color: #ff4d4d; font-size: 16px; font-weight: bold">${fn:length(reviewLst) }</span> 개의 기업 리뷰
</div>
<script>
	$("#reviewserch_div select").change(function(){
		var jobcategory = $("#s_jobcate option:selected").val();
		var employstatus = $("#s_status option:selected").val();
		$.ajax({
			url : '${home}/company/frag_showreviewLst',
			type : 'POST',
			data : {
				"companyno" : ${companyno },
				"jobcategory" : jobcategory,
				"employstatus" : employstatus
			},
			success : function(result) {
				$("#reviewsearchresult_div").html(result);
			}
		});
	});		
</script>