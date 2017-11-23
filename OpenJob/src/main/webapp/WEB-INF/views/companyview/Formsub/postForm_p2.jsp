<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid" id="p2" style="display: none;">
<%--공고 등록 page2 --%>
	
	<%--공고 타이틀, 2, text --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">공고 제목</div>
		<div class="col-lg-7">
			<input type="text" id="title" name="title" style="width: 90%;"/>
		</div>
	</div>
	<%--공고 시작일, 2, calendar 기술 있음, 수정 시 공고한 날짜보다 앞설 수 없게 만듦 --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">공고 시작일</div>
		<div class="col-lg-7">
			<input type="date" id="startdate" name="startdate"/>
		</div>
	</div>
	<%--공고 마감일, 2, calendar, 취소 가능, 
	기술 있음 공고 시작일보다 앞설 수 없음 
	(시작일을 정해야 마감일을 정하게 함, 시작일이 변하면 마감일 초기화) --%>
			<div class="row" style="padding: 15px;">
		<div class="col-lg-3">공고 마감일</div>
		<div class="col-lg-7">
			<input type="date" id="enddate" name="enddate"/>
		</div>
	</div>
	<%--기업소개, 2, textarea --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업 소개</div>
		<div class="col-lg-9">
			<textarea id="companyintro" name="companyintro" style="width: 100%; height: 100px; resize: none;"
				placeholder="기업에 대한 이야기를 들려주세요."></textarea>
		</div>
	</div>
	<%--주요업무, 2, textarea --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">주요 업무</div>
		<div class="col-lg-9">
			<textarea id="mainduty" name="mainduty" style="width: 100%; height: 100px; resize: none;"
				placeholder="지원자가 하게 될 업무가 무엇인지 상세하게 기술해 주세요."></textarea>
		</div>
	</div>
	<%--자격요건, 2, textarea --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">자격 요건</div>
		<div class="col-lg-9">
			<textarea id="requirement" name="requirement" style="width: 100%; height: 100px; resize: none;"
				placeholder="지원자가 가져야 할 자격들을 작성해 주세요."></textarea>
		</div>
	</div>
	<%-- 채용 절차, 2, textarea--%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">채용 절차</div>
		<div class="col-lg-9">
			<textarea id="process" name="process" style="width: 100%; height: 100px; resize: none;"
				placeholder="채용이 진행되는 과정을 알려주세요."></textarea>
		</div>
	</div>
	<%-- 담당자, 자동, 2, text--%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">담당자</div>
		<div class="col-lg-7">
			<input type="text" id="personcharged" name="personcharged" style="width: 30%;"/>
		</div>
	</div>
	<%-- 담당자 이메일, 자동, 수정가능 2, text--%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">담당자 이메일</div>
		<div class="col-lg-7">
			<input type="text" id="emailcharged" name="emailcharged" style="width: 90%;" value="${USER.memberemail }" readonly/>
		</div>
	</div>
	<%--담당자 번호, 2, text --%>
		<div class="row" style="padding: 15px;">
		<div class="col-lg-3">담당자 번호</div>
		<div class="col-lg-7">
			<input type="text" id="phonecharged" name="phonecharged" style="width: 90%;"/>
		</div>
	</div>
	<%--공고번호, 자동
	작성일, 자동 --%>	
</div>