<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>


<script data-turbolinks-track="true" src="https://jpassets.jobplanet.co.kr/assets/desktop_ko-c460c7b04b7a74de21da92c911d4cc9e3d889f312e1a211e184076212d22c3a1.js"></script>
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-bf2fe9f55ada3b96ff93fe40c25b3970fb9fc3bd2fc5ad76639215282b43c0b3.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-a2b99e9e6b29f675dfbb4cdf82ed1c871b26870560b4ce4ce50c79a304bcc493.css" media="all" rel="stylesheet" />

<!--  
<script>
    $(document).ready(function() {
        JobUI.desktop.myPageMyInformationMenu.initLnb(Option);
    });
</script>

<script>
    var feMobileCheck = new feUI.feMobileCheck;
    ;(function($) {
        $(function() {
            if( feMobileCheck.get() === true ){
                $('body').on('click', '.not_action', function(){
                    $(this).find('.um_tooltip').fadeToggle();
                });
            }
        });
    })(jQuery);
    var beforeUnload = function(e){
        $('body').off("click", ".not_action");
    };
    $(window).on('beforeunload', beforeUnload);
    $(document).on('page:before-change', beforeUnload);

    $.get("/emails");
</script>
-->

</head>








<body >
<div style="font-size: 16;">
<%@include file="/WEB-INF/views/common/menubar.jsp" %>
</div>


<form accept-charset="UTF-8" action="" class="" id="" method="post">


<!-- myPageInfo { -->
<div id="myPageInfoWrap" style=" height: 100px; margin-top: 57px;">
    <div id="myPageInfo">
        <span class="ico_me_l"></span>
        <div class="my_info">
            <h1 class="my_name notranslate" style="font-size: 28; margin-top: 10px;">${userAcount.email}</h1>
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
                <a href="${home }/UserAcount" class="tab_box_a mypage_info_list myPageMyInformationMyAccount" style="background-color: #48c454;">
                    <span  class="info tit" style="font-size:15px; font-weight:bold; color: white;">
                        계정
                    </span>
                </a>
                <!-- //내 정보 -->

				
                <!-- 팔로잉 -->
                <a href="${home }/Favorites" class="tab_box_a mypage_info_list myPageMyFollowing">
                    <span  class="following tit" style="font-size:15px;">
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
            <h2>계정</h2>
            <ul>
                <li class="">
                    <a href="${home }/UserAcount">
                        <span class="txt">나의 계정</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
                <li class="active">
                    <a href="${home }/PaswordChange">
                        <span class="txt">비밀번호 변경</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
               
               
                <li class="">
                  <a href="${home }/MemberOut">
                    <span class="txt">회원탈퇴</span>
                    <span class="num notranslate"></span>
                  </a>
                </li>
				
            </ul>
        </nav>
    </div>
</div>


</div>
        
        
 
 
 
        
        
<div id="mainContents" class="jpcont_rgt">
<div class="jpcont_wrap">
    <div class="layout_my_account my_information_my_password">
        <div class="section_group">
        <div>&nbsp</div>
            <h3 class="" style="font-size: 22; margin-left: 25; margin-top: 10; font-weight: bold;">비밀번호 변경</h3>
    		<hr style="border-top: 1px solid #b9b9b9;">

            <input id="user_reset_password_token" name="user[reset_password_token]" type="hidden"/>
            <label class="frow_ty1 my_information_list now_pw" id="now_pw" style="margin-top: 50; margin-left: 200">
                <span class="label_tit" >현재 비밀번호</span>
                <div class="iptwrap_ty1 placeholder" style="margin-top: 5">
                    <input class="input_ty1" id="user_current_password" name="user[current_password]" pattern=".{8,}" placeholder="비밀번호(8자리 이상)" title="비밀번호는 8자 이상이어야 합니다." type="password" />
                </div>
                <p class="error_txt"></p>
            </label>

            <label class="frow_ty1 my_information_list new_pw" id="new_pw" style="margin-left: 200">
                <span class="label_tit">새 비밀번호</span>
                <div class="iptwrap_ty1 placeholder" style="margin-top: 5">
                    <input class="input_ty1" id="user_password" name="user[password]" pattern=".{8,}" placeholder="비밀번호(8자리 이상)" title="비밀번호는 8자 이상이어야 합니다." type="password" />
                </div>
                <p class="error_txt"></p>
            </label>

            <label class="frow_ty1 mb0 my_information_list confirm_pw" id="confirm_pw" style="margin-left: 200">
                <div class="iptwrap_ty1 placeholder">
                    <input class="input_ty1" id="user_password_confirmation" name="user[password_confirmation]" pattern=".{8,}" placeholder="비밀번호 확인" title="비밀번호는 8자 이상이어야 합니다." type="password" />
                </div>
                <p class="error_txt"></p>
            </label>
            <button type="submit" class="btn_ty3" style="margin-left: 200; margin-bottom: 50;">비밀번호 변경</button>
      </div>
    </div>
</div>  
</div> 











</div>
</div>
</form>

</body>




</html>