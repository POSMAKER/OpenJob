package com.open.job;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
//import org.slf4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.open.job.DTO.Company;
import com.open.job.IService.CompanyService;

@Controller
public class HomeController {
	@Autowired CompanyService cServ;
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		List<Company> companyList = cServ.getCompanyList();
		model.addAttribute("companyList",companyList);
		System.out.println();
		return "home";
	}

	@RequestMapping(value = "/{frmName:^.+home$}", method = RequestMethod.GET)
	public String gohome(@PathVariable String frmName) {
		String folderName = frmName.substring(0, frmName.length()-4)+"view/";
		return folderName+frmName;
	}
}
