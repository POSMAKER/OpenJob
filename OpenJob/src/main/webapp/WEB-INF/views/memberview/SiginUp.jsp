<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>

<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-967caa84bcaa77744864a733840b1552b95a8a837d54bf02cb67ab0d0d01546f.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-9e36f0fd692409f5eace0c055e85be3ff81ae764dbec870d5ebb8e51092e9166.css" media="all" rel="stylesheet" />


<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/any_language/d/controller/users-5d0df45e6d3124658237a147725b039606a4452645fb1134e90af4d19b22704a.css" media="all" rel="stylesheet" />


</head>








<body >
<div style="font-size: 16;">
<%@include file="/WEB-INF/views/common/menubar.jsp" %>
</div>


<form accept-charset="UTF-8" action="${home }/insertproc" class="new_user" id="new_user" method="post">

	
	
	
	
<div class="signup_flow_wrap flow_type1" style="width:500px; height:700px; margin-top: 80px;">

<div class="goodjob_sign_up">
<div class="goodjobweb_group">





<div class="goodjob_header" style="margin-top: 30px;">
<h1 style="font-size: 25; font-weight: bold;" align="center">회원가입</h1>



<div class="" style="margin-top: 16">
<h3 class="goodjob_qtitle" style="margin-bottom: 13">이메일</h3>

<label style="width: 412; background-color: #d6d6d6">
<input placeholder="이메일 주소" type="text" class="input_ty1 autocomplete_input undefined"   name="email" id="gjsignup_1523_4_0" value="" style="background-color: #fafafa;">
</label>

</div>













<div class="input_group frow_ty1 auto_1523_4" style="margin-top: 16">
<h3 class="goodjob_qtitle" style="margin-bottom: 13">비밀번호</h3>

<label style="width: 412; background-color: #d6d6d6">
<input type="password" class="input_ty1 autocomplete_input undefined"  placeholder="비밀번호 (8자리 이상)" name="password" id="gjsignup_1523_4_0" value="" style="background-color: #fafafa;">
</label>

<label style="width: 412; background-color: #d6d6d6">
<input type="password" class="input_ty1 autocomplete_input undefined"  placeholder="비밀번호 확인" name="" id="gjsignup_1523_4_0" value="" style="background-color: #fafafa;">
</label>
</div>


















<div class="goodjob_header" style="margin-top: 20">
<h3 class="goodjob_qtitle">성별을 알려주세요.</h3>
</div>



<div id="154" class="radio_gruop">
<label class="btn_radio" for="gjsignup_154_0_0">
<input  class="radio_icon" type="radio" name="gender" value="M" checked> 
<span class="radio_txt">남자</span>
</label>

<label class="btn_radio" for="gjsignup_154_0_1">
<input  class="radio_icon" type="radio" name="gender" value="F"> 
<span class="radio_txt">여자</span>
</label>
</div>







<div class="input_group frow_ty1 auto_1523_4" style="margin-top: 16">
<h3 class="goodjob_qtitle" style="margin-bottom: 13">나이를 알려주세요.</h3>

<label style="width: 412; background-color: #d6d6d6">
<input type="text" class="input_ty1 autocomplete_input undefined"  placeholder="예) 25" name="age" id="gjsignup_1523_4_0" value="" style="background-color: #fafafa;">
</label>

</div>




<div class="input_group frow_ty1 auto_1523_4" style="margin-top: 16">
<h3 class="goodjob_qtitle" style="margin-bottom: 13">경력을 알려주세요.</h3>

<label style="width: 412; background-color: #d6d6d6">
<input type="text" class="input_ty1 autocomplete_input undefined"  placeholder="예) 3" name="career" id="gjsignup_1523_4_0" value="" style="background-color: #fafafa;">
</label>

</div>


<div class="goodjobweb_btn" style="margin-top: 10;">
<button id="gj_submit" class="btn_ty1 btn_ok" type="submit" style="width: 300">가입하기</button>
</div>


<p class="login_check" align="center" style="font-size: 15px;">
이미 회원이세요?
<a href="${home }/MemberLogin" style="color: blue;">로그인</a>
</p>

</div>
</div>
</div>



           
        
</div>


</form>
</body>




</html>