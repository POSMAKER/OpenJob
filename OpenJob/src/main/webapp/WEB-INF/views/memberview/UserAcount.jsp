<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>


<script data-turbolinks-track="true" src="https://jpassets.jobplanet.co.kr/assets/desktop_ko-c460c7b04b7a74de21da92c911d4cc9e3d889f312e1a211e184076212d22c3a1.js"></script>
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-bf2fe9f55ada3b96ff93fe40c25b3970fb9fc3bd2fc5ad76639215282b43c0b3.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-a2b99e9e6b29f675dfbb4cdf82ed1c871b26870560b4ce4ce50c79a304bcc493.css" media="all" rel="stylesheet" />


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


</head>








<body >
<div style="font-size: 16;">
<%@include file="/WEB-INF/views/common/menubar.jsp" %>
</div>


<form accept-charset="UTF-8" action="" class="new_user" id="new_user" method="post">


<!-- myPageInfo { -->
<div id="myPageInfoWrap" style=" height: 100px; margin-top: 57px;">
    <div id="myPageInfo">
        <span class="ico_me_l"></span>
        <div class="my_info">
            <h1 class="my_name notranslate" style="font-size: 28; margin-top: 10px;">user</h1>
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
                    <span  class="info tit">
                        계정
                    </span>
                </a>
                <!-- //내 정보 -->

				
                <!-- 팔로잉 -->
                <a href="${home }/Favorites" class="tab_box_a mypage_info_list myPageMyFollowing">
                    <span  class="following tit">
                        관심정보
                    </span>
                </a>
                <!-- //팔로잉 -->
				
				

                <!-- 저장 된 채용 정보 -->
                  <a href="${home }/SaveJobs" class="tab_box_a mypage_info_list myPageMyJob">
                    <span class="job tit">
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
                <li class="active">
                    <a href="${home }/UserAcount">
                        <span class="txt">나의 계정</span>
                        <span class="num notranslate"></span>
                    </a>
                </li>
                <li class="">
                    <a href="${home}/PasswordChange">
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
  <div class="layout_my_account myaccountcon">
    <div class="section_group">
      <h3 class="tit">계정</h3>
	  
	  
      <section class="my_information">
        <div class="my_information_group">
          <dl class="email">
            <dt>기본정보</dt>
            <dd>샘플입니다.<br /> 
			샘플입니다.<br /> 
			샘플입니다. 
			</dd>
          </dl>
          <!--email_list.scss.erb-->
<ul class="email_list">
</ul>
 
</div>
</section>
</div> <!--//section_group-->



<!--
<div class="myaccountcon_bottom">
  <div class="member_out">잡플래닛을 더 이상 이용하지 않는다면 
        <a href="/profile/wanttoleave" class="link_blue">회원탈퇴</a>
  </div>
</div>
-->
</div>     
</div>        
</div>
</div>
</div>
</form>

</body>




</html>