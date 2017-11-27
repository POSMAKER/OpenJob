<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid" id="p2" style="display: none;">
	<script>
		$("#companyno").change(function() {
			if ($("#companyno").val != "" && $("#companyno").val != null) {
				$.ajax({
					type : 'post',
					url : '${home}/company/getcompbasebody',
					data : {
						companyno : $("#companyno").val()
					},
					success : function(result) {
						$("#companyinfo_div").html(result);
					}
				});
			} else {
				$("#companyinfo_div").html("");
			}
		});
	</script>
	<div id="companyinfo_div"></div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">면접경험</div>
		<div class="col-lg-9">
			<input type="radio" id="exp1" name="experience" value="P"><label
				for="exp1">긍정적</label> &nbsp;&nbsp;&nbsp; <input type="radio"
				id="exp2" name="experience" value="S"><label for="exp2">보통
			</label>&nbsp;&nbsp;&nbsp; <input type="radio" id="exp3" name="experience"
				value="N"><label for="exp3">부정적</label>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">면접에서 채용까지의 과정 요약</div>
		<div class="col-lg-9">
			<textarea id="interviewprocess" name="interviewprocess"
				style="width: 100%; height: 100px; resize: none;"
				placeholder="최대한 자세하게 작성해 주세요. 최초 연락부터 인터뷰 횟수, 분위기, 면접관의 특징, 면접 팁 등"></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">면접질문 입력하기</div>
		<div class="col-lg-9">
			<textarea id="interviewquestion" name="interviewquestion"
				style="width: 100%; height: 100px; resize: none;"
				placeholder="조별 주제, 개별 과제, 대면 질문 등 가장 어려웠던 질문을 정확하고 구체적으로 작성해 주세요."></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">작성한 면접질문에 대한 답변을 입력하세요.</div>
		<div class="col-lg-9">
			<textarea id="interviewanswer" name="interviewanswer"
				style="width: 100%; height: 100px; resize: none;"
				placeholder="작성한 면접질문에 대한 답변을 입력하세요."></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">면접난이도</div>
		<div class="col-lg-9">
			<select id="interviewlevel" name="interviewlevel">
				<option value="" disabled selected>선택해 주세요</option>
				<option value="1">쉬움</option>
				<option value="3">보통</option>
				<option value="5">어려움</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">이 기업에 합격하셨나요?</div>
		<div class="col-lg-9">
			<select id="successed" name="successed">
				<option value="" disabled selected>선택해 주세요</option>
				<option value="Y">합격</option>
				<option value="N">불합격</option>
				<option value="P">대기중</option>
			</select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">연봉협상 절차에 대해 알려주세요. (선택사항)</div>
		<div class="col-lg-9">
			<textarea id="salaryprocess" name="salaryprocess"
				style="width: 100%; height: 100px; resize: none;"
				placeholder="협상을 통해서 무엇을 얻으셨나요? 협상에 대한 조언을 해주세요."></textarea>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">면접 경로</div>
		<div class="col-lg-9">
			<select id="interviewroot" name="interviewroot">
				<option value="" disabled selected>선택해 주세요</option>
				<option value="Y">온라인지원</option>
				<option value="N">직원추천</option>
				<option value="P">공개채용</option>
				<option value="P">해드헌터</option>
				<option value="P">학교 취업지원 센터</option>
				<option value="P">기타</option> 
			</select>
		</div>
	</div>