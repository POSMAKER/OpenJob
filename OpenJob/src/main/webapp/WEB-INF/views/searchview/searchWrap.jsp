<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(document).ready(function() {
		$('input:checkbox[name="locationBox"]').click(function() {
			var locaId = $(this).attr("id");
			
			//지역 상세보기 열기
			if ($(this).is(":checked")) {
				$(this).prop("checked", true);
				
				var subLocationName = $('.location input[type=checkbox]:checked').map(function() {
					return this.value;
				}).get().join(",");
				
				$.ajax({
					type : 'post',
					url : '${home}/subLocation',
					data : {
						subLocationName : subLocationName
					},
					success : function(result) {
						$("#resultPost").html(result);
					}
				});
				
				$('input:checkbox[name="locationBox"]').each(function() {
					var locaId = $(this).attr("id");
					$("#sub" + locaId).css("display", "none");
				});

				$("#sub" + locaId).css("display", "block");

				//전체버튼
				$('input:checkbox[id=sub' + locaId.substring(8, locaId.length) + ']').prop("checked", true);
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("background", "#0099ff");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("border-radius", "12px");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("font-weight", "bold");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("color", "#ffffff");

				//지역 버튼 추가
				var locationName = $(this).parent().find("span").text();
				//$("#button").append('<button id=' + locaId + '>' + locationName + ' 전체</button>');

				//스타일
				$('span[id=' + locaId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + locaId + ']').css("border-radius", "12px");
				$('span[id=' + locaId + ']').css("font-weight", "bold");
				$('span[id=' + locaId + ']').css("color", "#0099ff");

			} else {
				$(this).prop("checked", false);
				var subLocationName = $('.location input[type=checkbox]:checked').map(function() {
					return this.value;
				}).get().join(",");

				$.ajax({
					type : 'post',
					url : '${home}/subLocation',
					data : {
						subLocationName : subLocationName
					},
					success : function(result) {
						$("#resultPost").html(result);
					}
				});
				
				$("#sub" + locaId).css("display", "none");
				$('button[id=' + locaId + ']').remove();

				$('input:checkbox[name="sublocationBox"]').each(function() {
					var subId = $(this).attr("id");

					if ($(this).is(':checked')) {
						if (locaId.length == 11) {
							if (subId.substring(3, 4) == locaId.substring(8, 9)) {
								$('button[id=' + subId + ']').remove();
								$(this).prop("checked", false);
								$(this).parent().find("span").css("background", "#ffffff");
								$(this).parent().find("span").css("color", "black");
								$(this).parent().find("span").css("font-weight", "normal");
							}
						} else {
							if (subId.substring(3, 5) == locaId.substring(8, 10)) {
								$('button[id=' + subId + ']').remove();
								$(this).prop("checked", false);
								$(this).parent().find("span").css("background", "#ffffff");
								$(this).parent().find("span").css("color", "black");
								$(this).parent().find("span").css("font-weight", "normal");
							}
						}
					}
				});

				//스타일
				$('span[id=' + locaId + ']').css("border", "none");
				$('span[id=' + locaId + ']').css("font-weight", "normal");
				$('span[id=' + locaId + ']').css("color", "black");
			}
		});

		//지역 상세보기의 닫기버튼
		$(".closeBtn").click(function() {
			var id = $(this).parent().attr("id");
			//창 닫기
			$("#" + id).css("display", "none");
		});

		//지역 상세보기 체크박스
		$('input:checkbox[name="sublocationBox"]').click(function() {
			var subId = $(this).attr("id");

			if ($(this).is(":checked")) {
				$(this).prop("checked", true);
				
				//전체버튼 일때
				if($(this).parent().parent().find("li.all").find("input").val() == $(this).val()){
					//전체를 제외한 다른 버튼 false
					$(this).parent().parent().find("li.sub").find("input").prop("checked", false);
					$(this).parent().parent().find("li.sub").find("span").css("background", "#ffffff");
					$(this).parent().parent().find("li.sub").find("span").css("color", "black");
					$(this).parent().parent().find("li.sub").find("span").css("font-weight", "normal");
					//전체버튼만 true
					$(this).prop("checked", true);
				} else {
					//전체버튼 false
					$(this).parent().parent().find("li.all").find("input").prop("checked", false);
					$(this).parent().parent().find("li.all").find("span").css("background", "#ffffff");
					$(this).parent().parent().find("li.all").find("span").css("color", "black");
					$(this).parent().parent().find("li.all").find("span").css("font-weight", "normal");
				}

				var subLocationName = $('.sublocation input[type=checkbox]:checked').map(function() {
					return this.value;
				}).get().join(",");

				//검색조건이 추가될때 마다 검색
				$.ajax({
					type : 'post',
					url : '${home}/subLocation',
					data : {
						subLocationName : subLocationName
					},
					success : function(result) {
						$("#resultPost").html(result);
					}
				});

				//스타일
				$('span[id=' + subId + ']').css("background", "#0099ff");
				$('span[id=' + subId + ']').css("border-radius", "12px");
				$('span[id=' + subId + ']').css("font-weight", "bold");
				$('span[id=' + subId + ']').css("color", "#ffffff");

			} else {
				$(this).prop("checked", false);

				var subLocationName = $('.sublocation input[type=checkbox]:checked').map(function() {
					return this.value;
				}).get().join(",");

				$.ajax({
					type : 'post',
					url : '${home}/subLocation',
					data : {
						subLocationName : subLocationName
					},
					success : function(result) {
						$("#resultPost").html(result);
					}
				});

				$('button[id=' + subId + ']').remove();

				//스타일
				$('span[id=' + subId + ']').css("background", "#ffffff");
				$('span[id=' + subId + ']').css("color", "black");
				$('span[id=' + subId + ']').css("font-weight", "normal");
			}
		});

		//span에 마우스를 올렸을 때 추가예정(11/25에 작성)

	});
