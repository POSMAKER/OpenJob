<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<script>
function savepost(mode){
	if('${USER.memberno == null}'){
		alert("로그인 후 이용 가능합니다.");
		return;
	}
	if(mode){
		$.ajax({
		type:'post',
		url:'${home}/company/savePost',
		data:{
			'memberno': '${USER.memberno}',
			'postno': '${post.postno}',
			'usersaved': mode
		},
		success: function(result){
			$("#savebtn_div").html(result);
		}
		});
	}
}
</script>
<body>
	<div class="container-fluid" style="margin-top: 55px; padding: 0px;">
		<!-- CompanyTitle -->
		<c:import url="/company/frag_companytitle">
			<c:param name="memberno" value="${USER.memberno }" />
		</c:import>
		<!-- Company Navbar or PostTitle -->
		<c:choose>
			<c:when test="${post!=null }">
			<%@include file="/WEB-INF/views/companyview/sub/posttitle.jsp" %>
			</c:when>
			<c:otherwise>
				<c:import url="/company/frag_companynavi">
					<c:param name="companyno_now" value="${companyno }" />
				</c:import>
				<c:choose>
					<c:when test="${USER.memberno !=null}">
						<c:choose>
							<c:when test="${frmoption eq 'post' and USER.companyno != companyno }">
								<script>
								$("#navi_frmBtn").click(function(){
								alert("해당 기업 담당자만 사용 가능합니다.");
								});
								</script>
							</c:when>
							<c:otherwise>
								<!-- Modal Form -->
								<c:import url="/company/${frmoption}Form" />
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<script>
							$("#navi_frmBtn").click(function(){
								alert("로그인 후 사용 가능합니다.");
							});
						</script>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
		</div>