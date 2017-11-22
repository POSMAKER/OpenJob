<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- page 1 -->
<div class="container-fluid" id="p1">
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">기업명</div>
		<div class="col-lg-7">
			<input type="text" style="width: 90%;">
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">현 직장/전 직장</div>
		<div class="col-lg-7">
			<select id="employed_status" name="employed_status"><option
					value="">현 직장/전 직장</option>
				<option value="true">현 직장</option>
				<option value="2017">전 직장 - 2017년 퇴사</option>
				<option value="2016">전 직장 - 2016년 퇴사</option>
				<option value="2015">전 직장 - 2015년 퇴사</option>
				<option value="2014">전 직장 - 2014년 퇴사</option>
				<option value="2013">전 직장 - 2013년 퇴사</option>
				<option value="2012">전 직장 - 2012년 퇴사</option>
				<option value="2011">전 직장 - 2011년 퇴사</option>
				<option value="2010">전 직장 - 2010년 퇴사</option>
				<option value="2009">전 직장 - 2009년 퇴사</option>
				<option value="2008">전 직장 - 2008년 퇴사</option>
				<option value="2007">전 직장 - 2007년 퇴사</option></select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">직종</div>
		<div class="col-lg-7">
			<select id="review_occupation_id" name="review[occupation_id]"><option
					value="">직종</option>
				<option value="IT/인터넷">IT/인터넷</option>
				<option value="경영/기획/컨설팅">경영/기획/컨설팅</option>
				<option value="교육">교육</option>
				<option value="금융/재무">금융/재무</option>
				<option value="디자인">디자인</option>
				<option value="10200">마케팅/시장조사</option>
				<option value="10500">미디어/홍보</option>
				<option value="10700">법률/법무</option>
				<option value="11100">생산/제조</option>
				<option value="11200">생산관리/품질관리</option>
				<option value="10400">서비스/고객지원</option>
				<option value="11300">엔지니어링</option>
				<option value="11400">연구개발</option>
				<option value="10300">영업/제휴</option>
				<option value="11500">유통/무역</option>
				<option value="11000">의약</option>
				<option value="10800">인사/총무</option>
				<option value="11800">전문직</option>
				<option value="11900">특수계층/공공</option></select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">고용 형태</div>
		<div class="col-lg-7">
			<select id="review_job_type_id" name="review[job_type_id]"><option
					value="">고용형태</option>
				<option value="1">인턴직</option>
				<option value="2">아르바이트</option>
				<option value="3">정규직</option>
				<option value="4">계약직</option>
				<option value="5">프리렌서</option>
				<option value="10">기타</option></select>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">총 경력</div>
		<div class="col-lg-7">
			<select id="review_years_of_experience"
				name="review[years_of_experience]"><option value="">총 경력 (이전 경력 포함)</option>
				<option value="1">1년차</option>
				<option selected="selected" value="2">2년차</option>
				<option value="3">3년차</option>
				<option value="4">4년차</option>
				<option value="5">5년차</option>
				<option value="6">6년차</option>
				<option value="7">7년차</option>
				<option value="8">8년차</option>
				<option value="9">9년차</option>
				<option value="10">10년차</option>
				<option value="11">11년차</option>
				<option value="12">12년차</option>
				<option value="13">13년차</option>
				<option value="14">14년차</option>
				<option value="15">15년차</option>
				<option value="16">16년차</option>
				<option value="17">17년차</option>
				<option value="18">18년차</option>
				<option value="19">19년차</option>
				<option value="20">20년차 이상</option>
			</select><br> <span style="font-size: 8px;">※ 경력 정보는 노출되지 않습니다.
				(현재, 또는 퇴직 당시의 경력 정보를 입력해주세요.)</span>
		</div>
	</div>
	<div class="row" style="padding: 15px;">
		<div class="col-lg-3">근무 지역</div>
		<div class="col-lg-7">
			<select id="city_select_tag" name="review[city_id]"><option
					value="">근무지역</option>
				<option value="서울">서울</option>
				<option value="경기">경기</option>
				<option value="인천">인천</option>
				<option value="부산">부산</option>
				<option value="대구">대구</option>
				<option value="대전">대전</option>
				<option value="광주">광주</option>
				<option value="울산">울산</option>
				<option value="세종">세종</option>
				<option value="강원">강원</option>
				<option value="경남">경남</option>
				<option value="경북">경북</option>
				<option value="전남">전남</option>
				<option value="전북">전북</option>
				<option value="충남">충남</option>
				<option value="충북">충북</option>
				<option value="제주">제주</option>
			</select>
		</div>
	</div>
</div>
