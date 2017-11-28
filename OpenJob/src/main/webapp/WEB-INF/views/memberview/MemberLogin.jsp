<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>

<head>
<title>로그인 | open job</title>
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-9e36f0fd692409f5eace0c055e85be3ff81ae764dbec870d5ebb8e51092e9166.css" media="all" rel="stylesheet" />

<!--  
<style>
body {
    background-color: #ebecee;
}
.sign_main {
    background-color: #ffffff;
    width: 300px;
    padding: 60px;
    margin: 150px auto auto auto;
}
.email {
    background-color: white;
    color: black;
    border: 5px solid #e7e7e7;
    
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    
    cursor: pointer;
}
</style>
-->
</head>



<body >
<%@include file="/WEB-INF/views/common/menubar.jsp" %>    

<form action="${home }/loginproc" method="post">


    <div class="signUpstep1_wrap" style="margin-top: 150px;">
    
    
        <div class="sign_wrap">
            <h2 align="center">로그인</h2>
<div style="font-size: 14; color: red; margin-top: 15">            
${msg }
</div>
           
            <section class="section_email er_r">
                <fieldset>
                
                    <label class="email">
                        <span class="tit">이메일 주소</span>
                        <input  id="user_email" name="email" placeholder="이메일 주소" type="text" value="" />
                    </label>
                    
                    <label class="password">
                        <input id="userpassword" name="password" placeholder="비밀번호" type="password" value="" />
                    </label>
                    
                    
                    <button class="btn_sign_up" type="submit" style="height: 50px; width: 237px;">로그인</button>
                </fieldset>
            </section>
            
        </div>
        
        
    </div>


</form>    
</body>



</html>