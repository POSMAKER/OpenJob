<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div style="background-color: #e6e6e6; padding-bottom: 20px;">
	<div class=row>
		<div class="col-sm-2"></div>
		<div class="col-sm-8"
			style="background-color: white; padding: 30px; min-width: 1100px;">

			<div class="searchWrap" style="padding-left: 10px; width: 1030px;">
				<dl style="display: inline-block;">
					<dt
						style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">지역
					</dt>
					<dd class="location_dd">
						<div
							style="width: 200px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
							<ul style="list-style: none; padding: 10px; padding-left: 20px;">
								<c:if test="${locationList!=null }">
									<c:forEach var="location" items="${locationList }">
										<li class="location"><input type="checkbox"
											style="display: none;" name="locationBox"
											id="location${location.locationno }"
											value="${location.location }"> <label
											style="padding-bottom: 5px; cursor: pointer; width: 150px; font-size: 14px"
											for="location${location.locationno }"><span
												id="location${location.locationno }"
												style="padding: 5px 10px 5px 10px;">${location.location }</span></label></li>
									</c:forEach>
								</c:if>
							</ul>
						</div>
						<!-- 지역 상세조건  -->
						<c:forEach var="location" items="${locationList }">
							<div class="addDiv" id="sublocation${location.locationno }"
								style="display: none; position: absolute; left: 240px; top: 30px; width: auto; min-width: 70%; max-width: 600px; height: 255px; background-color: #fff; border: 1px solid black;">
								<button class="closeloca"
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
											<ul class="sub_ul${location.locationno }"
												style="list-style: none; padding: 10px;">
												<li class="all" style="display: inline;"><input
													style="display: none;" type="checkbox"
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
														<li class="sub" style="display: inline;"><input
															style="display: none;" type="checkbox"
															id="sub${sublocation.locationno }" name="sublocationBox"
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

				<%@include
					file="/WEB-INF/views/searchview/searchWrap_jobcategory.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_career.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_type.jsp"%>
				<%@include file="/WEB-INF/views/searchview/searchWrap_date.jsp"%>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {

		//경력 체크박스
		$('.career_ul input[type=checkbox]').click(function() {
			var careId = $(this).attr("id");
			if ($(this).is(":checked")) {
				if ($(this).attr("id") == 'any') {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).attr("id") == 'new') {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else {
					$('.career_ul input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				}

				//스타일
				$('.career_ul span').css("border", "none");
				$('.career_ul span').css("font-weight", "normal");
				$('.career_ul span').css("color", "black");

				//스타일
				$('span[id=' + careId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + careId + ']').css("border-radius", "12px");
				$('span[id=' + careId + ']').css("font-weight", "bold");
				$('span[id=' + careId + ']').css("color", "#0099ff");
			} else {
				$(this).prop("checked", false);

				//스타일
				$('span[id=' + careId + ']').css("border", "none");
				$('span[id=' + careId + ']').css("font-weight", "normal");
				$('span[id=' + careId + ']').css("color", "black");
			}
		});

		//기간 체크박스
		$('.dday_li input[type=checkbox]').click(function() {
			var ddayId = $(this).attr("id");
			if ($(this).is(":checked")) {
				if ($(this).val() == 'null') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '1') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '3') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '7') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				} else if ($(this).val() == '30') {
					$('.dday_li input[type=checkbox]').prop("checked", false);
					$(this).prop("checked", true);
				}

				//스타일
				$('.dday_li span').css("border", "none");
				$('.dday_li span').css("font-weight", "normal");
				$('.dday_li span').css("color", "black");

				//스타일
				$('span[id=' + ddayId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + ddayId + ']').css("border-radius", "12px");
				$('span[id=' + ddayId + ']').css("font-weight", "bold");
				$('span[id=' + ddayId + ']').css("color", "#0099ff");
			} else {
				$(this).prop("checked", false);

				//스타일
				$('span[id=' + ddayId + ']').css("border", "none");
				$('span[id=' + ddayId + ']').css("font-weight", "normal");
				$('span[id=' + ddayId + ']').css("color", "black");
			}
		});

		//지역
		$('input:checkbox[name="locationBox"]').change(function() {
			var locaId = $(this).attr("id");

			//지역 상세보기 열기
			if ($(this).is(":checked")) {
				$(this).prop("checked", true);

				//전체버튼
				$('input:checkbox[id=sub' + locaId.substring(8, locaId.length) + ']').prop("checked", true);
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("background", "#0099ff");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("border-radius", "12px");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("font-weight", "bold");
				$('span[id=sub' + locaId.substring(8, locaId.length) + ']').css("color", "#ffffff");

				//새로운 지역 클릭시 다른창 닫기
				$('input:checkbox[name="locationBox"]').each(function() {
					var locaId = $(this).attr("id");
					$('.addDiv').css("display", "none");
				});

				$("#sub" + locaId).css("display", "block");

				//스타일
				$('span[id=' + locaId + ']').css("border", "1px solid #0099ff");
				$('span[id=' + locaId + ']').css("border-radius", "12px");
				$('span[id=' + locaId + ']').css("font-weight", "bold");
				$('span[id=' + locaId + ']').css("color", "#0099ff");

			} else {
				$(this).prop("checked", false);
				$("#sub" + locaId).css("display", "none");

				//창을 닫을때 모든값 체크해제
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
		$(".closeloca").click(function() {
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
				if ($(this).parent().parent().find("li.all").find("input").val() == $(this).val()) {
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

				//스타일
				$('span[id=' + subId + ']').css("background", "#0099ff");
				$('span[id=' + subId + ']').css("border-radius", "12px");
				$('span[id=' + subId + ']').css("font-weight", "bold");
				$('span[id=' + subId + ']').css("color", "#ffffff");

			} else {
				$(this).prop("checked", false);

				//선택된 것이 없을 때 창 닫기
				var cla = $(this).parent().parent().attr("class");
				if ($('.' + cla + ' input[type=checkbox]:checked').length == 0) {
					$('input:checkbox[name=locationBox]').each(function() {
						var locaId = $(this).attr("id");

						if (locaId.substring(8, locaId.length) == cla.substring(6, cla.length)) {
							$("#sub" + locaId).css("display", "none");
							$(this).prop("checked", false);

							//스타일
							$('span[id=' + locaId + ']').css("border", "none");
							$('span[id=' + locaId + ']').css("font-weight", "normal");
							$('span[id=' + locaId + ']').css("color", "black");

							$('span[id=' + subId + ']').css("color", "black");
							$('span[id=' + subId + ']').css("background", "#ffffff");
							$('span[id=' + subId + ']').css("font-weight", "normal");
						}

					});

					$("#sub" + locaId).css("display", "none");
				}

				//스타일
				$('span[id=' + subId + ']').css("background", "#ffffff");
				$('span[id=' + subId + ']').css("color", "black");
				$('span[id=' + subId + ']').css("font-weight", "normal");
			}
		});
	});

	//직무분야 직무열기
	$('.job_li input[type=checkbox]').change(function() {
		var jobId = $(this).attr("id");

		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			$('input:checkbox[name="jobcategory"]').each(function() {
				$('.addDiv').css("display", "none");
			});

			$("#sub" + jobId).css("display", "block");

			//스타일
			$('span[id=' + jobId + ']').css("border", "1px solid #0099ff");
			$('span[id=' + jobId + ']').css("border-radius", "12px");
			$('span[id=' + jobId + ']').css("font-weight", "bold");
			$('span[id=' + jobId + ']').css("color", "#0099ff");
		} else {
			$("#sub" + jobId).css("display", "none");

			//창을 닫을때 모든값 체크해제
			$('input:checkbox[name="subjobcategory"]').each(function() {
				var subId = $(this).attr("id");

				if ($(this).is(':checked')) {
					if (subId.substring(1, 2) == jobId.substring(1, 2)) {
						$(this).prop("checked", false);
						$(this).parent().find("span").css("background", "#ffffff");
						$(this).parent().find("span").css("color", "black");
						$(this).parent().find("span").css("font-weight", "normal");
					}
				}
			});
			//스타일
			$('span[id=' + jobId + ']').css("border", "none");
			$('span[id=' + jobId + ']').css("font-weight", "normal");
			$('span[id=' + jobId + ']').css("color", "black");
		}
	});

	$('input:checkbox[name=subjobcategory]').click(function() {
		var subId = $(this).attr("id");
		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			//스타일
			$('span[id=' + subId + ']').css("background", "#0099ff");
			$('span[id=' + subId + ']').css("border-radius", "12px");
			$('span[id=' + subId + ']').css("font-weight", "bold");
			$('span[id=' + subId + ']').css("color", "#ffffff");
		} else {
			$(this).prop("checked", false);

			//선택된 것이 없을 때 창 닫기
			var cla = $(this).parent().parent().attr("class");
			if ($('.' + cla + ' input[type=checkbox]:checked').length == 0) {
				$('input:checkbox[name=jobcategory]').each(function() {
					var jobId = $(this).attr("id");
					if (jobId == cla.substring(6, cla.length)) {
						$("#sub" + jobId).css("display", "none");
						$(this).prop("checked", false);
						//스타일
						$('span[id=' + jobId + ']').css("border", "none");
						$('span[id=' + jobId + ']').css("font-weight", "normal");
						$('span[id=' + jobId + ']').css("color", "black");

						$('span[id=' + subId + ']').css("color", "black");
						$('span[id=' + subId + ']').css("background", "#ffffff");
						$('span[id=' + subId + ']').css("font-weight", "normal");
						$('span[id=' + subId + ']').css("border", "none");
					}

				});

			}
			//스타일
			$('span[id=' + subId + ']').css("border", "none");
			$('span[id=' + subId + ']').css("font-weight", "normal");
			$('span[id=' + subId + ']').css("color", "black");
			$('span[id=' + subId + ']').css("background", "#ffffff");
		}
	});

	$(".closejob").click(function() {
		var id = $(this).parent().attr("id");
		$("#" + id).css("display", "none");
	});

	$('.type_li input[type=checkbox]').click(function() {
		var typeId = $(this).attr("id");
		if ($(this).is(":checked")) {
			$(this).prop("checked", true);

			//스타일
			$('span[id=' + typeId + ']').css("border", "1px solid #0099ff");
			$('span[id=' + typeId + ']').css("border-radius", "12px");
			$('span[id=' + typeId + ']').css("font-weight", "bold");
			$('span[id=' + typeId + ']').css("color", "#0099ff");

		} else {
			$(this).prop("checked", false);

			//스타일
			$('span[id=' + typeId + ']').css("border", "none");
			$('span[id=' + typeId + ']').css("font-weight", "normal");
			$('span[id=' + typeId + ']').css("color", "black");
			$('span[id=' + typeId + ']').css("background", "#ffffff");
		}
	});
	//전체 div
	$('.searchWrap input[type=checkbox]').change(function() {
		//지역 검색
		var subLocationName = $('.location_dd input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		if (subLocationName.length > 2) {
			subLocationName = subLocationName.substring(3, subLocationName.length);
		}

		//경력 검색
		var career = $('.career_ul input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		var jobcate = $('.subjob_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");


		var type = $('.type_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		var dday = $('.dday_li input[type=checkbox]:checked').map(function() {
			return this.value;
		}).get().join(",");

		$.ajax({
			type : 'post',
			url : '${home}/subLocation',
			data : {
				subLocationName : subLocationName,
				jobcate : jobcate,
				career : career,
				type : type,
				dday : dday
			},
			success : function(result) {
				$("#resultPost").html(result);
			}
		});
	});
	
</script>
<style>
.searchWrap {
	-ms-user-select: none; 
	-moz-user-select: -moz-none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}
</style>
