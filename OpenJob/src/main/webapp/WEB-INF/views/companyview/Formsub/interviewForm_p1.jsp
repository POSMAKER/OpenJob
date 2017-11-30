<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page 1 -->
<div class="container-fluid" id="p1">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업명</div>
		<div class="col-lg-7">
			<input type="text" id="searchbox" style="width: 90%;">
			<div class="searchresult_div" id="searchresult_div" style="z-index:2; position:absolute; width:85%;max-height:150px; background-color:white; overflow-y:scroll; border:1px black solid; display:none;"></div>
		</div>
	</div>
	<input type="hidden" id="f_companyno" name="companyno"/>
	<input type="hidden" name="memberno" value="${USER.memberno }"/>
	<script>
		function searchclick(data){
			var datasplit = data.split(",");
			$("#searchbox").val(datasplit[1]);
			$("#f_companyno").val(datasplit[0]).trigger('change');
			$("#searchresult_div").hide();
		}
		$("#searchbox").keyup(function(){
			$("#f_companyno").val(null).trigger('change');
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
	<%--직급, 1 select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">직급</div>
		<div class="col-lg-7">
			<select id="position" name="position">
				<option value="">직급</option>
				<option value="사원">사원</option>
				<option value="주임/계장">주임/계장</option>
				<option value="대리">대리</option>
				<option value="과장">과장</option>
				<option value="차장">차장</option>
				<option value="부장">부장</option>
				<option value="이사">이사</option>
				<option value="상무">상무</option>
				<option value="전무">전무</option>
				<option value="부사장">부사장</option>
				<option value="사장">사장</option>
				<option value="기타">기타</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">총 경력</div>
		<div class="col-lg-7">
			<select id="career"
				name="career">
				<option value="">총 경력 (이전 경력 포함)</option>
				<c:forEach var="year" begin="1" end="20" varStatus="status">
					<option value="${year }">${year}년차<c:if test="${status.last }">&nbsp;이상</c:if></option>		
				</c:forEach>
			</select>
		</div>
	</div>
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
</div>