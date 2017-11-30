<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:forEach var="review" items="${reviewLst}">
	<div
		style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
		align="left">
		<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12" style="padding-bottom:15px;padding-left:0px;">
		<span style="font-size: 12px;">
			${review.jobcategory }&nbsp;|
			&nbsp;<c:choose><c:when test=" ${review.employstatus eq true}">현직원</c:when><c:otherwise>전직원</c:otherwise></c:choose>&nbsp;|
			&nbsp;<fmt:formatDate pattern = "yyyy/MM/dd" 
         value = "${review.writedate }" />
         </span>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3" style="padding-left:0px;padding-bottom:15px;">
		<span style="font-size:12px;">
			<div>${review.totalscore }</div><br>
			<div>승진 기회<br>${review.promotionscore }</div>
			<div>복지 및 급여<br>${review.walfarescore }</div>
			<div>삶의 균형<br>${review.balancescore }</div>
			<div>사내문화<br>${review.atmospherescore }</div>
			<div>경영진<br>${review.executivescore }</div>
		</span>
		</div>
		<div class="col-sm-9">
			<div>"${review.summary }"</div><br>
			<div>
				장점<br>
				${review.positive }
			</div><br>
			<div>
				단점<br>
				${review.negative }
			</div><br>
			<div>
				경영진에게 바라는 점<br>
				${review.wishlist }
			</div><br>
			<div>이 기업은 1년 후 
			<c:choose>
				<c:when test="${review.futurescore eq 'U'}">
				성장하고 있을
				</c:when>
				<c:when test="${review.futurescore eq 'S'}">
				비슷할
				</c:when>
				<c:when test="${review.futurescore eq 'D'}">
				하락하고 있을
				</c:when>
			</c:choose> 것이다.
			</div><br>
			<div>
				이 기업을 
				<c:choose>
				<c:when test="${review.recommandscore eq 'Y'}">
				추천 합니다!
				</c:when>
				<c:when test="${review.recommandscore eq 'N'}">
				추천하지 않습니다.
				</c:when>
			</c:choose>
			</div>
		</div>
	</div>
</div>
	</div>
</c:forEach>
<script>
	$("#reviewcounter").html('${fn:length(reviewLst) }');
</script>