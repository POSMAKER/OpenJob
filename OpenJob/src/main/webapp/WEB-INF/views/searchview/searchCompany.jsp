<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row" id="companyDiv">
	<div class="col-xl-2"></div>
	<div class="col-xl-8"
		style="background-color: white; padding: 30px; min-width: 1100px;">
		<h5><strong>기업정보</strong></h5>
		<hr>
		<div class=row style="padding-top: 0px;">
			<div style="padding: 15px;" align="center">
				<c:choose>
					<c:when test="${companyList==null }">
						<h5>${companymsg }</h5>
					</c:when>
					<c:otherwise>
						<c:forEach var="company" items="${companyList }">
							<table border="0" style="min-width: 600px;">
								<tr>
									<td style="width: 130px; padding: 1px;" rowspan="3"
										style="padding:5px;"><a
										href="${home }/company/${company.companyno }/info"><img
											src="${home }/companyimgs/${company.thumbimg }"
											style="padding: 5px; width: 100px; border: 1px solid gray; border-radius: 7px;""></a></td>
									<td colspan="2" style="font-weight: bold;"><a
										href="${home }/company/${company.companyno }/info">${company.companyname }</a></td>
								</tr>
								<tr>
									<td>${company.industry }</td>
									<td>${company.address }</td>
								</tr>
								<tr>
									<td colspan="2"><a
										href="${home }/company/${company.companyno }/review"><span
											style="color: gray; font-size: 14px;">기업리뷰</span></a> / <a
										href="${home }/company/${company.companyno }/post"><span
											style="color: gray; font-size: 14px;">면접후기</span></a></td>
								</tr>
							</table>
							<hr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="col-xl-2"></div>
</div>
