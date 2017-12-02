<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div
	style="padding: 15px; width: 100%; background-color: #ffffff; margin-bottom: 15px;"
	align="left">
	전체 리뷰 통계
	${stat_interview eq null }<br>
	${stat_interview.interviewlevel }<br>
	${stat_interview.interviewroot  }<br>
	${stat_interview.experience }<br>
	${stat_interview.successed }<br>
</div>