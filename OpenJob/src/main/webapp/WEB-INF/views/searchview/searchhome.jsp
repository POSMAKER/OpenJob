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
</style>

<script type="text/javascript">
	$(document).ready(function (){
   		$("#searchWord").keyup(function (key) {
    	    if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
    	    	$("#hcategory").val() = $("#category").val();
    	    	alert($("#hcategory").val());
    	    }
  	 	});
	});
	
	$(document).ready(function() {
		$("#searchBtn").click(function() {

			var category = $("#category").val();
			var searchWord = $("#searchWord").val();

			var $form = $('<form></form>');
			$form.attr('action', '${home}/search/category');
			$form.attr('method', 'get');
			$form.appendTo('body');

			var hidden_category = $('<input type="hidden" value="' + category + '" name="category">');
			var hidden_searchWord = $('<input type="hidden" value="' + searchWord + '" name="searchWord">');

			$form.append(hidden_category).append(hidden_searchWord);
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
				<a href="${home }/"><img src="${home }/imgs/logo.jpg"
					style="width: 400px; height: 130px;"></a>
			</div>
			<table>
				<tr>
					<td><select id="category"
						style="width: 80px; border-style: none;">
							<option value="all">통합</option>
							<option value="company">기업</option>
							<option value="post">채용</option>
					</select></td>
					<td><input type="text" id="searchWord"
						placeholder="기업, 채용공고를 검색해보세요."
						style="width: 400px; border: none;" /></td>
					<td><button type="button" id="searchBtn"
							style="background: transparent; border: none;">
							<i class="fa fa-search" style="font-size: 25px;"></i>
						</button></td>
				</tr>
			</table>

		</div>
	</div>
</body>
</html>