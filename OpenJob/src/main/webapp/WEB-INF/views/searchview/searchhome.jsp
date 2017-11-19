<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<style>
table {
	border-style: solid;
	border-color: #77bbff;
}

td, tr {
	padding: 10px;
}

#searchBtn {
	cursor: pointer;
}

</style>

<script type="text/javascript">
	

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>검색 홈</title>
</head>
<body style="height: 1500px">
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 100px">
		<div align="center">
			<div class="imgLogo">
				<a href="${home }/"><img src="${home }/imgs/logo.jpg"
					style="width: 400px; height: 130px;"></a>
			</div>
			<form action="${home }/search" method="get">
			<table>
				<tr>
					<td><select name="category" style="width: 80px; border-style: none;">
							<option value="all">통합</option>
							<option value="company">기업</option>
							<option value="post">채용</option>
					</select></td>
					<td><input type="text" name="searchWord" placeholder="기업, 채용공고를 검색해보세요." style="width: 400px; border: none;" /></td>
					<td><button id="searchBtn" style="background: transparent; border: none;"><i class="fa fa-search" style="font-size: 25px;"></i></button></td>
				</tr>
			</table>
			</form>
		</div>
		<a href="${home }/search_wrap">search_wrap test</a>
	</div>
</body>
</html>