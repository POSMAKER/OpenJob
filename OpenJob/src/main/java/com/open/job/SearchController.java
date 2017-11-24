package com.open.job;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.open.job.DTO.Company;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.IService.SearchService;

@Controller
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SearchService searchServ;

	@RequestMapping(value = "/search")
	public String search(Model model, 
			@RequestParam(value = "category", required = false, defaultValue = "all") String category,
			@RequestParam(value = "searchWord") String searchWord) {
		
		//검색어, 검색옵션 저장
		model.addAttribute("searchWord", searchWord);
		model.addAttribute("category", category);
		
		//검색옵션 selected, input placeholder
		if("company".equals(category)) {
			model.addAttribute("companySelected", "selected");
			model.addAttribute("placeholderText", "기업명으로 검색");
		} else if("post".equals(category)) {
			model.addAttribute("postSelected", "selected");
			model.addAttribute("placeholderText", "회사명, 희망직무 등으로 검색");
		} else if("all".equals(category)) {
			model.addAttribute("placeholderText", "기업, 채용공고를 검색해보세요.");
		}

		
		//채용 검색
		if ("post".equals(category) || "all".equals(category)) {
			List<Post> postList = searchServ.getPostList(category, searchWord);

			if (postList.isEmpty()) {
				model.addAttribute("postList", null);
				model.addAttribute("postmsg", "채용 검색 결과가 없습니다.");
			} else {
				model.addAttribute("postList", postList);
			}
		} 
		
		//기업 검색
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

	@RequestMapping(value = "/searchWrap")
	public String searchWrap(Model model) {
		int locationno = 100;
		
		
		List<Location> locationList = searchServ.getLocation();
		model.addAttribute("locationList", locationList);
		
		List<Location> sublocationList = searchServ.getSubLocation();
		model.addAttribute("sublocationList", sublocationList);

		return "/searchview/searchWrap";
	}
	
	@RequestMapping(value = "/addressAPI")
	public String addressAPI(Model model) {

		return "/searchview/addressAPI";
	}
	// searchword는 검색 단어, onclickfunction_name은 해당 단어가 클릭되었을 때 발생하는 Javascript 함수의 이름을 지정.
	@ResponseBody
	@RequestMapping(value="/quick_companysearch", method=RequestMethod.POST, produces = "application/text; charset=utf8")
	public String quickCompSearch(
			@RequestParam String searchword,
			@RequestParam String onclickfunction_name
			) {
		return searchServ.getQuickCompSearch(searchword, onclickfunction_name);
	}
}
