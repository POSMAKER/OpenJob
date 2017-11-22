<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
dl {
	display: inline-block;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$("#location100").click(function(){
		if($('input:checkbox[id="location100"]').is(":checked")){
			$("#test").css("display","block");
		} else {
			$("#test").css("display","none");
		}
		
	});
});
</script>
<html>
<body>
	<%@include file="/WEB-INF/views/common/menubar.jsp"%>
	<div class="container-fluid" style="margin-top: 70px;">
		<%@include file="/WEB-INF/views/searchview/searchBar.jsp"%>
		<div style="background-color: #e6e6e6; padding: 20px;">
			<div class=row>
				<div class="col-sm-2">div2</div>
				<div class="col-sm-7"
					style="background-color: white; padding: 30px; min-width: 700px;">

					<div class="searchWrap">
						<dl class="location" style="border: 1px solid black; ">
							<dt style="padding: 10px; ">지역</dt>
							<dd>
								<div
									style="width: 150px; height: 200px; overflow-x: hidden; overflow-y: scroll; ">
									<ul style="list-style: none; padding: 10px;">
										<li><input type="checkbox" id="location100"> <label
											for="location100">서울</label></li>
										<li><input type="checkbox" id="location200"> <label
											for="location200">경기</label></li>
										<li><input type="checkbox" id="location300"> <label
											for="location300">인천</label></li>
										<li><input type="checkbox" id="location400"> <label
											for="location400">강원</label></li>
										<li><input type="checkbox" id="location500"> <label
											for="location500">세종</label></li>
										<li><input type="checkbox" id="location600"> <label
											for="location600">충북</label></li>
										<li><input type="checkbox" id="location700"> <label
											for="location700">경북</label></li>
									</ul>
								</div>
								<div id="test" style="display: none; position: absolute; left:180px; top: 30px; min-width:30%; height: 255px; background-color: black;"></div>
							</dd>
						</dl>
						<dl class="industry" style="border: 1px solid black;">
							<dt style="padding: 10px;">산업</dt>
							<dd>
								<div
									style="width: 150px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
									<ul style="list-style: none; padding: 10px;">
										<li><input type="checkbox" id="location_100"> <label
											for="location_100">IT</label></li>
										<li><input type="checkbox" id="location_200"> <label
											for="location_200">의료</label></li>
										<li><input type="checkbox" id="location_300"> <label
											for="location_300">화학</label></li>
										<li><input type="checkbox" id="location_400"> <label
											for="location_400">제조</label></li>
										<li><input type="checkbox" id="location_500"> <label
											for="location_500">조선</label></li>
									</ul>
								</div>
							</dd>
						</dl>
					</div>
				</div>
				<div class="col-sm-3">div3</div>
			</div>
		</div>
	</div>
</body>
</html>