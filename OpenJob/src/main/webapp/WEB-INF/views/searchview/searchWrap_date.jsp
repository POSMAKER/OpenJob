<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<fmt:parseNumber value="${timenow.time/(1000*60*60*24)}"
	integerOnly="true" var="nowdate" />
	
<fmt:parseNumber value="${post.enddate.time/(1000*60*60*24)}"
	integerOnly="true" var="enddate" />
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
					<li class="dday_li"><input type="checkbox" style="display: none;" id="${dday.ddayval }"
						value="${dday.ddayval }"> <label
						style="padding-bottom: 5px; cursor: pointer; width: 150px; font-size: 14px"
						for="${dday.ddayval }"><span id="${dday.ddayval }" style="padding: 5px 10px 5px 10px;">${dday.dday }</span></label></li>
				</c:forEach>
			</ul>
		</div>
	</dd>
</dl>