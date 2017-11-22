<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="searchBar">
	<div class="row">
		<!-- 로고 -->
		<div class="col-sm-4" align="right" style="padding-right: 0px;">
			<div class="imgLogo">
				<a href="${home }/"><img src="${home }/imgs/logo.jpg"
					style="width: 200px; height: 65px;"></a>
			</div>
		</div>
		<!-- 검색창 -->
		<div class="col-sm-5">
			<div align="left" style="padding-top: 10px;">
				<form action="${home }/search" method="get">
					<table style="border-style: solid; border-color: #77bbff;">
						<tr style="padding: 10px;">
							<td style="padding: 10px;"><select name="category"
								id="category" style="width: 80px; border-style: none;">
									<option value="all">통합</option>
									<option value="company" ${companySelected }>기업</option>
									<option value="post" ${postSelected }>채용</option>
							</select></td>
							<td style="padding: 10px;"><input type="text"
								name="searchWord" id="searchWord"
								placeholder="${placeholderText }"
								style="width: 400px; border: none; min-width: 300px;"
								value="${searchWord }" /></td>
							<td style="padding: 10px;"><button
									style="background: transparent; border: none; cursor: pointer;">
									<i class="fa fa-search" style="font-size: 25px;"></i>
								</button></td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!-- 광고 -->
		<div class="col-sm-3"
			style="padding-right: 0px; width: 100%; min-width: 100px; max-width: 150px;">
			<img src="${home }/imgs/detailSearchView_AD.jpg">
		</div>
	</div>
</div>