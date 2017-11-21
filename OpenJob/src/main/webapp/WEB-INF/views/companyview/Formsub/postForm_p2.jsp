<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container-fluid" id="p2" style="display: none;">
공고 등록 page2
	
	공고 타이틀, 2, text
	공고 시작일, 2, calendar 기술 있음, 수정 시 공고한 날짜보다 앞설 수 없게 만듦
	공고 마감일, 2, calendar, 취소 가능, 기술 있음 공고 시작일보다 앞설 수 없음 (시작일을 정해야 마감일을 정하게 함, 시작일이 변하면 마감일 초기화)
	기업소개, 2, textarea
	주요업무, 2, textarea
	자격요건, 2, textarea
	채용 절차, 2, textarea
	담당자, 자동, 2, text
	담당자 이메일, 자동, 수정가능 2, text
	담당자 번호, 2, text
	
	공고번호, 자동
	작성일, 자동
</div>