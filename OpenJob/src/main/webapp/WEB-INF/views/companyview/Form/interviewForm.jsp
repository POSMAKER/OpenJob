<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/companyview/Formsub/modaltop.jsp"%>
면접 후기 작성
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_1.jsp"%>
<div style="padding: 15px;">
	<span style="font-size: 12px;">모든 정보는 익명으로 처리됩니다.
	</span> <br> <br>
	<form id="frm" action="${home }/companyhome">
		<c:set var="companybase" />
<%@include file="/WEB-INF/views/companyview/Formsub/interviewForm_p1.jsp" %>
<%@include file="/WEB-INF/views/companyview/Formsub/interviewForm_p2.jsp" %>
	</form>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_2.jsp"%>
<div class="col-md-3" style="padding-top: 10px; padding-right: 0px;">
	<%@include file="/WEB-INF/views/companyview/Formsub/policy_user.jsp"%>
	<%@include file="/WEB-INF/views/companyview/Formsub/interviewForm_sub.jsp"%>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalbot.jsp"%>