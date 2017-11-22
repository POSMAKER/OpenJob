<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/companyview/Formsub/modaltop.jsp"%>
기업 리뷰 작성
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_1.jsp"%>
<div style="padding: 15px;">
	<span style="font-size: 12px;">작성을 완료하시면 실제 직원들이 입력한 수십만개 기업리뷰를
		무료로 볼 수 있습니다.<br> 입력하신 모든 정보는 익명으로 처리되니 걱정마세요.
	</span> <br> <br>
	<form id="frm" action="${home }/companyhome">
		<c:set var="companybase" />
		<%@include file="/WEB-INF/views/companyview/Formsub/reviewForm_p1.jsp"%>
		<%@include file="/WEB-INF/views/companyview/Formsub/reviewForm_p2.jsp"%>
	</form>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalmid_2.jsp"%>
<div class="col-md-3" style="padding-top: 10px; padding-right: 0px;">
	<%@include file="/WEB-INF/views/companyview/Formsub/policy.jsp"%>
	<%@include file="/WEB-INF/views/companyview/Formsub/reviewForm_sub.jsp"%>
</div>
<%@include file="/WEB-INF/views/companyview/Formsub/modalbot.jsp"%>