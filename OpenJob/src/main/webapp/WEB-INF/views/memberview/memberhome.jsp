<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    




<html>


<head>

<script data-turbolinks-track="true" src="https://jpassets.jobplanet.co.kr/assets/desktop_ko-c460c7b04b7a74de21da92c911d4cc9e3d889f312e1a211e184076212d22c3a1.js"></script>
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_any_language_newtemp-967caa84bcaa77744864a733840b1552b95a8a837d54bf02cb67ab0d0d01546f.css" media="all" rel="stylesheet" />
<link data-turbolinks-track="true" href="https://jpassets.jobplanet.co.kr/assets/desktop_ko-KR_newtemp-9e36f0fd692409f5eace0c055e85be3ff81ae764dbec870d5ebb8e51092e9166.css" media="all" rel="stylesheet" />

<link data-turbolinks-trak="true" href="https://jpassets.jobplanet.co.kr/assets/any_language/d/controller/users-5d0df45e6d3124658237a147725b039606a4452645fb1134e90af4d19b22704a.css" media="all" rel="stylesheet" />


<script>
;(function($) {
    "use strict";
    $(function() {
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
                page2.initialize();

                var self = this;
                self.pages = [page2];
                self.current_view = page2;
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


<form accept-charset="UTF-8" action="${home }/SiginUp" class="new_user" id="new_user" method="post">
<div id="signUpStep2Con" class="signUpTermsCon new_terms" style="margin-top: 80px;">
  <div class="terms_top">
    <h2>전체동의</h2>
    <label class="btn_check round">
      <input id="agree_all" name="" type="checkbox" class="cscheck">
      <span class="check_icon"></span>
    </label>
  </div>
  <div class="terms_body">
    <div class="title1">
      <h2>개인정보 회원 이용약관 동의 <span class='txt_gra'>(필수)</span></h2>
      <label class="btn_check round" for="user_tos_service">
        <input id="user_tos_service" name="" type="checkbox" class="cscheck">
        <span class="check_icon"></span>
      </label>
    </div>
    <div class="con1">
      <div class="con_wrap">
          <div>
    <section class="guidec_01">
        <h2 class="notranslate">오픈잡 이용약관</h2>
        <p class="sub_tit01 notranslate">오픈잡 관련 제반 서비스의 이용과 관련하여 필요한 사항을 규정합니다.</p>
        <p class="sub_tit02 notranslate">"회사"는 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 '정보통신망법'), 개인정보 보호법, 통신비밀보호법, 전기통신사업법 등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보취급/처리방침을 정하여 이용자의 권익 보호에 최선을 다하고 있습니다.</p>
        <ol class="index_1">
            <li class="notranslate"><span class="num">제 1조</span>목적</li>
            <li class="notranslate"><span class="num">제 2조</span>용어의 정의</li>
            <li class="notranslate"><span class="num">제 3조</span>약관의 명시와 개정</li>
            <li class="notranslate"><span class="num">제 4조</span>약관의 해석</li>
            <li class="notranslate"><span class="num">제 5조</span>이용계약의 성립</li>
            <li class="notranslate"><span class="num">제 6조</span>이용신청의 승낙과 제한</li>
            <li class="notranslate"><span class="num">제 7조</span>서비스의 내용</li>
            <li class="notranslate"><span class="num">제 8조</span>서비스 이용시간</li>
            <li class="notranslate"><span class="num">제 9조</span>서비스 제공의 중지</li>
            <li class="notranslate"><span class="num">제 10조</span>"회원"에 대한 통지와 공지</li>
            <li class="notranslate"><span class="num">제 11조</span>정보의 제공 및 광고의 게재</li>
        </ol>    
        <ol class="index_1">    
            <li class="notranslate"><span class="num">제 12조</span>콘텐츠의 책임과 "회사"의 정보 수정 권한</li>
            <li class="notranslate"><span class="num">제 13조</span>콘텐츠의 권한 및 활용</li>
            <li class="notranslate"><span class="num">제 14조</span>게시물의 저작권</li>
            <li class="notranslate"><span class="num">제 15조</span>게시물의 관리</li>
            <li class="notranslate"><span class="num">제 16조</span>권리의 귀속</li>
            <li class="notranslate"><span class="num">제 17조</span>"회사"의 의무</li>
            <li class="notranslate"><span class="num">제 18조</span>회원의 의무</li>
            <li class="notranslate"><span class="num">제 19조</span>회원탈퇴 및 회원자격 상실</li>
            <li class="notranslate"><span class="num">제 20조</span>손해배상</li>
            <li class="notranslate"><span class="num">제 21조</span>"회원"의 개인정보보호</li>
            <li class="notranslate"><span class="num">제 22조</span>분쟁의 해결</li>
        </ol>
    </section>
    <section class="guidec_02">
        <h3>제 1 조 (목적)</h3>
        <p>본 약관은 주식회사 브레인커머스(이하 "회사")가 제공하는 오픈잡(jobplanet)및 오픈잡 관련제반 서비스의 이용과 관련하여 "회사"와 회원간의 권리, 의무 및 책임사항 기타 필요한 사항을 규정함을 목적으로 한다.</p>

        <h3>제 2 조 (용어의 정의)</h3>
        <p>이 약관에서 사용하는 용어의 정의는 아래와 같다.</p>
        <ul>
            <li>1. "서비스"라 함은 PC, TV, 휴대용 단말기 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 "회사"가 제공하는 모든 인터넷 서비스를 말하며, "회사"가 공개한 API를 이용하여 제3자가 개발 또는 구축한 프로그램이나 서비스를 통하여 이용 고객 또는 회원에게 제공되는 경우를 포함한다.</li>
            <li>2. "회원"이라 함은 서비스를 이용하기 위하여 동 약관에 동의하거나 페이스북 등 연동 된 서비스를 통해 "회사"와 이용 계약을 체결한 자를 말한다.</li>
            <li>3. "아이디"라 함은 회원의 식별과 회원의 서비스 이용을 위하여 "회원"이 가입 시 사용한 이메일 주소를 말한다.</li>
            <li>4. "비밀번호"라 함은 "회사"의 서비스를 이용하려는 사람이 아이디를 부여 받은 자와 동일인임을 확인하고 "회원"의 권익을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.</li>
            <li>5. "비회원"이라 함은 "회원"에 가입하지 않고 "회사"가 제공하는 서비스를 이용하는 자를 말한다.</li>
        </ul>

        <h3>제 3 조 (약관의 명시와 개정)</h3>
            <ul>
                <li>1. "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 "회원"이 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 "회원"에게 공지해야 한다.</li>
                <li>2. "회사"는 약관의규제관한법률, 전기통신기본법, 전기통신사업법, 정보통신망법, 통신비밀보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.</li>
                <li>3. “회사”가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 제1항의 방식에 따라 그 개정약관의 적용일자 15일 전부터 적용일자 전일까지 공지한다. 다만, “회원”에게 불리한 약관의 개정의 경우에는 공지 외에 일정기간 서비스 내 전자우편, 로그인시 동의창 등의 전자적 수단을 통해 따로 명확히 통지하도록 한다.</li>
                <li>4. "회사"가 전항에 따라 개정약관을 공지 또는 통지하면서 회원에게 개정약관 시행일로부터 7일 기간 내에 거부 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 본다.</li>
                <li>5. "회원"이 개정약관의 적용에 동의하지 않는 경우 "회사"는 개정 약관의 내용을 적용할 수 없으며, 이 경우 "회원"은 이용계약을 해지할 수 있다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 "회사"는 이용계약을 해지할 수 있다.</li>
            </ul>
            
        <h3>제 4 조 (약관의 해석)</h3>
        <ul>
            <li>1. 이 약관에서 규정하지 않은 사항에 관해서는 약관의규제관한법률, 전기통신기본법, 전기통신사업법, 정보통신망법 등의 관계법령에 따른다.</li>
            <li>2. "회원"이 "회사"와 개별 계약을 체결하여 서비스를 이용하는 경우에는 개별 서비스 계약이 우선한다.</li>
        </ul>

        <h3>제 5 조 (이용계약의 성립)</h3>
        <ul>
            <li>1. "회사"의 서비스 이용계약(이하 "이용계약")은 "회원"이 되고자 하는 자(이하 "가입신청자")가 본 약관과 개인정보취급방침을 읽고 그 내용에 대하여 동의를 한 다음 회원가입 신청을 하고 "회사"가 이러한 신청에 승낙함으로써 성립된다.</li>
            <li>2. 제1항 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있다. "회원"은 본인 인증에 필요한 이름, 생년월일, 연락처 등을 제공하여야 한다.</li>
            <li>3. 페이스북 등 외부 서비스와의 연동을 통해 이용계약을 신청할 경우, 본 약관과 개인정보취급방침, 서비스 제공을 위해 "회사"의 "가입신청자의 외부 서비스 계정 정보 접근 및 활용에 "동의" 또는 "확인" 버튼을 누르면 "회사"가 승낙함으로써 이용계약이 성립된다.</li>
        </ul>

        <h3>제 6 조 (이용신청의 승낙과 제한)</h3>
        <ul>
            <li>1. "회사"는 전조의 규정에 의한 "가입신청자"의 가입신청에 대하여 업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수 순서에 따라 서비스 이용을 승낙한다.</li>
            <li>2. "회사"는 아래 사항에 해당하는 경우에 대해서는 이용 신청을 승낙하지 아니한다.</li>
            <li>가. 실명이 아니거나 타인의 명의를 이용하여 신청한 경우</li>
            <li>나. 이용계약 신청서의 내용을 허위로 기재한 경우</li>
            <li>3. "회사"는 아래 사항에 해당하는 경우에는 그 신청에 대하여 승낙 제한 사유가 해소될 때까지 승낙을 유보할 수 있다.</li>
            <li>가. "회사"가 설비의 여유가 없는 경우</li>
            <li>나. "회사"의 기술상 지장이 있는 경우</li>
            <li>다. 기타 "회사"의 귀책 사유로 이용 승낙이 곤란한 경우</li>
        </ul>

        <h3>제 7 조 (서비스의 내용)</h3>
        <ul>
            <li>1. "회사"가 "회원"에게 제공하는 서비스의 내용은 다음 각 호와 같다.</li>
            <li>가. 면접, 연봉, 기업 후기 등록과 조회 서비스</li>
            <li>나. 기업 정보 조회와 관련된 제반 서비스</li>
            <li>다. 이용자 간의 교류와 소통에 관련한 서비스</li>
            <li>라. 기업의 채용 정보를 제공하고 지원하는 행위와 관련된 제반 서비스</li>
            <li>마. 헤드헌팅 및 outsourcing, 채용대행, 이·전직 상담과 관련된 서비스</li>
            <li>바. 기타 "회사"가 추가 개발하거나 제휴 계약 등을 통해 "회원"에게 제공하는 일체의 서비스</li>
            <li>2. "회사"는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있다. 단, 이 경우 "회사"는 추가 또는 변경내용을 "회원"에게 공지해야 한다.</li>
        </ul>
        
        <h3>제 8 조 (서비스 이용시간)</h3>
        <ul>
            <li>1. "회사"는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공한다. 다만, "회사"는 서비스의 종류나 성질에 따라 제공하는 서비스 중 일부에 대해서는 별도로 이용시간을 정할 수 있으며, 이 경우 "회사"는 그 이용시간을 사전에 "회원"에게 공지 또는 통지하여야 한다.</li>
            <li>2. "회사"는 자료의 가공과 갱신을 위한 시스템 작업시간, 장애해결을 위한 보수작업 시간, 회선 장애 등이 발생한 경우 일시적으로 서비스를 중단할 수 있으며 계획된 작업의 경우 공지란에 서비스 중단 시간과 작업 내용을 알려야 한다.</li>
        </ul>

        <h3>제 9 조 (서비스 제공의 중지)</h3>
        <ul>
            <li>"회사"는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있다.</li>
            <li>1. 설비의 보수 등 "회사"의 필요에 의해 사전에 "회원"들에게 통지한 경우</li>
            <li>2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우</li>
            <li>3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우</li>
        </ul>

        <h3>제 10 조 ("회원"에 대한 통지와 공지)</h3>
        <ul>
            <li>1. "회사"가 "회원"에 대한 통지를 하는 경우 이 약관에 별도 규정이 없는 한 회원의 등록된 전자우편 주소로 이메일을 통하여 할 수 있다. </li>
            <li>2.  "회사"는 "회원" 전체에 대한 통지의 경우 7일 이상 "회사"의 공지란에 공지하거나 서비스 첫 화면에 게시함으로써 제1항의 통지에 갈음할 수 있다.</li>
        </ul>

        <h3>제 11 조 (정보의 제공 및 광고의 게재)</h3>
        <ul>
            <li>1. "회사"는 "회원"에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원대상의 서비스 소개 등의 목적으로 하는 각종 정보를 공지사항이나 서비스 화면, 전자우편, 푸시 알림 등을 이용한 방법으로 제공할 수 있다.</li>
            <li>2. "회사"는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지 등에 게재할 수 있으며, "회원"들에게 전자우편을 통해 알릴 수 있다.</li>
            <li>3. "회사"는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 "회원"이 참여하거나 교신 또는 거래를 함으로써 발생하는 모든 손실과 손해에 대해 책임을 지지 않는다.</li>
            <li>4. "회원"은 서비스 이용 시 노출되는 광고게재에 대해 동의하는 것으로 간주한다.</li>
        </ul>

        <h3>제 12 조 (콘텐츠의 책임과 "회사"의 정보 수정 권한)</h3>
        <ul>
            <li>1. 콘텐츠는 "회원"이 작성 및 등록한 면접 후기와 기업 후기, 연봉 정보에 관한 게시물을 말하며, 그 외에 "회원"이 서비스 내에서 작성하여 게시하는 글 등은 기타 게시물이라 한다.</li>
            <li>2. "회원"은 콘텐츠를 사실에 근거하여 성실하게 작성해야 하며, "회원" 본인이 작성하는 것을 원칙으로 한다.</li>
            <li>3. "회사"는 "회원"이 작성한 콘텐츠를 검토하여 "커뮤니티가이드라인" 및 제17조 회원의 의무에 명시된 조건에 문제가 없을 경우 "사이트"에 게시하는 방식의 필터링 작업을 수행하며, 이 작업에서 "커뮤니티가이드라인" 및 제17 조 회원의 의무 위반으로 판단되어 게시가 허락되지 않을 경우 "회원"에게 사전 통보 없이 "사이트"에 게시되지 않는다.</li>
            <li>4. 콘텐츠 내용에 오자, 탈자 또는 사회적 통념에 어긋나는 문구와 내용, 명백하게 허위의 사실에 기초한 내용이 있을 경우 "회사"는 이를 언제든지 삭제하거나 수정할 수 있다.</li>
        </ul>

        <h3>제 13 조 (콘텐츠의 권한 및 활용)</h3>
        <ul>
            <li>1. "회원"이 입력한 콘텐츠는 "회사"가 제공하는 서비스를 통하여 익명으로 공개된다.</li>
            <li>2. "회사"는 "회원"이 입력한 콘텐츠를 취업 및 관련 동향의 통계 자료 작성에 익명으로 사용할 수 있고, 위 자료는 매체를 통해 언론에 배포될 수 있다.</li>
        </ul>

        <h3>제 14 조 (게시물의 저작권)</h3>
        <ul>
            <li>1. "회원"이 서비스 내에 게시한 게시물의 저작권은 해당 게시물의 저작자에게 귀속된다. 다만 “회원”은 서비스를 통해 게시물을 제출, 게시함으로써 “회사”에 대하여 게시물에 대한 이용, 복사, 복제, 처리, 각색, 변경, 공개, 전송, 게재 또는 배포할 수 있는 독점적이며 무상의 저작사용권(2차 저작사용권을 허여 할 수 있는 권리 포함)을 부여한 것으로 간주된다.</li>
            <li>2. "회원"이 서비스 내에 게시하는 게시물은 검색결과 내지 서비스 및 관련 프로모션 등에 노출될 수 있으며, 해당 노출을 위해 필요한 범위 내에서는 일부 수정, 복제, 편집되어 게시될 수 있다. 이 경우, "회사"는 저작권법 규정을 준수하며, "회원"은 언제든지 "서비스"내 관리기능을 통해 해당 게시물에 대해 삭제, 검색결과 제외, 비공개 등의 조치를 취할 수 있다.</li>
        </ul>
        
        <h3>제 15 조 (게시물의 관리)</h3>
        <ul>
            <li>1. "회원"의 게시물이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 한다.</li>
            <li>2. "회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 "회사" 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시조치 등을 취할 수 있다.</li>
            <li>3. 본 조에 따른 세부절차는 "정보통신망법" 및 "저작권법"이 규정한 범위 내에서 "회사"가 정한 "게시중단요청서비스"절차에 따른다.</li>
        </ul>

        <h3>제 16 조 (권리의 귀속)</h3>
        <ul>
            <li>1. "서비스"에 대한 저작권 및 지적재산권은 "회사"에 귀속된다. 단, "회원"의 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외된다.</li>
            <li>2. "회사"는 서비스와 관련하여 "회원"에게 "회사"가 정한 이용조건에 따라 계정, 아이디, 콘텐츠 등을 이용할 수 있는 이용권만을 부여하며, "회원"은 이를 양도, 판매, 담보제공 등의 처분행위를 할 수 없다.</li>
        </ul>

        <h3>제 17 조 ("회사"의 의무)</h3>
        <ul>
            <li>1. "회사"는 본 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 수 있도록 최선의 노력을 다해야 한다.</li>
            <li>2. "회사"는 서비스와 관련한 "회원"의 불만사항이 접수되는 경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우에는 그 사유와 처리일정을 서비스   또는 기타 방법을 통해 동 "회원"에게 통지하여야 한다.</li>
            <li>2. 천재지변 등 예측하지 못한 일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한 손해에 대해서는 "회사"가 책임을 지지 않는다. 다만 자료의 복구나 정상적인 서비스 지원이 되도록 최선을 다할 의무를 진다.</li>
        </ul>

        <h3>제 18 조 (회원의 의무)</h3>
            <ul>
                <li>1. "회원"은 관계법령과 본 약관의 규정 및 기타 "회사"가 통지하는 사항을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 해서는 안 된다.</li>
                <li>2. "회원"은 서비스를 이용하여 얻은 정보를 "회사"의 사전동의 없이 복사, 복제, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.</li>
                <li>3. "회원"은 본 서비스를 기업 정보 확인 및 건전한 취업 이외의 목적으로 사용해서는 안되며 이용 중 다음 각 호의 행위를 해서는 안 된다.</li>
                <li>가. 다른 회원의 아이디를 부정 사용하는 행위</li>
                <li>나. 범죄행위을 목적으로 하거나 기타 범죄행위와 관련된 행위</li>
                <li>다. 타인의 명예를 훼손하거나 모욕하는 행위</li>
                <li>라. 타인의 지적재산권 등의 권리를 침해하는 행위</li>
                <li>마. 해킹행위 또는 바이러스의 유포 행위</li>
                <li>바. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위</li>
                <li>사. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위</li>
                <li>아. 사이트의 정보 및 서비스를 이용한 영리 행위</li>
                <li>자. 그밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위</li>
            </ul>    
        

        <h3>제 19조 (회원탈퇴 및 회원자격 상실)</h3>
            <ul>
                <li>1. "회원"은 "회사"에 언제든지 탈퇴를 요청할 수 있으며, 탈퇴 요청은 사이트 〔내계정〕메뉴의 〔탈퇴〕버튼을 통해 회원탈퇴를 할 수 있다.</li>
                <li>2. "회원"이 회원탈퇴를 하는 경우 작성한 게시물은 약관 제 12조 , 제13조에 따라 자동 삭제되지 않는다.</li>
                <li>3. "회사"는 "회원"이 이 약관 및 개별서비스 이용약관을 위반한 경우 경고, 일시적 이용정지, 영구적 이용정지 등의 단계로 서비스 이용을 제한하거나 이용계약을 해지할 수 있다.</li>
                <li>4. "회원"은 제 3항에 따른 서비스 이용정지 기타 서비스 이용과 관련된 이용제한에 대하여 "회사"가 정한 절차에 따라 이의신청을 할 수 있으며, "회사"는 "회원"의 이의신청이 정당하다고 판단되는 경우 즉시 서비스 이용을 재개한다.</li>
            </ul>

        <h3>제 20 조 (손해배상)</h3>
            <ul>
                <li>1. "회사"가 "회원"에게 손해를 입히거나 기타 "회사"가 제공하는 모든 서비스와 관련하여 "회사"의 책임 있는 사유로 인해 이용자에게 손해가 발생한 경우 "회사"는 그 손해를 배상하여야 한다.</li>
                <li>2. "회원"이 이 약관의 규정에 위반한 행위로 "회사" 및 제3자에게 손해를 입히거나 "회원"의 책임 있는 사유에 의해 "회사" 및 제3자에게 손해를 입힌 경우에는 "회원"은 그 손해를 배상하여야 한다.</li>
                <li>3. 타 회원의 귀책사유로 "회원"의 손해가 발생한 경우 "회사"는 이에 대한 배상 책임이 없다.</li>
            </ul>

        
        <h3>제 21 조 ("회원"의 개인정보보호)</h3>
        <p>"회사"는 "회원"의 개인정보보호를 위하여 노력해야 한다. "회원"의 개인정보보호에 관해서는 정보통신망이용촉진 및 정보보호 등에 관한 법률에 따르고, "사이트"에 "개인정보취급방침"을 고지한다.</p>

        <h3>제 22 조 (분쟁의 해결)</h3>
        <ul>
            <li>1. "회사"와 "회원"은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 한다.</li>
            <li>2. 전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 민사소송법상 관할법원에 제소한다..</li>
        </ul>
        <p>부칙</p>
    </section>
</div>
      </div>
    </div>
    <div class="title2">
      <h2>개인정보 수집 및 이용</h2>
    </div>
    <div class="title2 sub_check">
      <h3>필수적 개인정보 수집 및 이용 동의 <span class='txt_gra'> (필수)</span></h3>
      <label class="btn_check round">
        <input id="user_tos_privacy" name="" type="checkbox" class="cscheck">
        <span class="check_icon"></span>
      </label>
    </div>
    <div class="title2 sub_check">
      <h3>선택적 개인정보 수집 및 이용 동의 <span class='txt_gre'> (선택)</span></h3>
      <label class="btn_check round">
        <input id="user_optional_tos_privacy" name="" type="checkbox" class="cscheck">
        <span class="check_icon"></span>
      </label>
    </div>
    <div class="con2">
      <div class="con_wrap">
        <div>
            <section class="guidec_01">
      <h2 class="notranslate">[개인정보 수집∙이용에 관한 동의]</h2>
</section>
<section class="guidec_02">
    <h3 class="notranslate">1. 수집∙이용 목적 및 항목</h3>
    <dl>
        <dt class="notranslate">1) 회원가입 시 수집하는 항목</dt>
        <dd class="notranslate">필수항목: 이름, 본인인증정보 또는 중복가입확인정보, 비밀번호, 생년월일, 성별, 연락처(전화번호/휴대폰번호), e-메일 / 페이스북 회원가입시 회원이 공개하기로 설정한 정보(선택가능)</dd>
        <dd class="notranslate">선택항목: 메일링 서비스 설정, 어플리케이션 서비스 설정, 회원이 직접 기입한 자신의 근무, 면접 경험이 있는 회사와 그 후기 내용</dd>
        <dd class="notranslate"></dd>
        <dt class="notranslate">2) 이력서 등록 시 수집하는 항목</dt>
        <dd class="notranslate">필수 항목: 이름, 연락처(전화번호/휴대폰), e-메일, 우편번호, 주소, 학력사항, 경력사항, 고용형태, 희망연봉, 희망근무지, 지원분야(업직종), 자기소개서, 희망근무일시</dd>
        <dd class="notranslate">선택 항목: 사진, 홈페이지, 희망급여, 취업우대사항(보훈대상, 취업보호대상, 장애여부, 병역사항), 사회활동, 수상내역, 교육이수내용, 자격증, OA능력, 컴퓨터 능력, 해외연수, 어학시험, 외국어 구사능력, 나의 성향(특기사항)</dd>
        <dd class="notranslate"></dd>
        <dt class="notranslate">3) 기업인증 시  수집하는 항목</dt>
        <dd class="notranslate">필수항목: 회사명, 사업자등록번호, 지사여부, 대표자명, 우편번호, 주소, 담당자명, 본인인증정보 또는 중복가입확인정보, 비밀번호, 연락처(전화번호/휴대폰)</dd>        
        <dd class="notranslate"></dd>    
        <dt class="notranslate">4) 채용공고 등록 시 수집하는 항목</dt>
        <dd class="notranslate">직업안정법 시행령 제28조 직업정보제공사업자의 준수사항에 따라, 구인자의 신원을 명확히 하고, 허위정보 게재로 인한 피해를 방지하기 위해 담당자의 개인정보를 확인하고 있습니다.</dd>        
        <dd class="notranslate">필수항목 : 회사명, 담당자명, 연락처(전화번호/휴대폰), e-메일, 주소</dd>        
        <dd class="notranslate"></dd>             
        <dt class="notranslate">5) 유료 정보 이용 시 수집하는 항목</dt>
        <dd class="notranslate">유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</dd>
        <dd class="notranslate">신용카드 결제: 카드사명, 카드번호 등</dd>
        <dd class="notranslate">은행계좌 이체: 은행명, 계좌번호 등</dd>
        <dd class="notranslate">휴대전화 결제: 가입자명, 이동전화번호, 결제승인번호 등</dd>
        <dd class="notranslate"></dd>
        <dt class="notranslate">6) 모바일 서비스 이용 시 수집되는 항목</dt>
        <dd class="notranslate">모바일 서비스의 특성상 단말기 모델 정보가 수집될 수 있으나, 이는 개인을 식별할 수 없는 형태입니다.</dd>
        <dd class="notranslate"></dd>
        <dt class="notranslate">7) 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.</dt>
        <dd class="notranslate">IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록</dd>
    </dl>

    <h3 class="notranslate">2. 보유 및 이용기간</h3>
    <dl>
        <dd class="notranslate">회원가입일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용하게 됩니다. 회원탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 이용기간이 종료한 경우 개인정보를 지체 없이 파기합니다.</dd>
        <dd class="notranslate">단, 법령상 다른 정함이 있는 경우에는 예외로 합니다.</dd>
    </dl>

    <h3 class="notranslate">3. 동의 거부권 및 거부시의 불이익</h3>
    <dl>
        <dd class="notranslate">필수적인 개인정보 수집∙이용에 동의하지 않을 경우 회원가입이 불가능하며, 선택적인 개인정보 수집∙이용에 동의하지 않을 경우 해당 서비스의 제공이 불가능할 수 있습니다.</dd>
    </dl>
</section>
        </div>
      </div>
    </div>
    <div class="title3">
      <h2>맞춤 채용/뉴스레터 등 마케팅 정보 수신<span class='txt_gre'> (선택) </span></h2>
      <label class="btn_check round" for="user_subscribe_notice">
        <input id="user_subscribe_notice" name="" type="checkbox" class="cscheck">
        <span class="check_icon"></span>
      </label>
      <div class="title2 sub_check">
        <h3>오픈잡에서 분석하여 찾은 적합한 채용 및 유용한 정보를 받겠습니다.</h3>
      </div>
    </div>
    <div class="con3">
      이용약관과 개인정보 수집 및 이용(선택)에 대한 안내 모두 동의해주세요.
    </div>
    <div class="btn_group">
      <input type="submit" class="btn_ty3" value='동의합니다.'>
    </div>
  </div>
</div>
</form>

</body>




</html>