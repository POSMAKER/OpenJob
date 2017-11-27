<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	function follow() {
		if ("${USER}" == "") {
			alert("로그인 후 이용가능 합니다.${USER}");
			return;
		}else{
			alert("${userfollow eq null}")
			$.ajax({
				type:'post',
				url: '${home}/company/followProc',
				data: {memberno: "${USER.memberno}",companyno:"${company.companyno}",userfollow:"${userfollow}"},
				success: function(result){
					
				}
			});
		}
	}
</script>
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
						style="font-size: 25px; font-weight: bold; margin: 5px; color: white; padding-left: 15px;">${company.companyname }</span>
					</td>
				</tr>
				<tr>
					<td><span
						style="font-size: 15px; font-weight: bold; margin: 5px; color: #bfbfbf; padding-left: 15px;">${company.industry }</span>
					</td>
				</tr>
				<tr>
					<td><span style="margin: 5px; padding-left: 15px;"><button
								type="button" class="btn btn-default" onclick="follow()"
								style="background-color: white; height: 25px; padding: 0 7; font-size: 13px; font-weight: bold;">
								<c:choose>
									<c:when test="${userfollow eq true}">
										<i class="fa fa-heart"></i>
									</c:when>
									<c:otherwise>
										<i class="fa fa-heart-o"></i>
									</c:otherwise>
								</c:choose>
								&nbsp;팔로우
							</button></span></td>
				</tr>
			</table>
		</div>
		<div class="col-lg-2" style="height: 1px;"></div>
	</div>
</div>