<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/companyview/Formsub/modaltop.jsp"%>
채용 공고 등록
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_1.jsp"%>
<div style="padding: 15px;">
	<form id="frm" action="${home }/companyhome">
		<c:set var="companybase" />
<%@include file="/WEB-INF/views/companyview/Formsub/postForm_p1.jsp" %>
<%@include file="/WEB-INF/views/companyview/Formsub/postForm_p2.jsp" %>
	</form>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_2.jsp"%>
<%@include file="/WEB-INF/views/companyview/Formsub/modalbot.jsp"%>    