<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

<script type="text/javascript">
	$(document).ready(function() {
		$("#searchBtn").click(function() {

			var searchOpt = $("#searchOpt").val();

			var $form = $('<form></form>');
			$form.attr('action', '${home}/search/searchopt');
			$form.attr('method', 'post');
			$form.appendTo('body');

			var input_hidden = $('<input type="hidden" value="' + searchOpt + '" name="searchOpt">');

			$form.append(input_hidden);
			$form.submit();
		});
	})
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
				<a href="${home }/"><img src="${home }/imgs/logo.jpg" style="width: 300px; height: 100px;"></a>
			</div>
			<table border="0">
				<tr>
					<td><select id="searchOpt" style="width: 80px; border-style: none;">
							<option value="all">전체</option>
							<option value="company">기업</option>
							<option value="post">채용</option>
					</select></td>
					<td><input type="text" id="search" placeholder="기업, 채용공고를 검색해보세요." style="width: 400px; border: none;" /></td>
					<td><a id="searchBtn" href="#"> <i class="fa fa-search" style="font-size: 25px;"></i></a></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>