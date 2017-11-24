<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		//지역 상세보기 열기
		$(".showSubLocation").change(function() {
			var id = $(this).attr("id");
			if ($('input:checkbox[id=' + id + ']').is(":checked")) {
				$("#sub" + id).css("display", "block");
				
				//전체가 체크되어 있을 경우에만 
				if($('input:checkbox[id=subAll]').is(":checked")){
					$('span[id=subAll]').css("background", "#0099ff");
					$('span[id=subAll]').css("border-radius","12px");
					$('span[id=subAll]').css("font-weight", "bold");
					$('span[id=subAll]').css("color", "#ffffff");
					$('span[id=subAll]').addClass("subChecked");
				} 

			} else {
				$("#sub" + id).css("display", "none");
			}
		});

		//지역 상세보기의 닫기버튼
		$(".closeBtn").click(function() {
			var id = $(this).parent().attr("id");
			//창 닫기
			$("#" + id).css("display", "none");

		});

		//지역 체크박스
		$('input:checkbox[name="locationBox"]').change(function() {
			var id = $(this).attr("id");
			if (this.checked) {
				$('span[id=' + id + ']').css("border","1px solid #0099ff");
				$('span[id=' + id + ']').css("border-radius","12px");
				$('span[id=' + id + ']').css("font-weight","bold");
				$('span[id=' + id + ']').css("color","#0099ff");
				
				$('span[id=' + id + ']').addClass("locaChecked");
				
			} else {
				$('span[id=' + id + ']').css("border","none");
				$('span[id=' + id + ']').css("font-weight","normal");
				$('span[id=' + id + ']').css("color","black");
				
				$('span[id=' + id + ']').removeClass("locaChecked");
			}
		});
		
		//지역 상세보기 체크박스
		$('input:checkbox[name="sublocationBox"]').change(function() {
			var id = $(this).attr("id");
			if (this.checked) {
				
				//다른 지역이 선택되면 전체 제거
				$('span[id=subAll]').css("background", "#ffffff");
				$('span[id=subAll]').css("color", "black");
				$('span[id=subAll]').css("font-weight", "normal");
				$('span[id=subAll]').removeClass("subChecked");
				$('input:checkbox[id="subAll"]').attr("checked",false);
				
				$('span[id=' + id + ']').css("background", "#0099ff");
				$('span[id=' + id + ']').css("border-radius","12px");
				$('span[id=' + id + ']').css("font-weight", "bold");
				$('span[id=' + id + ']').css("color", "#ffffff");
				
				//클래스 추가
				$('span[id=' + id + ']').addClass("subChecked");
				
			}else {
				$('span[id=' + id + ']').css("background", "#ffffff");
				$('span[id=' + id + ']').css("color", "black");
				$('span[id=' + id + ']').css("font-weight", "normal");
				
				//클래스 삭제
				$('span[id=' + id + ']').removeClass("subChecked");
			}
		});
		
		//span에 마우스를 올렸을 때
		$("span").hover(function() {
			$(this).css("color", "#0099ff");
			$(this).css("font-weight", "bold");
			$("span.subChecked").css("color", "#ffffff");

		}, function() {
			$(this).css("color", "black");
			$(this).css("font-weight", "normal");
			$("span.locaChecked").css("color","#0099ff");
			$("span.locaChecked").css("font-weight","bold");
			$("span.subChecked").css("color", "#ffffff");
			$("span.subChecked").css("font-weight","bold");
		});
		
		$("#test").text("hello");
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
					style="background-color: white; padding: 30px; min-width: 800px;">

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
												<li class="test"><input type="checkbox" style="display: none;" name="locationBox"
													id="location${location.locationno }"
													class="showSubLocation"> <label style="padding-bottom: 5px; cursor: pointer; width: 110px; font-size: 14px"
													for="location${location.locationno }"><span id="location${location.locationno }" style="padding:5px 10px 5px 10px;">${location.location }</span></label></li>
											</c:forEach>
										</c:if>
									</ul>
								</div>
								<!-- 지역 상세조건  -->
								<c:forEach var="location" items="${locationList }">
									<div id="sublocation${location.locationno }"
										style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; max-width: 600px; height: 255px; background-color: #fff; border: 1px solid black;">
										<button class="closeBtn"
											style="top: 12px; right: 12px; display: block; position: absolute; background: transparent; border: none; cursor: pointer; padding: 0px;">
											<i class="material-icons" style="font-size: 20px">clear</i>
										</button>
										<dl class="test">
											<dt style="padding: 10px; background-color: #f2f2f2; color: #0099ff; font-weight: bold;">${location.location } 상세지역</dt>
											<dd>
												<div
													style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
													<ul style="list-style: none; padding: 10px;">
													<!-- 전체 -->
														<li style="display: inline;"><input
																		style="display: none;" type="checkbox"
																		id="subAll" name="sublocationBox" checked="checked">
																		<label id="subAll"
																		for="subAll"
																		style="width: 140px; padding: 5px; cursor: pointer; font-size: 13px;"><span id="subAll" style="padding:6px 12px 6px 12px; ">전체</span></label></li>
													<!-- 상세지역 -->
														<c:forEach var="sublocation" items="${sublocationList }">
															<c:if test="${sublocation.location == location.location}">
																<li style="display: inline;"><input
																	style="display: none;" type="checkbox"
																	id="sub${sublocation.locationno }" name="sublocationBox">
																	<label id="sub${sublocation.locationno }"
																	for="sub${sublocation.locationno }"
																	style="width: 140px; padding: 5px; cursor: pointer; font-size: 13px;"><span id="sub${sublocation.locationno }" style="padding:6px 12px 6px 12px; ">${sublocation.sublocation }</span></label></li>
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
			<div class="row">
					<div class="col-sm-3">div3</div>
					<div class="col-sm-6" id="test" style="padding-top:15px;"></div>
					<div class="col-sm-3">div3</div>
				</div>
		</div>
	</div>
</body>
</html>