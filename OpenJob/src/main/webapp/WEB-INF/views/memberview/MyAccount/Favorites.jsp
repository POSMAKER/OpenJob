<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    




<html>


<head>



<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-bf2fe9f55ada3b96ff93fe40c25b3970fb9fc3bd2fc5ad76639215282b43c0b3.css" media="all" rel="stylesheet" />



<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-a2b99e9e6b29f675dfbb4cdf82ed1c871b26870560b4ce4ce50c79a304bcc493.css" media="all" rel="stylesheet" />





</head>








<body >
<div style="font-size: 16;">
<%@include file="/WEB-INF/views/common/menubar.jsp" %>
</div>


<form accept-charset="UTF-8" action="" class="new_user" id="new_user" method="post" style="padding-top:0px;">


<!-- myPageInfo { -->
<div id="myPageInfoWrap" style=" height: 100px; margin-top: 57px;">
    <div id="myPageInfo">
        <span class="ico_me_l"></span>
        <div class="my_info">
            <h1 class="my_name notranslate" style="font-size: 28; margin-top: 10px;">${USER.email}</h1>
        </div>
    </div>
</div>
<!-- } myPageInfo -->



<!-- myPageMenu { -->
<div id="myPageMenuWrap">
    <div id="myPageMenu">
        <div class="mypagemenu_wrap">
            <div class="table_row_div">
			
                <!-- 내 정보 -->
                <a href="${home }/UserAcount" class="tab_box_a mypage_info_list myPageMyInformationMyAccount">
                    <span  class="info tit" style="font-size:15px;">
                        계정
                    </span>
                </a>
                <!-- //내 정보 -->

				
                <!-- 팔로잉 -->
                <a href="${home }/Favorites" class="tab_box_a mypage_info_list myPageMyFollowing" style="background-color: #48c454;">
                    <span  class="following tit" style="font-size:15px; font-weight:bold; color: white;">
                        관심정보
                    </span>
                </a>
                <!-- //팔로잉 -->
				
				

                <!-- 저장 된 채용 정보 -->
                  <a href="${home }/SaveJobs" class="tab_box_a mypage_info_list myPageMyJob">
                    <span class="job tit" style="font-size:15px;">
                        저장된 채용
                    </span>
                  </a>
                <!--// 저장 된 채용 정보 -->


            </div>
        </div>
    </div>
</div>
<!-- } myPageMenu -->





<div id="contents_wrap">
<div id="contents" class="jpcont_col2_c">
        
<div id="sideContents" class="jpcont_lft">
<div class="jpcont_wrap">
    <div id="myPageMyInformationMenu" class="mypage_menu">
        <nav id="profile-left-menu">
            <h2>관심정보</h2>
            <ul>
                <li class="active">
                    <a href="${home }/Favorites">
                        <span class="txt">팔로잉 기업</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
                           
				
            </ul>
        </nav>
    </div>
</div>
</div>




<div id="mainContents" class="jpcont_rgt" >
<div class="jpcont_wrap" >
<div class="layout_my_account myaccountcon">
      
  
<div class="" >
<div>&nbsp</div>
<h3 class="" style="font-size: 22; margin-left: 25; margin-top: 10; font-weight: bold;">팔로잉 기업</h3>
<hr style="border-top: 1px solid #b9b9b9;">

     

      
<div class="my_information_group">
<h3 style="font-size: 18; margin-bottom: 25"> 파로잉된 기업</h3>


<div class="" style="width: 660px; height: auto; font-size: 17px;" align="center">
<table class="">
	<tr>
		<th style="font-size: 16px; font-weight: bold; background: #f1f1f1; border-bottom: 1px solid #b9b9b9;"> 기업 이름 </th>
		<th style="font-size: 16px; font-weight: bold; background: #f1f1f1; border-bottom: 1px solid #b9b9b9;"> 주소 </th>
		<th style="font-size: 16px; font-weight: bold; background: #f1f1f1; border-bottom: 1px solid #b9b9b9;"> 산업 </th>
		<th style="font-size: 16px; font-weight: bold; background: #f1f1f1; border-bottom: 1px solid #b9b9b9;"> 상세보기 </th>
	</tr>
				
	 <c:forEach var="item" items="${followCompanyList}">
		<tr style="margin-top: 150;">
			<td style="font-size: 16px; ">${item.companyname}</td>
			<td style="font-size: 16px; ">${item.address }</td>
			<td style="font-size: 16px; ">${item.industry }</td>
			<td style="font-size: 16px; color: blue;"><a onclick="window.open('${home }/company/${item.companyno}/info');">상세보기</a></td>
		</tr>
	</c:forEach>
	
</table>	 
</div> 
</br>
</br>           			
</div>
   
 
  
     
     
     
 
</div>

</div>



</div>     
</div>        
</div>
</div>

</form>

</body>




</html>