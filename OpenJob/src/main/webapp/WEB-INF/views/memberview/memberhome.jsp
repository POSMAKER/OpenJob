<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>

<head>
<title>회원가입 | open job</title>

<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-967caa84bcaa77744864a733840b1552b95a8a837d54bf02cb67ab0d0d01546f.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-9e36f0fd692409f5eace0c055e85be3ff81ae764dbec870d5ebb8e51092e9166.css" media="all" rel="stylesheet" />
<style type="text/css">

.btn_sign_up{
    height:200px;
    width:200px;
}
  #prismADP .ui-widget-header{ background: #cf0a2c; border-top: 3px solid #cf0a2c; margin:0; padding:0; border-radius: 0; overflow: hidden; }
  #prismADP .ui-widget-content{ background-color:rgba(255,255,255,0.5); }
  #prismADP{ line-height:0;-webkit-box-sizing:content-box;box-sizing:content-box; }
</style>
</head>




<body >
      
<div class="body_wrap" >

<div id="contents_wrap" >
    <div id="contents">
        <form accept-charset="UTF-8" action="/users" class="new_user" id="new_user" method="post" novalidate="novalidate"><div style="display:none"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Sy4/5GplE9itINmNiU+f7uUpU7lOM2y/yUMNcB05WQc=" /></div>
            <div id="signUpStep1Con" class="sign_con signup_con" >

    <div class="signUpstep1_wrap">
        <div class="sign_wrap">
            <h2 align="center">회원가입</h2>
           

            <section class="section_email er_r">
                <fieldset>
                 
                    <label class="email">
                            <span class="error_txt">잘못된 형식의 이메일 주소입니다.</span>
                        <span class="tit">이메일 주소</span>
                        <input autofocus="autofocus" data-valid="false" id="user_email" name="user[email]" placeholder="이메일 주소" type="email" value="" />
                    </label>
                    <label class="school_email" style="display: none">
                          <span class="error_txt">잘못된 형식의 이메일 주소입니다.</span>
                      <span class="tit">대학 이메일 주소</span>
                      <input autofocus="autofocus" data-valid="false" id="user_school_email" name="user[school_email]" placeholder="대학 이메일 주소" type="email" value="" />
                    </label>
                    <label class="password">
                        <span class="error_txt">올바르지 않은 비밀번호 형식입니다.</span>
                        <span class="tit">비밀번호 (8자리 이상)</span>
                        <input id="user_password" name="user[password]" placeholder="비밀번호 (8자리 이상)" type="password" value="" />
                    </label>
                    <label class="password_check">
                        <span class="error_txt">비밀번호가 다릅니다. 동일한 비밀번호를 입력해 주세요.</span>
                        <span class="tit">비밀번호 확인</span>
                        <input id="user_password_confirmation" name="user[password_confirmation]" placeholder="비밀번호 확인" type="password" value="" />
                    </label>
                    <button class="btn_sign_up" type="submit" style="height: 50px; width: 237px">이메일로 가입</button>
                </fieldset>
            </section>
        </div>
        <section class="section_login">
            <p class="login_check">
                이미 회원이세요?
                <a href="/users/sign_in">로그인</a>
            </p>
        </section>
        
    </div>
</div>

</form>    
</div>
</div>
</div>

</body>



</html>