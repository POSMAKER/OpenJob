<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							id="location${location.locationno }" value="null"> <label
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
										style="padding: 6px 12px 6px 12px;">${location.location }
											전체</span></label></li>
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