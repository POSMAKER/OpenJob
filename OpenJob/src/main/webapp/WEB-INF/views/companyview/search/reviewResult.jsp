<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
div.mainbar {
	width: 19%;
	background-color: green;
}

div.seperator {
	width: 1%;
	background-color: white;
}

.total_bar div.mainbar {
	background-color: orange;
}

.heading {
	font-size: 16px;
	font-weight: bold;
}
</style>
<c:forEach var="review" items="${reviewLst}">
	<div
		style="width: 100%; background-color: #ffffff; margin-bottom: 15px; padding: 15px;"
		align="left">
		<div class="container-fluid">
			<div class="row" style="border-bottom: 1px solid lightgray;">
				<div class="col-lg-12"
					style="padding-bottom: 15px; padding-left: 0px;">
					<span style="font-size: 12px;"> ${review.jobcategory }&nbsp;|
						&nbsp;<c:choose>
							<c:when test=" ${review.employstatus eq true}">현직원</c:when>
							<c:otherwise>전직원</c:otherwise>
						</c:choose>&nbsp;| &nbsp;<fmt:formatDate pattern="yyyy/MM/dd"
							value="${review.writedate }" />
					</span>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3"
					style="padding-left: 0px; padding-bottom: 15px; border-right: 1px solid lightgray;">
					<span
						style="font-size: 13px;">총 만족도
							&nbsp;&nbsp;&nbsp;${review.totalscore}</span>
						<div id="tot" class="progress total_bar"
							style="width: 130px; height: 7px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.totalscore*10 }" />
							</c:import>
						</div> <br>
					<span style="font-size: 13px;">승진
							기회&nbsp;&nbsp;&nbsp;${review.promotionscore}</span>
						<div class="progress"
							style="width: 130px; height: 10px; margin-bottom: 10px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.promotionscore*10 }" />
							</c:import>
						</div> <span style="font-size: 13px;">복지 및
							급여&nbsp;&nbsp;&nbsp;${review.walfarescore}</span>
						<div class="progress"
							style="width: 130px; height: 10px; margin-bottom: 10px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.walfarescore*10 }" />
							</c:import>
						</div> <span style="font-size: 13px;">삶의
							균형&nbsp;&nbsp;&nbsp;${review.balancescore}</span>
						<div class="progress"
							style="width: 130px; height: 10px; margin-bottom: 10px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.balancescore*10 }" />
							</c:import>
						</div> <span style="font-size: 13px;">사내문화&nbsp;&nbsp;&nbsp;${review.atmospherescore}</span>
						<div class="progress"
							style="width: 130px; height: 10px; margin-bottom: 10px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.atmospherescore*10 }" />
							</c:import>
						</div>
						<div>
							<span style="font-size: 13px;">경영진&nbsp;&nbsp;&nbsp;${review.executivescore}</span>
						</div>
						<div class="progress"
							style="width: 130px; height: 10px; margin-bottom: 10px;">
							<c:import url="/company/frag_bar">
								<c:param name="bar_value" value="${review.executivescore*10 }" />
							</c:import>
						</div>
					</span>
				</div>
				<div class="col-sm-9">
					<div style="font-weight: bold; font-size: 18px;">"${review.summary }"</div>
					<br>
					<div>
						<span class="heading" style="color: blue">장점</span><br>
						${review.positive }
					</div>
					<br>
					<div>
						<span class="heading" style="color: red">단점</span><br>
						${review.negative }
					</div>
					<br>
					<div>
						<span class="heading">경영진에게 바라는 점</span><br>
						${review.wishlist }
					</div>
					<br>
					<div>
						이 기업은 1년 후
						<c:choose>
							<c:when test="${review.futurescore eq 'U'}">
								<span style="font-weight: bold; color: orange;">성장</span>하고 있을
				</c:when>
							<c:when test="${review.futurescore eq 'S'}">
								<span style="font-weight: bold; color: gray;">비슷</span>할
				</c:when>
							<c:when test="${review.futurescore eq 'D'}">
								<span style="font-weight: bold; color: red;">하락</span>하고 있을
				</c:when>
						</c:choose>
						것이다.
					</div>
					<br>
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