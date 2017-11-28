package com.open.job;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.open.job.DTO.Member;
import com.open.job.IService.MemberService;

@SessionAttributes("USER")
@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Autowired
	MemberService mServ;

	
	//페이지 열기 시작--------------------------------
	
	@RequestMapping(value = "/SiginUp")
	public String SiginUp() {

		return "/memberview/SiginUp";
	}
	
	
	@RequestMapping(value = "/UserAcount")
	public String UserAcount() {

		return "/memberview/MyAccount/UserAcount";
	}
	
	@RequestMapping(value = "/PaswordChange")
	public String PaswordChange() {

		return "/memberview/MyAccount/PaswordChange";
	}
	
	@RequestMapping(value = "/MemberOut")
	public String MemberOut() {

		return "/memberview/MyAccount/MemberOut";
	}
	
	
	@RequestMapping(value = "/Favorites")
	public String Favorites() {

		return "/memberview/MyAccount/Favorites";
	}
	
	
	@RequestMapping(value = "/SaveJobs")
	public String SaveJobs() {

		return "/memberview/MyAccount/SaveJobs";
	}
	
	
	
	@RequestMapping(value = "/MemberLogin")
	public String MemberLogin() {

		return "/memberview/MemberLogin";
	}
	//페이지 열기 끝--------------------------------
	@RequestMapping(value="/MemberLogout")
	public String logout(
			SessionStatus sessionStat
			) {
		sessionStat.setComplete();
		return "redirect:/";
	}
	
	
	
	
	
	
	//이메일 가입
	@RequestMapping(value = "/insertproc", method = RequestMethod.POST)
	public String insertproc(@ModelAttribute Member member) {
		mServ.insertMember(member);
		return "true";
	}
	
	
	
	//멤버 로그인 
		@RequestMapping(value = "/loginproc", method = RequestMethod.POST)
		public String loginproc(Member member, Model model) {
			if(mServ.loginProc(member)) {
				model.addAttribute("USER", mServ.getUserInfo(member.getEmail()));
				return "redirect:/UserAcount";
			}
			model.addAttribute("msg", "회원 정보가 잘못되였습니다.");
			return "forward:/MemberLogin"; 
		}

	
	
	
	/*
	//이메일 가입후 보기
		@RequestMapping(value = "/viewpage")
		public String viewpage(Model model) {
			List<Member> mList = mServ.getMemberList();
			model.addAttribute("board", mList);
			return "UserAcount";
		}
	*/
	
	
}
