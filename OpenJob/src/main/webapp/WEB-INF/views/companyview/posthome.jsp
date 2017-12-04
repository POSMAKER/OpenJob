<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>[오픈잡] 채용 홈</title>
</head>
<%@include file="/WEB-INF/views/common/menubar.jsp"%>
<body>
	<div class="container-fluid" style="margin-top: 56px">
		<%@include file="/WEB-INF/views/searchview/searchBar.jsp"%>
		<div class="row" style="background-color: #e6e6e6;">
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<div
					style="padding: 25px; width: 100%; background-color: #ffffff; margin-bottom: 15px; margin-top: 15px; padding: 0 15px;">
					<hr>
					<c:forEach var="post" items="${postLst }">
					<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
										integerOnly="true" var="enddate" />
						<table border="0" style="min-width: 600px;">
							<tr>
								<td style="width: 130px; padding: 1px;" rowspan="3"><a
									href="${home }/company/${post.companyno }/info"><img
										src="${home }/companyimgs/${post.thumbimg }"
										style="padding: 5px; width: 100px; border: 1px solid gray; border-radius: 7px;"></a></td>
								<td colspan="2" style="font-size: 15px; font-weight: bold;"><a
									href="${home }/company/${post.companyno }/post/${post.postno }">${post.title }
										<c:choose>
											<c:when test="${(enddate-nowdate+1) gt 0 }">
												<div
													style="border: 1px lime solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: lime">
													<span>D-${enddate-nowdate+1}</span>
												</div>
											</c:when>
											<c:when test="${(enddate-nowdate+1) == 0 }">
												<div
													style="border: 1px red solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: red">오늘
													마감</div>
											</c:when>
											<c:otherwise>
												<div
													style="border: 1px gray solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: gray">마감</div>
											</c:otherwise>
										</c:choose>
								</a></td>
							</tr>
							<tr>
								<td colspan="2"><a
									href="${home }/company/${post.companyno }/info">${post.companyname }</a></td>
							</tr>
							<tr>
								<td><span style="color: gray; font-size: 14px;">${post.location }
										· ${post.jobcategory } · ${post.subjobcategory } · ${post.type }
										· ${post.career }</span></td>
							</tr>
						</table>
						<hr>
					</c:forEach>
				</div>

			</div>
			<div class="col-lg-2"></div>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$("#category").change(function() {
		var categoryVal = $("#category").val();
		if (categoryVal == "all") {
			$("#searchWord").attr("placeholder", "기업, 채용공고를 검색해보세요.");
		} else if (categoryVal == "company") {
			$("#searchWord").attr("placeholder", "기업명으로 검색");
		} else if (categoryVal == "post") {
			$("#searchWord").attr("placeholder", "회사명, 희망직무 등으로 검색");
		}
	});
	$("#category option[value='post']").prop("selected", true)
		.trigger('change');
</script>