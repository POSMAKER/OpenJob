<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
	integerOnly="true" var="enddate" />
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-2"></div>
		<div class="col-lg-6" style="min-width: 350px; padding: 10px;">
			<div style="padding-left: 15px;">
				<span style="margin-bottom: 10px;font-weight: bold">
									<c:choose>
					<c:when test="${(enddate-nowdate) gt 0 }">
					<div style="margin-bottom: 10px; border: 1px lime solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: lime"><span>D-${enddate-nowdate}</span></div>
					</c:when>
					<c:when test="${(enddate-nowdate) eq 0 }">
					<div style="margin-bottom: 10px; border: 1px red solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: red">오늘 마감</div>
					</c:when>
					<c:otherwise>
					<div style="margin-bottom: 10px; border: 1px gray solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: gray">마감</div>
					</c:otherwise>
				</c:choose> </span> <span
					style="color: gray; font-size: 13px; font-weight: bold;"><fmt:formatDate
						pattern="yyyy/MM/dd" value="${post.startdate }" /> ~ <fmt:formatDate
						pattern="yyyy/MM/dd" value="${post.enddate }" /></span> <span
					style="font-size: 13px; font-weight: bold;">[ <fmt:formatDate
						pattern="yyyy/MM/dd" value="${post.writedate }" /> 등록 ]
				</span><br> <span style="font-size: 24px; font-weight: bold">${post.title }</span><br>
			</div>
		</div>
		<div class="col-lg-2"></div>
	</div>
</div>