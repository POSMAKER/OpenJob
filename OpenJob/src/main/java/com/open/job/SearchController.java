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
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SearchService searchServ;
	// 타이틀, 공고시작일, 공고마감일, 경력, 직종, 직종상세, 지역, 이미지

	@RequestMapping(value = "/search")
	public String search(Model model, 
			@RequestParam(value = "category", required = false) String category,
			@RequestParam(value = "searchWord") String searchWord) {
		
		if ("post".equals(category) || "all".equals(category)) {
			List<Post> postList = searchServ.getPostList(category, searchWord);

			if (postList.isEmpty()) {
				model.addAttribute("postList", null);
				model.addAttribute("postmsg", "채용 검색 결과가 없습니다.");
			} else {
				model.addAttribute("postList", postList);
			}
		} 
		
		if("company".equals(category) || "all".equals(category)) {
			List<Company> companyList = searchServ.getCompanyList(category, searchWord);
			
			if(companyList.isEmpty()) {
				model.addAttribute("companyList", null);
				model.addAttribute("companymsg", "찾으시는 기업이 없으신가요?");
			} else {
				model.addAttribute("companyList", companyList);
			}
		}
		
		return "/searchview/detailSearchView";
	}

	@RequestMapping(value = "/search_wrap")
	public String search_wrap() {

		return "/searchview/search_wrap";
	}
}
