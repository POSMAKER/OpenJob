<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>

<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-967caa84bcaa77744864a733840b1552b95a8a837d54bf02cb67ab0d0d01546f.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-9e36f0fd692409f5eace0c055e85be3ff81ae764dbec870d5ebb8e51092e9166.css" media="all" rel="stylesheet" />

<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/any_language/d/controller/users-5d0df45e6d3124658237a147725b039606a4452645fb1134e90af4d19b22704a.css" media="all" rel="stylesheet" />

<script>
    ;(function($) {
        "use strict";
        $(function() {
            SignUp.register_validation();
            var page1 = {
                $el: $('#signUpStep1Con'),
                constraint: {
                    email: { presence: true, email: true },
                    password: { presence: true, length: { minimum: 8 } },
                    password_confirmation: { presence: true, equality: 'password' },
                    email_check: { duplicated: true, mx_record_not_found: true, is_school_email: true, is_banned: true }
                },
                initialize: function() {
                    var self = this;
                    self.$email = self.$el.find('#user_email');
                    self.$password = self.$el.find('#user_password');
                    self.$password_confirmation = self.$el.find('#user_password_confirmation');
                },
                validate: function() {
                  var self = this;
                  var after_validation = false;
                  var translation_string = {
                    duplicated: '이미 가입된 이메일입니다.',
                    invalid_domain: '잘못된 형식의 이메일 주소입니다.', 
                    email_blank: '이메일 주소를 입력해 주세요.',
                    invalid_email: '잘못된 형식의 이메일 주소입니다.',
                    password_blank: '비밀번호를 입력해 주세요',
                    invalid_password: '비밀번호는 8자리 이상 입력해주세요.',
                    is_school_email: '대학 이메일이 아닌 다른 이메일로 가입해 주세요.',
                    is_banned: '입력하신 이메일 주소로는 원활한 서비스 이용이 어렵습니다. 다른 이메일 주소로 가입해 주세요.'
                  };
                  var result = validate({
                    email: self.$email.val(),
                    password: self.$password.val(),
                    password_confirmation: self.$password_confirmation.val(),
                    email_check: SignUp.check_email_and_domain(self.$email.val()),
                  }, self.constraint);

                  after_validation = SignUp.validation_check(
                      result,
                      translation_string,
                      {
                        $email: self.$email,
                        $password: self.$password,
                        $password_confirmation: self.$password_confirmation
                      }
                  );

                  return after_validation;
                },
                show: function() {
                    this.$el.show();
                },
                hide: function() {
                    this.$el.hide();
                }
            };
            var page2 = {
                $el: $('#signUpStep2Con'),
                initialize: function() {
                    var self = this;

                    self.$tos_service = self.$el.find('#user_tos_service');
                    self.$tos_privacy = self.$el.find('#user_tos_privacy');
                    self.$subscribe_notice = self.$el.find('#user_subscribe_notice');

                    self.$btn = self.$el.find('.btn_group > .btn_ty3');

                    self.$agree_all = self.$el.find('#agree_all');
                    self.$agree_all.on('click', function(event) {
                        var checked = $(this).prop('checked');
                        self.$el.find('input:checkbox').prop('checked', checked);

                        if (self.validate()) {
                            self.$btn.addClass('active');
                        } else {
                            self.$btn.removeClass('active');
                        }
                    });
                    self.$subscribe_notice.on('click', function(event) {
                        var checked = $(this).prop('checked');
                        if (!checked) {
                            self.$agree_all.prop('checked', checked);
                        }
                    });
                    self.$el.find('input:checkbox').on('change', function(event) {
                        if (self.validate()) {
                            self.$btn.addClass('active');
                        } else {
                            self.$btn.removeClass('active');
                        }
                    });
                },
                validate: function() {
                    var self = this;

                    var tos_service_agreed = self.$tos_service.prop('checked');
                    var tos_privacy_agreed = self.$tos_privacy.prop('checked');

                    if (!tos_service_agreed) {
                        self.$tos_service.focus();
                    }

                    if (!tos_privacy_agreed) {
                        self.$tos_privacy.focus();
                    }

                    return tos_service_agreed && tos_privacy_agreed; 
                },
                show: function() {
                    this.$el.show();
                },
                hide: function() {
                    this.$el.hide();
                }
            };

            var form = {
                $el: $('#new_user'),
                initialize: function() {
                    if (!window.navigator.userAgent.match(/MSIE [8,9].0|Safari/)) {
                        window.onpopstate = function(event) {
                            stack--;
                            if (0 > stack || confirm('동의 없이 이 페이지를 벗어나시면 가입이 취소됩니다.  이 페이지에서 벗어나시겠습니까?')) {
                                window.history.back();
                            } else {
                                stack++;
                                window.history.pushState(null, null, location.pathname);
                            }
                        };
                        window.history.pushState(null, null, location.pathname);
                        var stack = 1;
                    }

                    page1.initialize();
                    page2.initialize();

                    var self = this;
                    self.pages = [page1, page2];
                    if ('' && page1.validate()) {
                        self.current_view = page2;
                    } else {
                        self.current_view = page1;
                    }
                    self.show(self.current_view);

                    self.$el.on('submit', function(event) {
                        var last_page = _.last(self.pages);
                        if (!self.current_view.validate()) {
                            return false;
                        }

                        if (self.current_view !== last_page) {
                            event.preventDefault();
                            var next_page = self.pages[_.indexOf(self.pages, self.current_view) + 1];
                            self.show(next_page);
                        } else {
                            var results = _.each(self.pages, function(page) {
                                return page.validate();
                            });
                        }
                    });
                },
                show: function(view) {
                    var self = this;

                    _.each(_.without(self.pages, view), function(v) {
                        v.hide();
                    });
                    self.current_view = view;
                    self.current_view.show();
                }
            };
            form.initialize();
        });
    })(jQuery);
</script>

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
<h3 class="tit" style="margin-bottom: 13">이메일</h3>

<label class="email" style="width: 412; background-color: #d6d6d6">
<span class="error_txt">잘못된 형식의 이메일 주소입니다.</span>
<input autofocus="autofocus" data-valid="false" placeholder="이메일 주소" type="email" class="input_ty1 autocomplete_input undefined"   name="email" id="user_school_email" value="" style="background-color: #fafafa;">
</label>

</div>













<div class="input_group frow_ty1 auto_1523_4" style="margin-top: 16">
<h3 class="goodjob_qtitle" style="margin-bottom: 13">비밀번호</h3>

<label class="password" style="width: 412; background-color: #d6d6d6">
<span class="error_txt">올바르지 않은 비밀번호 형식입니다.</span>
<input type="password" class="input_ty1 autocomplete_input undefined"  placeholder="비밀번호 (8자리 이상)" name="password" id="user_password" value="" style="background-color: #fafafa;">
</label>

<label  class="password_check" style="width: 412; background-color: #d6d6d6">
<span class="error_txt">비밀번호가 다릅니다. 동일한 비밀번호를 입력해 주세요.</span>
<input type="password" class="input_ty1 autocomplete_input undefined"  placeholder="비밀번호 확인" name="" id="user_password_confirmation" value="" style="background-color: #fafafa;">
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