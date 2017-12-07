package com.open.job;

import org.junit.internal.matchers.SubstringMatcher;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.InterviewReview;
import com.open.job.DTO.Post;
import com.open.job.IService.CompanyService;
import com.open.job.common.CommonService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	CompanyService compServ;
	@Autowired
	CommonService commServ;

	// **********************SORTED***********************//
	private static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
	
	// **********************MIXED***********************//
	@RequestMapping(value = "/companyhome")
	public String gocompanyhome(Model model) {
		model.addAttribute("nav_companytag", "active");
		model.addAllAttributes(compServ.getAllReviewRank(5));
		return "companyview/companyhome";
	}
	@RequestMapping(value = "/posthome")
	public String goposthome(Model model) {
		model.addAttribute("nav_posttag", "active");
		model.addAttribute("postLst", compServ.getAllPost());
		return "companyview/posthome";
	}
	// 각 기업 컨텐츠 페이지로 이동
	@RequestMapping("/{companyNo:^[0-9]*$}/{contentName:info|review|interview|post}")
	public String showCompanyContents(
			@PathVariable("companyNo") Integer companyNo,
			@PathVariable("contentName") String contentName,
			Model model
			) {
			String contentpage = commServ.getCapitalized(contentName);
			model.addAttribute("companyno", companyNo);
			model.addAttribute("frmoption", "info".equals(contentName)? "review":contentName);
			model.addAttribute(contentName+"active", "active");
			if("info".equals(contentName)) {
				model.addAttribute("companyInfo", compServ.getCompanyInfo(companyNo));
			}
			return "companyview/company"+contentpage;
	}
	@RequestMapping("/{companyNo:^[0-9]*$}/post/{postNo:^[0-9]*$}")
	public String showPost(
			@PathVariable("companyNo") Integer companyNo,
			@PathVariable("companyNo") Integer postNo, 
			Model model
			) {
		model.addAttribute("companyno", companyNo);
		model.addAttribute("post", compServ.getSinglePost(companyNo, postNo));
		model.addAttribute("companyInfo", compServ.getCompanyInfo(companyNo));
		return "companyview/postView";
	}

	@RequestMapping(value = "/{frmName:^.+Form$}")
	public String showform(@PathVariable String frmName, Model model) {
		model.addAttribute("jobcategoryLst", compServ.getJobcategory());
		model.addAttribute("locLst", compServ.getLocation());
		model.addAttribute("employtypeLst", compServ.getEmploytype());
		return "companyview/Form/" + frmName;
	}

	@RequestMapping(value = "/reviewProc", method = RequestMethod.POST)
	public String reviewProc(@ModelAttribute CompanyReview review) {
		compServ.insertReview(review);
		return "redirect:/company/" + review.getCompanyno() + "/review";
	}

	@RequestMapping(value = "/interviewProc", method = RequestMethod.POST)
	public String interviewProc(@ModelAttribute InterviewReview interview) {
		compServ.insertInterview(interview);
		return "redirect:/company/" + interview.getCompanyno() + "/interview";
	}

	@RequestMapping(value = "/postProc", method = RequestMethod.POST)
	public String postProc(@ModelAttribute Post post) {
		compServ.insertPost(post);
		return "redirect:/company/"+post.getCompanyno() +"/post";
	}

	@ResponseBody
	@RequestMapping(value = "/jobsubcategory", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getJobsubcategory(@RequestParam Integer jobcategoryno) {
		return compServ.getSubjobcategory(jobcategoryno);
	}
	@ResponseBody
	@RequestMapping(value = "/getPostsubjobcategory", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getPostsubjobcategory(
			@RequestParam Integer companyno,
			@RequestParam String jobcategory
			) {
		return compServ.getPostsubjobcategory(companyno,jobcategory);
	}
	@ResponseBody
	@RequestMapping(value = "/getsublocation", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getsublocation(@RequestParam Integer locationcate) {
		return compServ.getSublocation(locationcate);
	}
	
	@ResponseBody
	@RequestMapping(value = "/followCompany", method = RequestMethod.POST)
	public String followCompany(
			@RequestParam Integer memberno, 
			@RequestParam Integer companyno,
			@RequestParam String userfollow
			) {
		int result = compServ.followCompany(companyno, memberno,userfollow);
		if(result>0) {
			if(userfollow.equals("true")) {
				return "unselect";
			}else {
				return "select";
			}
		}
		return "failed";
	}
	@RequestMapping(value = "/savePost", method = RequestMethod.POST)
	public String savePost(
			@RequestParam Integer memberno, 
			@RequestParam Integer postno,
			@RequestParam String usersaved
			) {
		compServ.savePost(postno, memberno,usersaved);
		return "forward:/company/frag_savebtn";
	}

	// ****************FRAGMENTS*******************//
	@RequestMapping(value = "/frag_companytop")
	public String frag_companytop(@RequestParam Integer companyno,Model model) {
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		return "companyview/sub/companytop";
	};

	@RequestMapping(value = "/frag_companytitle")
	public String frag_companytitle(
			@RequestParam Integer companyno,
			@RequestParam(required=false) Integer memberno,
			Model model
			) {
		if(memberno!=null&&compServ.doesUserFollow(companyno, memberno)) {
			model.addAttribute("userfollow", true);
		}
		return "companyview/sub/companytitle";
	};

	@RequestMapping(value = "/frag_companynavi")
	public String frag_companynavi(@RequestParam Integer companyno, Model model) {
		int[] tablecounts = compServ.getCountInfo(companyno);
		model.addAttribute("reviewcount",tablecounts[0]);
		model.addAttribute("interviewcount",tablecounts[1]);
		model.addAttribute("postcount",tablecounts[2]);
		return "companyview/sub/companyNavi";
	};
	
	@RequestMapping(value = "/reviewStat")
	public String reviewStat(
			@RequestParam Integer companyno,
			Model model
			) {
		model.addAttribute("stat_review", compServ.getReviewStat(companyno));
		return "companyview/stat/reviewStat";
	};
	@RequestMapping(value = "/interviewStat")
	public String interviewStat(
			@RequestParam Integer companyno,
			Model model
			) {
		model.addAttribute("stat_interview", compServ.getInterviewStat(companyno));
		return "companyview/stat/interviewStat";
	};
	
	@RequestMapping(value = "/frag_reviewsearch")
	public String frag_reviewsearch(
			@RequestParam Integer companyno,
			Model model 
			) {
		model.addAttribute("s_jobcateLst", compServ.getReviewJobcateLst(companyno));
		model.addAttribute("s_statusLst", compServ.getReviewStatusLst(companyno));
		return "companyview/search/reviewSearch";
	};
	@RequestMapping(value = "/frag_showreviewLst")
	public String frag_showreviewLst(
			@ModelAttribute CompanyReview review,
			Model model 
			) {
		model.addAttribute("reviewLst", compServ.getCompanyReview(review));
		return "companyview/search/reviewResult";
	};	
	@RequestMapping(value = "/frag_interviewsearch")
	public String frag_interviewsearch(
			@RequestParam Integer companyno,
			Model model 
			) {
		model.addAttribute("s_jobcateLst", compServ.getInterviewJobcateLst(companyno));
		model.addAttribute("s_positionLst", compServ.getInterviewPositionLst(companyno));
		model.addAttribute("s_successLst", compServ.getInterviewSuccessLst(companyno));
		return "companyview/search/interviewSearch";
	};
	@RequestMapping(value = "/frag_showinterviewLst")
	public String frag_showinterviewLst(
			@ModelAttribute InterviewReview interview,
			Model model 
			) {
		model.addAttribute("interviewLst", compServ.getCompanyInterview(interview));
		return "companyview/search/interviewResult";
	};
	@RequestMapping(value = "/frag_postsearch")
	public String frag_postsearch(
			@RequestParam Integer companyno,
			Model model 
			) {
		model.addAttribute("s_jobcateLst", compServ.getPostJobcateLst(companyno));
		model.addAttribute("s_locationLst", compServ.getLocation());
		return "companyview/search/postSearch";
	};
	@RequestMapping(value = "/frag_showpostLst")
	public String frag_showpostLst(
			@ModelAttribute Post post,
			Model model 
			) {
		model.addAttribute("postLst", compServ.getPost(post));
		return "companyview/search/postResult";
	};
	@RequestMapping(value = "/frag_savebtn")
	public String frag_posttitle(
			@RequestParam Integer postno,
			@RequestParam(required=false) Integer memberno,
			Model model 
			) {
		if(memberno!=null) {
		model.addAttribute("postsaved", compServ.isSavedPost(postno,memberno));
		}
		return "companyview/sub/savebtn";
	};
	@RequestMapping(value = "/frag_bar")
	public String frag_bar(
			@RequestParam(required=false, defaultValue="0") Integer bar_value,
			Model model 
			) {
		model.addAttribute("bar_value", bar_value);
		return "companyview/stat/bar";
	};
}
