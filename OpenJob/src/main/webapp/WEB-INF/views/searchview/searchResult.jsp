<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
a:link {
	color: black;
	font-family: sans-serif;
	text-decoration: none;
}

a:visited {
	color: black;
	font-family: sans-serif;
	text-decoration: none;
}

a:hover {
	color: #cc3300;
	font-weight: bold;
}

a:active {
	color: #ff00cc;
	text-decoration: underline;
}
</style>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<c:forEach var="post" items="${resultLst }">
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
					· ${post.jobcategory } · ${post.subjobcategory } · ${post.career }</span></td>
		</tr>
	</table>
	<hr>
</c:forEach>