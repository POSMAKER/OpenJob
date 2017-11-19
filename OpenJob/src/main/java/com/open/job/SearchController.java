package com.open.job;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.open.job.DTO.Company;
import com.open.job.DTO.Post;
import com.open.job.IService.SearchService;

@Controller
@RequestMapping("search")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SearchService searchServ;
	// 타이틀, 공고시작일, 공고마감일, 경력, 직종, 직종상세, 지역, 이미지

	@RequestMapping(value = "/category")
	public String home(Model model,
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "searchWord") String searchWord) {
		
		List<Post> postList = searchServ.getPostList(category, searchWord);
		model.addAttribute("postList", postList);
		
		List<Company> companyList = searchServ.getCompanyList(category, searchWord);
		model.addAttribute("companyList", companyList);
		return "/searchview/detailSearch";

	}

}
