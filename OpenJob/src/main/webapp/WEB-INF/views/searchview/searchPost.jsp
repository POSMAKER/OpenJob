<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class=row id="postDiv" style="padding-bottom: 20px;">
	<div class="col-sm-2">div2</div>
	<div class="col-sm-7"
		style="background-color: white; padding: 30px; min-width: 700px;">
		<strong>채용공고</strong>
		<hr>
		<div class=row style="padding-top: 0px;">
			<div align="center">
				<c:choose>
					<c:when test="${postList==null }">
						<h5>${postmsg }</h5>
					</c:when>
					<c:otherwise>
						<table border="1" style="min-width: 600px;">
							<c:forEach var="post" items="${postList }">
								<tr>
									<td style="width: 130px; padding: 15px;" rowspan="3"><a
										href="${home }/company/${post.companyno }/info"><img
											src="${home }/companyimgs/${post.thumbimg }"
											style="width: 100px;"></a></td>
									<td colspan="2" style="font-weight: bold;"><a href="#">${post.title }</a></td>
								</tr>
								<tr>
									<td colspan="2"><a
										href="${home }/company/${post.companyno }/info">${post.companyname }</a></td>
								</tr>
								<tr>
									<td>${post.jobcategory }</td>
									<td>${post.subjobcategory }</td>
								</tr>
							</c:forEach>
						</table>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="col-sm-3">div3</div>
</div>