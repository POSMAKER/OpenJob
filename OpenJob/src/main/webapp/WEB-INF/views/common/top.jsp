<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<c:url var="home" value="/" />
<style type="text/css">
a:link {
	color: white;
	font-family: sans-serif;
	text-decoration: none;
}

a:visited {
	color: white;
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

.header {
	width: 100%;
	height: 52px;
	box-sizing: border-box;
	position: fixed;
	top: 0px;
	left: 0px;
	z-index: 9996;
	background: #4da6ff;
}

</style>
<div class="header" align="center">
<table border="0">
	<tr>
		<td><a href="">채용</a></td>
		<td><a href="">기업</a></td>
		<td><a href="">로그인</a></td>
		<td><a href="">회원가입</a></td>
	</tr>
</table>
</div>
