<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
<div class=row id="postDiv" style="padding-bottom: 20px;">
	<div class="col-xl-2"></div>
	<div class="col-xl-8"
		style="background-color: white; padding: 30px; min-width: 1100px;">
		<strong>채용공고</strong>
		<hr>
		<div class=row style="padding-top: 0px;">
			<div align="center">
				<c:choose>
					<c:when test="${postList==null }">
						<h5>${postmsg }</h5>
					</c:when>
					<c:otherwise>
						<div id="resultPost">
							<div class="search_div">

								<c:forEach var="post" items="${postList }">
									<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
										integerOnly="true" var="enddate" />

									<table border="0" style="min-width: 600px;">
										<tr>
											<td style="width: 130px; padding: 1px;" rowspan="3"><a
												href="${home }/company/${post.companyno }/info"><img
													src="${home }/companyimgs/${post.thumbimg }"
													style="padding: 5px; width: 100px; border: 1px solid gray; border-radius: 7px;"></a></td>
											<td colspan="2" style="font-size: 15px; font-weight: bold;"><a href="${home }/company/${post.companyno }/post/${post.postno }">${post.title }
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
											<td>
											<span style="color:gray; font-size: 14px;">${post.location } · ${post.jobcategory } · ${post.subjobcategory } · ${post.type }  ${post.career }</span>
											</td>
										</tr>
									</table>
									<hr>
								</c:forEach>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="col-xl-2"></div>
</div>
