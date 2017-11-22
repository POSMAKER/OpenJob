<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		$("#category").change(function() {
			var categoryVal = $("#category").val();

			if (categoryVal == "all") {
				$("#searchWord").attr("placeholder", "기업, 채용공고를 검색해보세요.");
			} else if (categoryVal == "company") {
				$("#searchWord").attr("placeholder", "기업명으로 검색");
			} else if (categoryVal == "post") {
				$("#searchWord").attr("placeholder", "회사명, 희망직무 등으로 검색");
			}

		});
	});
</script>
<html>
<style>
table {
	border-style: solid;
	border-color: #77bbff;
}

td, tr {
	padding: 10px;
}
</style>

<head>
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
						<td><select name="category" id="category"
							style="width: 80px; border-style: none;">
								<option value="all">통합</option>
								<option value="company">기업</option>
								<option value="post">채용</option>
						</select></td>
						<td><input type="text" name="searchWord" id="searchWord"
							placeholder="기업, 채용공고를 검색해보세요."
							style="width: 400px; min-width: 300px; border: none;" /></td>
						<td><button
								style="background: transparent; border: none; cursor: pointer;">
								<i class="fa fa-search" style="font-size: 25px;"></i>
							</button></td>
					</tr>
				</table>
			</form>
		</div>
		<a href="${home }/searchWrap">searchWrap test</a>
	</div>
</body>
</html>