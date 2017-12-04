<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row" id="companyDiv">
	<div class="col-xl-2">div2</div>
	<div class="col-xl-8"
		style="background-color: white; padding: 30px; min-width: 1100px;">
		<strong>기업정보</strong>
		<hr>
		<div class=row style="padding-top: 0px;">
			<div align="center">
				<c:choose>
					<c:when test="${companyList==null }">
						<h5>${companymsg }</h5>
					</c:when>
					<c:otherwise>
						<table border="1" style="min-width: 600px;">
							<c:forEach var="company" items="${companyList }">
								<tr>
									<td rowspan="3" style="padding:15px;"><a href="${home }/company/${company.companyno }/info"><img
											src="${home }/companyimgs/${company.thumbimg }"
											style="width: 100px; height: 100px;"></a></td>
									<td colspan="2" style="font-weight:bold;"><a href="${home }/company/${company.companyno }/info">${company.companyname }</a></td>
								</tr>
								<tr>
									<td>${company.industry }</td>
									<td>${company.address }</td>
								</tr>
								<tr>
									<td colspan="2"><a href="${home }/company/${company.companyno }/review">기업리뷰</a> / <a href="${home }/company/${company.companyno }/post">면접후기</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="col-xl-2">div2</div>
</div>
