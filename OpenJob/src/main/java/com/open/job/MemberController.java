package com.open.job;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.open.job.DTO.Member;
import com.open.job.DTO.USER;
import com.open.job.DTO.UserAcount;
import com.open.job.IService.MemberService;

@SessionAttributes({"USER"})
@Controller
public class MemberController {
	@Autowired MemberService memberServ;
	//*********페이지**********//
	// 회원 가입
	@RequestMapping(value = "/SiginUp")
	public String SiginUp(Model model) {
		model.addAttribute("nav_signuptag", "active");
		return "/memberview/SiginUp";
	}
	//로그인 화면
	@RequestMapping(value = "/MemberLogin")
	public String MemberLogin(Model model) {
		model.addAttribute("nav_logintag", "active");
		return "/memberview/MemberLogin";
	}
	// 마이페이지 - 회원 정보
	@RequestMapping(value = "/UserAcount")
	public String UserAcount(USER user,Model model, String membemail) {
		model.addAttribute("userAcount", memberServ.getUserAcountInfo(user.getEmail()));
		return "/memberview/MyAccount/UserAcount";
	}
	// 마이페이지 - 비밀번호 변경
	@RequestMapping(value = "/PaswordChange")
	public String PaswordChange() {
		return "/memberview/MyAccount/PaswordChange";
	}
	// 마이페이지 - 회원 탈퇴
	@RequestMapping(value = "/MemberOut")
	public String MemberOut() {
		return "/memberview/MyAccount/MemberOut";
	}
	// 마이페이지 - 팔로잉 기업
	@RequestMapping(value = "/Favorites")
	public String FollowCompany(USER user, Model model, String membemail) {
		List<UserAcount> FollowCompanyList = memberServ.getFollowCompany(user.getEmail());
		model.addAttribute("followCompanyList", FollowCompanyList);
		return "/memberview/MyAccount/Favorites"; 
	}
	// 마이페이지 - 저장된 채용
	@RequestMapping(value = "/SaveJobs")
	public String SaveJobs(USER user, Model model, String membemail) {
		List<UserAcount> SaveJobList = memberServ.getSaveJobsInfo(user.getEmail());
		model.addAttribute("saveJobList", SaveJobList);
		return "/memberview/MyAccount/SaveJobs"; 
	}
	
	//*********인증**********//
	// 로그인
		@RequestMapping(value = "/loginproc", method = RequestMethod.POST)
		public String loginproc(Member member, Model model) {
			if(memberServ.loginProc(member)) {
				model.addAttribute("USER", memberServ.getUserInfo(member.getEmail()));
				return "redirect:/UserAcount";
			}
			model.addAttribute("msg", "회원 정보가 잘못되였습니다.");
			return "forward:/MemberLogin"; 
		}
	// 로그아웃
	@RequestMapping(value="/MemberLogout")
	public String logout(
			SessionStatus sessionStat
			) {
		sessionStat.setComplete();
		return "redirect:/";
	}
	
	//*********가입**********//
	//이메일 가입
	@RequestMapping(value = "/insertproc", method = RequestMethod.POST)
	public String insertproc(@ModelAttribute Member member) {
		memberServ.insertMember(member);
		return "forward:/loginproc";
	}
}
