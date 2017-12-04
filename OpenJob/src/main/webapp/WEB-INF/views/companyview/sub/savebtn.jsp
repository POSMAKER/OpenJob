<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${postsaved eq true}">
		<button type="button" class="btn btn-success"
			style="margin: 15 5px; width: 200px; height: 41px;"
			onclick="savepost('false')">채용 찜 해제</button>
	</c:when>
	<c:otherwise>
		<button type="button" class="btn btn-default"
			style="margin: 15 5px; width: 200px; height: 41px;"
			onclick="savepost('true')">채용 찜 하기</button>
	</c:otherwise>
</c:choose>