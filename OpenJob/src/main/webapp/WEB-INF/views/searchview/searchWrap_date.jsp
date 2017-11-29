<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<dl style="display: inline-block;">
	<dt
		style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">기간
	</dt>
	<dd>
		<div
			style="width: 200px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
			<ul style="list-style: none; padding: 10px; padding-left: 20px;">
				<c:forEach var="date" items="${dateList }">
					<li><input type="checkbox" style="display:;" name="" id=""
						value=""> <label
						style="padding-bottom: 5px; cursor: pointer; width: 110px; font-size: 14px"
						for=""><span id="" style="padding: 5px 10px 5px 10px;">${date }</span></label></li>
				</c:forEach>
			</ul>
		</div>
	</dd>
</dl>