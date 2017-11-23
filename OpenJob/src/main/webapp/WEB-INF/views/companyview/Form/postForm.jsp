<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/companyview/Formsub/modaltop.jsp"%>
채용 공고 등록
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_1.jsp"%>
<div style="padding: 15px;">
	<form id="frm" action="${home }/company/postProc" method="post">
		<c:set var="companybase" />
<%@include file="/WEB-INF/views/companyview/Formsub/postForm_p1.jsp" %>
<%@include file="/WEB-INF/views/companyview/Formsub/postForm_p2.jsp" %>
	</form>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_2.jsp"%>
<div class="col-md-3" style="padding-top: 10px; padding-right: 0px;">
	<%@include file="/WEB-INF/views/companyview/Formsub/policy_company.jsp"%>
	</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalbot.jsp"%>    