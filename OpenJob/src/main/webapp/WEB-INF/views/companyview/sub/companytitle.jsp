<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	function follow(followvar) {
		if ("${USER}" == "") {
			alert("로그인 후 이용가능 합니다.${USER}");
			return;
		}else{
			$.ajax({
				type:'post',
				url: '${home}/company/followProc',
				data: {memberno: "${USER.memberno}",companyno:"${company.companyno}",userfollow:followvar},
				success: function(result){
					if(result=="unselect"){
						$("#follow").attr("class","fa fa-heart-o");
						$("#followingbtn").attr("onclick","follow('false')")
						return;
					}
					if(result=="select"){
						$("#follow").attr("class","fa fa-heart");
						$("#followingbtn").attr("onclick","follow('true')")
						return;
					}
					alert("수정에 실패했습니다.");
				}
			});
		}
	}
</script>
<div
	style="background-image:url('${home}/imgs/wall.png'); height: 150px; padding:0px;">
	<div class="row" style="height: 100%; width: 100%;">
		<div class="col-xl-2" style="height: 1px;"></div>
		<div class="col-xl-8"
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
					<td><span style="margin: 5px; padding-left: 15px;">
								<c:choose>
									<c:when test="${userfollow eq true}">
									<button id="followingbtn"
								type="button" class="btn btn-default" onclick="follow('true')"
								style="background-color: white; height: 25px; padding: 0 7; font-size: 13px; font-weight: bold;">
										<i class="fa fa-heart" id="follow"></i>&nbsp;팔로우</button>
									</c:when>
									<c:otherwise>
									<button id="followingbtn"
								type="button" class="btn btn-default" onclick="follow('false')"
								style="background-color: white; height: 25px; padding: 0 7; font-size: 13px; font-weight: bold;">
										<i class="fa fa-heart-o" id="follow"></i>&nbsp;팔로우</button>
									</c:otherwise>
								</c:choose>
								
							</span></td>
				</tr>
			</table>
		</div>
		<div class="col-xl-2" style="height: 1px;"></div>
	</div>
</div>