package com.open.job;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.open.job.DTO.Company;
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
		
		model.addAttribute("interviewactive", "active");
		return "companyview/companyInterview";
	}
	// 기업 면접후기 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/post")
	public String showCompanyPost(
			@PathVariable String companyNo,
			Model model
			) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		
		model.addAttribute("postactive", "active");
		return "companyview/companyPost";
	}
}