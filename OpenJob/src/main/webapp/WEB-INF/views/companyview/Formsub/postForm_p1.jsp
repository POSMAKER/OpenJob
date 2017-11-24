<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- USER 세션이 존재하고, MyCompany 세션이 존재할 때. "사용자 회사"의 공고 작성 가능 --%>
<%-- USER 세션이 존재하고, MyCompany 세션이 존재하고, 공고 번호가 존재하면. "사용자 회사"의 공고 수정 가능 --%>
<!-- page 1 -->
<div class="container-fluid" id="p1">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업명</div>
		<div class="col-lg-7">
			<input type="text" style="width: 90%;" readonly="readonly" value="${USER.companyname }"/>
		</div>
	</div>
	<%--기업번호, 자동, 기업 이름으로 1, hidden, 수정불가--%>
	<input type="hidden" name="companyno" value="${USER.companyno }" />
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


	<%--최종 학력, 1, select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">최종 학력</div>
		<div class="col-lg-7">
			<select id="educationrecord" name="educationrecord">
				<option value="">최종 학력</option>
				<option value="고등학교 이하">고등학교 이하</option>
				<option value="대학교 4년">대학교 4년</option>
				<option value="대학교 2,3년">대학교 2,3년</option>
				<option value="대학원 석사">대학원 석사</option>
				<option value="대학원 박사">대학원 박사</option>
				<option value="기타">기타</option>
			</select>
		</div>
	</div>
	<%--급여, 1, text --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">급여</div>
		<div class="col-lg-7">
			<input type="text" id="salary" name="salary" style="width: 30%;">
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
	<%--직책, 1 text --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">직책</div>
		<div class="col-lg-7">
			<input type="text" id="duty" name="duty" style="width: 30%;">
		</div>
	</div>

	<%--경력, 1 select --%>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">경력여부</div>
		<div class="col-lg-7">
			<select id="career" name="career">
			<option value="">경력을 선택해 주세요</option>
				<option value="신입">신입</option>
				<option value="경력">경력</option>
				<option value="경력무관">경력무관</option>
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