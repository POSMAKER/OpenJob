<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script type="text/javascript">


</script>
<dl style="display: inline-block;">
	<dt
		style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">직무분야
	</dt>
	<dd>
		<div
			style="width: 200px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
			<ul style="list-style: none; padding: 10px; padding-left: 20px;">
				<c:if test="${jobcategoryList!=null }">
					<c:forEach var="jobcategory" items="${jobcategoryList }">
						<li><input type="checkbox" style="display:;"
							name="jobcategory" id="${jobcategory.jobcategoryno }"
							value="${jobcategory.jobcategory } ${jobcategory.subjobcategory}">
							<label
							style="padding-bottom: 5px; cursor: pointer; width: 110px; font-size: 14px"
							for="${jobcategory.jobcategoryno }"><span
								style="padding: 5px 10px 5px 10px;">${jobcategory.jobcategory }</span></label>
						</li>
					</c:forEach>
				</c:if>
			</ul>
		</div>


		<c:forEach var="jobcategory" items="${jobcategoryList }">
			<div
				style="display: none; position: absolute; left: 180px; top: 30px; width: auto; min-width: 70%; max-width: 600px; height: 255px; background-color: #fff; border: 1px solid black;">
				<button id="closeBtn${jobcategory.jobcategoryno }" class="closeBtn"
					style="top: 12px; right: 12px; display: block; position: absolute; background: transparent; border: none; cursor: pointer; padding: 0px;">
					<i class="material-icons" style="font-size: 20px">clear</i>
				</button>
				<dl>
					<dt
						style="padding: 10px; background-color: #f2f2f2; color: #0099ff; font-weight: bold;">직무</dt>
					<dd>
						<div
							style="width: 100%; height: 200px; overflow-x: hidden; overflow-y: scroll;">
							<ul style="list-style: none; padding: 10px;">
								<c:forEach var="subjobcategory" items="${subjobcategoryList }">
									<c:if test="${jobcategory.jobcategory == subjobcategory.jobcategory}">
										<li style="display: inline;"><input style="display:;"
											type="checkbox" id="${subjobcategory.jobcategoryno }" name="subjobcategory" value="${subjobcategory.subjobcategory }"> <label id="${subjobcategory.jobcategoryno }"
											for="${subjobcategory.jobcategoryno }"
											style="width: 140px; padding: 5px; cursor: pointer; font-size: 13px;"><span
												id="${subjobcategory.jobcategoryno }" style="padding: 6px 12px 6px 12px;">${subjobcategory.subjobcategory }</span></label></li>
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