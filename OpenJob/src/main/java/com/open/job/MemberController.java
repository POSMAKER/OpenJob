package com.open.job;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);



	@RequestMapping(value = "/TermsUse")
	public String TermsUse() {

		return "/memberview/TermsUse";
	}
	
	
	
	@RequestMapping(value = "/Genders")
	public String Genders() {

		return "/memberview/Genders";
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
}
