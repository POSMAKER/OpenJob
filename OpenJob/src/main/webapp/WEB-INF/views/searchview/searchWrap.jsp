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

		//상세보기의 닫기버튼
		$(".closeBtn").click(function() {
			var id = $(this).parent().attr("id");
			$("#" + id).css("display", "none");
		});

		//label의 상태가 바뀌면 테두리 변경
		$('input:checkbox[name="chkBox"]').change(function() {
			var id = $(this).attr("id");

			if (this.checked) {
				$('label[id=' + id + ']').css("background", "#0099ff");
				$('label[id=' + id + ']').css("color", "#ffffff");
				$('label[id=' + id + ']').css("font-weight", "bold");

				$('label[id=' + id + ']').addClass("checked");
			} else {
				$('label[id=' + id + ']').css("background", "#ffffff");
				$('label[id=' + id + ']').css("color", "black");
				$('label[id=' + id + ']').css("font-weight", "normal");

				$('label[id=' + id + ']').removeClass("checked");
			}
		});
		
		//label에 마우스를 올렸을 때
		$("label").hover(function() {
			$(this).css("color", "#0099ff");
			$(this).css("font-weight", "bold");
			$("li").find(".checked").css("color", "#ffffff");

		}, function() {
			$(this).css("color", "black");
			$(this).css("font-weight", "normal");
			$("li").find(".checked").css("color", "#ffffff");

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
									<ul style="list-style: none; padding: 10px; padding-left: 20px;">
										<c:if test="${locationList!=null }">
											<c:forEach var="location" items="${locationList }">
												<li><input type="checkbox" style="display: none;"
													id="location${location.locationno }"
													class="showSubLocation"> <label style="cursor: pointer; width: 120px; font-size: 14px"
													for="location${location.locationno }">${location.location }</label></li>
											</c:forEach>
										</c:if>
									</ul>
								</div>
								<!-- 지역 상세조건  -->
								<c:forEach var="location" items="${locationList }">
									<div id="sublocation${location.locationno }"
										style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; height: 255px; background-color: #fff; border: 1px solid black;">
										<button class="closeBtn"
											style="top: 12px; right: 12px; display: block; position: absolute; background: transparent; border: none; cursor: pointer; padding: 0px;">
											<i class="material-icons" style="font-size: 20px">clear</i>
										</button>
										<dl>
											<dt
												style="padding: 10px; background-color: #f2f2f2; color: blue; font-weight: bold;">${location.location }
												상세지역</dt>
											<dd>
												<div
													style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
													<ul style="list-style: none; padding: 10px;">
														<c:forEach var="sublocation" items="${sublocationList }">
															<c:if test="${sublocation.location == location.location}">
																<li style="display: inline;"><input
																	style="display: none;" type="checkbox"
																	id="sub${sublocation.locationno }" name="chkBox">
																	<label id="sub${sublocation.locationno }"
																	for="sub${sublocation.locationno }"
																	style="width: 130px; padding: 5px; border: 1px solid #0099ff; border-radius: 12px; cursor: pointer; text-align: center; font-size: 14px;">${sublocation.sublocation }</label></li>
															</c:if>
														</c:forEach>
													</ul>
												</div>
											</dd>
										</dl>
									</div>
								</c:forEach>
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