package com.open.job;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.open.job.DTO.Company;
import com.open.job.IService.CompanyService;
import com.open.job.common.CommonService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired CompanyService compServ;
	@Autowired CommonService commServ;
	
	@RequestMapping("/{companyNo}/info")
	public String showCompany(
			@PathVariable String companyNo,
			Model model
			) {
		 Integer companyno= commServ.IntegerFilter(companyNo);
		if(companyno==null||companyno<1) {
			return "redirect:/";
		}else {
			Company company = compServ.getCompanyInfo(companyno);
			model.addAttribute("company",company);
			model.addAttribute("infoactive","active");
			return "/companyview/companyview";
		}
	}
}
