<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 상단 검색바 -->
<div class="container-fluid searchBar"
	style="height: 80px; padding: 0px;">
	<div class="row" style="padding: 3 0px;">
		<!-- 로고 -->
		<div class="col-xl-2 d-xl-block" style="display: none;"></div>
		<div class="col-xl-8" style="height: 80px; padding:2 0 0 0px;"
			align="center">
			<div class="container-fluid" style="padding: 0">
				<div class="row" style="margin: 0;">
					<div class="col-md-3 d-md-block imgLogo" align="left"
						style="display:none;">
						<a href="${home }/"><img src="${home }/imgs/logo.jpg"
							style="width: 100%; height: 70px;"></a>
					</div>
					<!-- 검색창 -->
					<div class="col-md-6" style="padding:15px;">
							<form action="${home }/search" method="get">
								<table
									style="border-style: solid; border-color: #77bbff; width: 100%;">
									<tr style="padding: 10px;">
										<td style="width: 15%; min-width: 70px;"><select
											name="category" id="category"
											style="width: 90%; border-style: none;">
												<option value="all">통합</option>
												<option value="company" ${companySelected }>기업</option>
												<option value="post" ${postSelected }>채용</option>
										</select></td>
										<td style="width: 75%"><input type="text"
											name="searchWord" id="searchWord"
											placeholder="${placeholderText }"
											style="height:35px; width: 100%; border: none;" value="${searchWord }" /></td>
										<td style="width: 5% min-width: 30px;"><button
												style="background: transparent; border: none; cursor: pointer;">
												<i class="fa fa-search" style="font-size: 25px;"></i>
											</button></td>
									</tr>
								</table>
							</form>
					</div>

					<!-- 광고 -->
					<div class="col-md-3 d-md-block"
						style="padding-right: 0px; display: none;" align="right">
						<img style="width: 100%;height: 70px;"
							src="${home }/imgs/detailSearchView_AD.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="col-xl-2 d-xl-block" style="display: none;"></div>
	</div>