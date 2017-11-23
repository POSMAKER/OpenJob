<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		
		//지역 상세보기
		$(".showSubLocation").change(function() {
			var id = $(this).attr("id");
			if ($('input:checkbox[id=' + id + ']').is(":checked")) {
				$("#sub" + id).css("display", "block");
			} else {
				$("#sub" + id).css("display", "none");
			}
		});
	
		//상세보기의 닫기
		$("#closeBtn").click(function() {
			var id = $(this).parent().attr("id");
			$("#" + id).css("display", "none");
		});

		//체크박스 css 변경
		$('input:checkbox[name="chkBox"]').change(function() {
			var id = $(this).attr("id");
			if (this.checked) {
				$('label[id=' + id + ']').css("background", "#0099ff");
				$('label[id=' + id + ']').css("color", "#ffffff");
				$('label[id=' + id + ']').css("font-weight", "bold");
			} else {
				$('label[id=' + id + ']').css("background", "#ffffff");
				$('label[id=' + id + ']').css("color", "black");
				$('label[id=' + id + ']').css("font-weight", "normal");
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
						<dl class="location" style="display: inline-block;">
							<dt
								style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">지역</dt>
							<dd>
								<div
									style="width: 150px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
									<ul style="list-style: none; padding: 10px;">
										<c:if test="${locationList!=null }">
											<c:forEach var="location" items="${locationList }">
												<li><input type="checkbox"
													id="location${location.locationno }"
													class="showSubLocation"> <label
													for="location${location.locationno }">${location.location }</label></li>
											</c:forEach>
										</c:if>
									</ul>
								</div>

								<!-- 상세조건  -->
								<div id="sublocation100" style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; height: 255px; background-color: #fff; border: 1px solid black;">
									<button id="closeBtn"
										style="top: 12px; right: 12px; display: block; position: absolute; background: transparent; border: none; cursor: pointer; padding: 0px;">
										<i class="material-icons" style="font-size: 20px">clear</i>
									</button>
									<dl>
										<dt
											style="padding: 10px; background-color: #f2f2f2; color: blue; font-weight: bold;">서울 상세지역</dt>
										<dd>
											<div
												style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
												<ul style="list-style: none; padding: 10px;">
													<c:forEach var="sub" items="${sublocationList }">
														<c:if test="${sub.location eq '서울'}">
															<li style="display: inline;"><input
																style="display: none;" type="checkbox"
																id="sub${sub.locationno }" name="chkBox">
																<label id="sub${sub.locationno }"
																for="sub${sub.locationno }"
																style="width: 110px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center; font-size: 15px;">${sub.sublocation }</label></li>
														</c:if>
													</c:forEach>
												</ul>
											</div>
										</dd>
									</dl>
								</div>
								<!-- 뒤에 숫자가 아이디를 의미함  -->
								<div id="sublocation200"
									style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; height: 255px; background-color: #fff; border: 1px solid black;">

									<dl>
										<dt
											style="padding: 10px; background-color: #f2f2f2; color: blue; font-weight: bold;">경기
											상세지역</dt>
										<dd>
											<div
												style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
												<ul style="list-style: none; padding: 10px;">
													<li style="display: inline;"><input
														style="display: none;" type="checkbox" id="location123"
														name="chkBox"> <label id="location123"
														for="location123"
														style="width: 120px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center;">안산시</label></li>

													<li style="display: inline;"><input
														style="display: none;" type="checkbox" id="location223"
														name="chkBox"> <label id="location223"
														for="location223"
														style="width: 120px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center;">수원시</label></li>

													<li style="display: inline;"><input
														style="display: none;" type="checkbox" id="location323"
														name="chkBox"> <label id="location323"
														for="location323"
														style="width: 120px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center;">성남시</label></li>

													<li style="display: inline;"><input
														style="display: none;" type="checkbox" id="location423"
														name="chkBox"> <label id="location423"
														for="location423"
														style="width: 120px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center;">안양시</label></li>
												</ul>
											</div>
										</dd>
									</dl>
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