</script>

<div style="background-color: #e6e6e6; padding-bottom: 20px;">
	<div class=row>
		<div class="col-sm-2">div2</div>
		<div class="col-sm-7"
			style="background-color: white; padding: 30px; min-width: 800px;">

			<div class="searchWrap">
				<dl style="display: inline-block;">
					<dt
						style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">지역</dt>
					<dd>
						<div
							style="width: 150px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
							<ul style="list-style: none; padding: 10px; padding-left: 20px;">
								<c:if test="${locationList!=null }">
									<c:forEach var="location" items="${locationList }">
										<li class="location"><input type="checkbox" style="display: ;"	
											name="locationBox" id="location${location.locationno }" value="${location.location }">
											<label
											style="padding-bottom: 5px; cursor: pointer; width: 110px; font-size: 14px"
											for="location${location.locationno }"><span
												id="location${location.locationno }"
												style="padding: 5px 10px 5px 10px;">${location.location }</span></label></li>
									</c:forEach>
								</c:if>
							</ul>
						</div>
						<!-- 지역 상세조건  -->
						<c:forEach var="location" items="${locationList }">
							<div class="sublocation" id="sublocation${location.locationno }"
								style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; max-width: 600px; height: 255px; background-color: #fff; border: 1px solid black;">
								<button id="closeBtn${location.locationno }" class="closeBtn"
									style="top: 12px; right: 12px; display: block; position: absolute; background: transparent; border: none; cursor: pointer; padding: 0px;">
									<i class="material-icons" style="font-size: 20px">clear</i>
								</button>
								<dl>
									<dt
										style="padding: 10px; background-color: #f2f2f2; color: #0099ff; font-weight: bold;">${location.location }
										상세지역</dt>
									<dd>
										<div
											style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
											<ul style="list-style: none; padding: 10px;">
												<li class="all" style="display: inline;"><input
													style="display: ;" type="checkbox"
													id="sub${location.locationno }" name="sublocationBox"
													value="${location.location }"> <label
													id="sub${location.locationno }"
													for="sub${location.locationno }"
													style="width: 140px; padding: 5px; cursor: pointer; font-size: 13px;"><span
														id="sub${location.locationno }"
														style="padding: 6px 12px 6px 12px;">전체</span></label></li>
												<!-- 상세지역 -->
												<c:forEach var="sublocation" items="${sublocationList }">
													<c:if test="${sublocation.location == location.location}">
														<li class="sub" style="display: inline;"><input style="display: ;"
															type="checkbox" id="sub${sublocation.locationno }"
															name="sublocationBox"
															value="${location.location } ${sublocation.sublocation}">
															<label id="sub${sublocation.locationno }"
															for="sub${sublocation.locationno }"
															style="width: 140px; padding: 5px; cursor: pointer; font-size: 13px;"><span
																id="sub${sublocation.locationno }"
																style="padding: 6px 12px 6px 12px;">${sublocation.sublocation }</span></label></li>
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
