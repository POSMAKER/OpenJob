<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
	
<c:forEach var="post" items="${postLst }" varStatus="status">
	<c:if test="${status.index mod 3 == 0}">
		<div class="row">
	</c:if>
	<div class="col-xl-4" style="padding-bottom: 15; height: 190px;"
		align="left">
		<div
			onclick="location.href='${home}/company/${post.companyno }/post/${post.postno}'"
			style="background-color: #ffffff; width: 100%; height: 100%; padding: 20px; cursor: pointer">
			<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
				integerOnly="true" var="enddate" />
			
				<c:choose>
					<c:when test="${(enddate-nowdate+1) gt 0 }">
					<div style="margin-bottom: 10px; border: 1px lime solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: lime"><span>D-${enddate-nowdate+1}</span></div>
					</c:when>
					<c:when test="${(enddate-nowdate+1) == 0 }">
					<div style="margin-bottom: 10px; border: 1px red solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: red">오늘 마감</div>
					</c:when>
					<c:otherwise>
					<div style="margin-bottom: 10px; border: 1px gray solid; display: inline-block; padding: 0 10px; border-radius: 10px; color: gray">마감</div>
					</c:otherwise>
				</c:choose>
				
			<br> <span
				style="width: 100%; overflow: hidden; display: inline-block; font-size: 17px; font-weight: bold; white-space: nowrap; text-overflow: ellipsis"><a
				style="color: black;"
				href="${home}/company/${post.companyno }/post/${post.postno}">${post.title}</a></span><br>
			<span class="subtitle"
				style="width: 100%; overflow: hidden; display: inline-block; white-space: nowrap; text-overflow: ellipsis">${post.jobcategory },
				${post.subjobcategory }</span><br> <br> <span class="tag">${post.location }</span><span
				class="tag">${post.career }</span>
		</div>
	</div>
	<c:if test="${status.index mod 3 == 2 || status.last}">
		</div>
	</c:if>
</c:forEach>
<script>
	$("#postcounter").html('${fn:length(postLst) }');
</script>
