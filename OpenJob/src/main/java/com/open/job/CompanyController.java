package com.open.job;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;

import com.open.job.DTO.Company;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;
import com.open.job.IService.CompanyService;
import com.open.job.common.CommonService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	CompanyService compServ;
	@Autowired
	CommonService commServ;

	// 기업 정보 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/info")
	public String showCompanyInfo(@PathVariable String companyNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		model.addAttribute("companyInfo", compServ.getCompanyInfo(companyno));
		model.addAttribute("frmoption","review");
		model.addAttribute("infoactive", "active");
		return "companyview/companyInfo";
	}

	// 기업 리뷰 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/review")
	public String showCompanyReview(
			@PathVariable String companyNo,
			Model model
			) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		model.addAttribute("frmoption","review");
		model.addAttribute("reviewactive", "active");
		return "companyview/companyReview";
	}
	// 기업 면접후기 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/interview")
	public String showCompanyInterview(
			@PathVariable String companyNo,
			Model model
			) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		model.addAttribute("frmoption","interview");
		model.addAttribute("interviewactive", "active");
		return "companyview/companyInterview";
	}
	// 기업 공고 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/post")
	public String showCompanyPost(
			@PathVariable String companyNo,
			Model model
			) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		model.addAttribute("postLst",compServ.getPost(companyno));
		model.addAttribute("frmoption","post");
		model.addAttribute("postactive", "active");
		model.addAttribute("jobcategoryLst", compServ.getJobcategory());
		model.addAttribute("locLst", compServ.getLocation());
		model.addAttribute("employtypeLst", compServ.getEmploytype());
		return "companyview/companyPost";
}
	@ResponseBody
	@RequestMapping(value="/jobsubcategory", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getJobsubcategory(@RequestParam String jobcategoryno) {
		return compServ.getSubjobcategory(commServ.IntegerFilter(jobcategoryno));
	}
	
	@RequestMapping(value= "/{frmName:^.+Form$}")
	public String showform(@PathVariable String frmName) {
		return "companyview/Form/"+frmName;
	}
	@RequestMapping(value="/postProc", method=RequestMethod.POST)
	public String postProc(@ModelAttribute Post post) {
		int result = compServ.insertPost(post);
		return "redirect:/company/"+post.getCompanyno()+"/post";
	}
}
