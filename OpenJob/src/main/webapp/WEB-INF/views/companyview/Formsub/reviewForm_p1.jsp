<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
div.searchresult_div div:hover {
	background-color: #d9d9d9;
}
</style>

<!-- page 1 -->
<div class="container-fluid" id="p1">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업명</div>
		<div class="col-lg-7">
			<input type="text" id="searchbox" style="width: 90%;">
			<div class="searchresult_div" id="searchresult_div" style="z-index:2; position:absolute; width:85%;max-height:150px; background-color:white; overflow-y:scroll; border:1px black solid; display:none;"></div>
		</div>
	</div>
	<input type="hidden" id="companyno" name="companyno"/>
	<input type="text" name="memberno" value="${USER.memberno }"/>
	<script>
		function searchclick(data){
			var datasplit = data.split(",");
			$("#searchbox").val(datasplit[1]);
			$("#companyno").val(datasplit[0]).trigger('change');
			$("#searchresult_div").hide();
		}
		$("#searchbox").keyup(function(){
			$("#companyno").val(null).trigger('change');
			var keyword = $("#searchbox").val();
			$.ajax({
				type: 'post',
				url: '${home}/quick_companysearch',
				data:{searchword:keyword, onclickfunction_name:'searchclick'},
				success:function(result){
					$("#searchresult_div").show();
					$("#searchresult_div").html(result);
				}
			});
		});
	</script>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">현 직장/전 직장</div>
		<div class="col-lg-7">
			<c:set var="yearnow" value="${timenow.year+1900 }"/> 
			<select id="employstatus" name="employstatus">
			<option value="">현 직장/전 직장</option>
				<option value="true">현 직장</option>
				<c:forEach var="minusyear" begin="0" end="9">
				<option value="${yearnow-minusyear }">전 직장 - ${yearnow-minusyear }년 퇴사</option>
				</c:forEach>
			</select>
		</div>
	</div>
	<%-- 직종, 1, select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">직종</div>
		<div class="col-lg-7">
			<select id="jobcategory" name="jobcategory" onchange="suboption()">
				<option value="">직종</option>
				<c:forEach var="jc" items="${jobcategoryLst}">
					<c:if test="${jc.subjobcategory==null}">
						<option value="${jc.jobcategory }" label="${jc.jobcategoryno }">${jc.jobcategory }</option>
					</c:if>
				</c:forEach>
			</select>
		</div>
	</div>
	<%--직종 상세, 1, select (dynamic) 파일 있음, 기술 있음 --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">직종 상세</div>
		<div class="col-lg-7">
			<select id="subjobcategory" name="subjobcategory">
			</select>
		</div>
	</div>
	<script>
		$("#jobcategory").change(function suboption() {
			var jobcategoryno = $("#jobcategory option:selected").attr("label");
			$.ajax({
				url : "${home}/company/jobsubcategory",
				type : 'POST',
				data : {
					"jobcategoryno" : jobcategoryno
				},
				success : function(result) {
					$("#subjobcategory").html(result);
				}
			});
		});
	</script>
	<%--고용 형태, 1, select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">고용 형태</div>
		<div class="col-lg-7">
			<select id="employtype" name="employtype">
				<option value="">고용형태</option>
				<c:forEach var="em" items="${employtypeLst }">
					<option value="${em.employtype }">${em.employtype }</option>
				</c:forEach>
			</select>
		</div>
	</div>
		<%--근무 지역, 1, select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">근무 지역</div>
		<div class="col-lg-7">
			<select id="location" name="location">
				<option value="" selected>근무지역</option>
				<c:forEach var="loc" items="${locLst }">
					<option value="${loc.location }">${loc.location }</option>
				</c:forEach>
			</select>
		</div>
	</div>
</div>
