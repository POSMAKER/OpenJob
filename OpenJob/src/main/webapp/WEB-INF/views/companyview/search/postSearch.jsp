<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div id="postsearch_div"
	style="width: 100%; background-color: #ffffff; padding: 15px; margin-bottom: 15px;"
	align="left">
	<!-- 검색: 리뷰의 직종, 리뷰의 전/현 직 상태 -->
	<select name="s_jobcate" id="s_jobcate">
		<option value="null">직종 전체</option>
		<c:forEach var="item" items="${s_jobcateLst}">
			<option value="${item.jobcategory }">${item.jobcategory }</option>
		</c:forEach>
	</select> <select name="s_subjobcate" id="s_subjobcate">
	<option value="null">세부 직종 전체</option>
	</select> <select id="s_career" name="s_career">
		<option value="null">경력을 선택해 주세요</option>
		<option value="신입">신입</option>
		<option value="경력">경력</option>
		<option value="null">경력무관</option>
	</select> <select id="s_location" name="s_location">
		<option value="null">근무지역</option>
		<c:forEach var="loc" items="${s_locationLst}">
			<option value="${loc.location}">${loc.location}</option>
		</c:forEach>
	</select> <br /> <br /> 
	<div class="container-fluid">
	<div class="row">
	<div class="col-lg-6" style="padding:0px;">총 <span id="postcounter"
		style="color: #ff4d4d; font-size: 16px; font-weight: bold">0</span>
	개의 기업 공고
	</div>
	<div class="col-lg-6" style="border:1px black solid">1</div>
	</div>
	</div>
</div>
<script>
	$("#s_jobcate").change(function suboption() {
			var jobcategory = $("#s_jobcate option:selected").val();
			$.ajax({
				url : "${home}/company/getPostsubjobcategory",
				type : 'POST',
				async: false,
				data : {
					"companyno" :  ${companyno },
					"jobcategory" : jobcategory
				},
				success : function(result) {
					$("#s_subjobcate").html(result);
				}
			});
		});
	$("#postsearch_div select, checkbox").change(function(){
		var jobcategory = $("#s_jobcate option:selected").val();
		var subjobcategory = $("#s_subjobcate option:selected").val();
		var career = $("#s_career option:selected").val();
		var location = $("#s_location option:selected").val();
		$.ajax({
			url : '${home}/company/frag_showpostLst',
			type : 'POST',
			data : {
				"companyno" : ${companyno },
				"jobcategory" : jobcategory,
				"subjobcategory" : subjobcategory,
				"career" : career,
				"location" : location
			},
			success : function(result) {
				$("#postsearchresult_div").html(result);
			}
		});
	});		
</script>