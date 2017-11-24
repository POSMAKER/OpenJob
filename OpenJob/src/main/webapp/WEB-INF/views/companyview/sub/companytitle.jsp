<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="USER" class="com.open.job.DTO.USER" scope="page"/>
	<c:set target="${USER }" property="memberno" value="1"/>
	<c:set target="${USER }" property="memberemail" value="kumasyrwork@cjfood.co.kr"/>
	<c:set target="${USER }" property="companyno" value="13"/>
	<c:set target="${USER }" property="companyname" value="씨제이푸드빌(주)"/>
<!-- 임시 -->
<div
	style="background-image:url('${home}/imgs/wall.png'); height: 150px; padding:0px;">
	<div class="row" style="height: 100%; width: 100%;">
		<div class="col-lg-2" style="height: 1px;"></div>
		<div class="col-lg-8"
			style="min-width: 400px; height: 100%; padding-left: 15px;">
			<table style="position: relative; top: 25px; left: 15px;">
				<tr>
					<td rowspan="3"><img alt="${home }/companyimgs/0.jpg"
						src="${home }/companyimgs/${company.thumbimg}"
						style="width: 110px; height: 110px;"></td>
					<td><span
						style="font-size: 25px; font-weight: bold; margin: 5px; color: white; padding-left:15px;">${company.companyname }</span>
					</td>
				</tr>
				<tr>
					<td><span
						style="font-size: 15px; font-weight: bold; margin: 5px; color: #bfbfbf; padding-left:15px;">${company.industry }</span>
					</td>
				</tr>
				<tr>
					<td>
						<span style="margin: 5px; padding-left:15px;"><button type="button" class="btn btn-default" style="background-color:white;  height:25px; padding: 0 7; font-size: 13px; font-weight: bold;"><i class="fa fa-heart-o"></i>&nbsp;팔로우</button></span>
					</td>
				</tr>
			</table>
		</div>
		<div class="col-lg-2" style="height: 1px;"></div>
	</div>
</div>