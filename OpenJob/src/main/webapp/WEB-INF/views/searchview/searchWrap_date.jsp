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
			<c:set var="no" value="1" />
				<c:forEach var="dday" items="${dateList }">
					<li class="dday_li"><input type="checkbox" style="display:;" id="${dday }"
						value="${dday }"> <label
						style="padding-bottom: 5px; cursor: pointer; width: 110px; font-size: 14px"
						for="${dday }"><span id="" style="padding: 5px 10px 5px 10px;">${dday }</span></label></li>
				</c:forEach>
			</ul>
		</div>
	</dd>
</dl>