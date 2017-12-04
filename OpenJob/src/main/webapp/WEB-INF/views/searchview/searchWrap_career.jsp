<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<dl style="display: inline-block;">
	<dt
		style="padding: 10px; background-color: #4a5470; color: #fff; font-weight: bold;">경력
	</dt>
	<dd>
		<div
			style="width: 200px; height: 200px; overflow-x: hidden; overflow-y: scroll;">
			<ul class="career_ul" style="list-style: none; padding: 10px; padding-left: 20px;">
				<li><input type="checkbox" style="display: none;" name="career" id="new"
					value="신입"> <label
					style="padding-bottom: 5px; cursor: pointer; width: 150px; font-size: 14px"
					for="new"><span id="new" style="padding: 5px 10px 5px 10px;">신입</span></label></li>
				<li><input type="checkbox" style="display: none;" name="career" id="career"
					value="경력"> <label
					style="padding-bottom: 5px; cursor: pointer; width: 150px; font-size: 14px"
					for="career"><span id="career" style="padding: 5px 10px 5px 10px;">경력</span></label></li>
				<li><input type="checkbox" style="display: none;" name="career" id="any"
					value="경력무관"> <label
					style="padding-bottom: 5px; cursor: pointer; width: 150px; font-size: 14px"
					for="any"><span id="any" style="padding: 5px 10px 5px 10px;">경력무관</span></label></li>
			</ul>
		</div>
	</dd>
</dl>