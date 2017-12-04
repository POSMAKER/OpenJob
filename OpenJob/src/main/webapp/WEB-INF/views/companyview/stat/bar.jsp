<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:forEach var="i" begin="1" end="5">
	<c:if test="${(bar_value div 10)+1 > i }">
		<c:choose>
			<c:when test="${bar_value div 10 >= i }">
				<div class="progress-bar mainbar"></div>
			<c:choose>
				<c:when test="${i eq 5}">
						<div class="progress-bar mainbar" style="width:1%"></div>
					</c:when>
					<c:otherwise>
					<div class="progress-bar seperator"></div>
					</c:otherwise>
				</c:choose>
			</c:when>
			<c:otherwise>
						<div class="progress-bar mainbar"
							style="width:${(bar_value mod 10)*2}%;"></div>
			</c:otherwise>
		</c:choose>
	</c:if>
</c:forEach>