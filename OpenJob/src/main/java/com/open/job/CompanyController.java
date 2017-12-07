package com.open.job;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	CompanyService compServ;
	// 기업 홈 화면
	@RequestMapping(value = "/companyhome")
	public String gocompanyhome(Model model) {
		model.addAttribute("nav_companytag", "active");
		model.addAllAttributes(compServ.getAllReviewRank(5));
		return "forward:/companyhome";
	}
	// 채용 홈 화면
	@RequestMapping(value = "/posthome")
	public String goposthome(Model model) {
		model.addAttribute("nav_posttag", "active");
		model.addAttribute("postLst", compServ.getAllPost());
		return "companyview/posthome";
	}
	// 각 기업 컨텐츠 페이지 화면
	@RequestMapping("/{companyNo:^[0-9]*$}/{contentName:info|review|interview|post}")
	public String showCompanyContents(
			@PathVariable("companyNo") Integer companyNo,
			@PathVariable("contentName") String contentName,
			Model model
			) {
			String contentpage = contentName.substring(0, 1).toUpperCase()+contentName.substring(1);
			model.addAttribute("companyno", companyNo);
			model.addAttribute("frmoption", "info".equals(contentName)? "review":contentName);
			model.addAttribute(contentName+"active", "active");
			if("info".equals(contentName)) {
				model.addAttribute("companyInfo", compServ.getCompanyInfo(companyNo));
			}
			return "companyview/company"+contentpage;
	}
	// 채용 공고 화면
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
	// 제출 폼 화면
	@RequestMapping(value = "/{frmName:^.+Form$}")
	public String showform(@PathVariable String frmName, Model model) {
		model.addAttribute("jobcategoryLst", compServ.getJobcategory());
		model.addAttribute("locLst", compServ.getLocation());
		model.addAttribute("employtypeLst", compServ.getEmploytype());
		return "companyview/Form/" + frmName;
	}
	
	//******제출 구역*******//
	// 기업 리뷰 제출
	@RequestMapping(value = "/reviewProc", method = RequestMethod.POST)
	public String reviewProc(@ModelAttribute CompanyReview review) {
		compServ.insertReview(review);
		return "redirect:/company/" + review.getCompanyno() + "/review";
	}
	// 면접 후기 제출
	@RequestMapping(value = "/interviewProc", method = RequestMethod.POST)
	public String interviewProc(@ModelAttribute InterviewReview interview) {
		compServ.insertInterview(interview);
		return "redirect:/company/" + interview.getCompanyno() + "/interview";
	}
	// 채용 공고 제출
	@RequestMapping(value = "/postProc", method = RequestMethod.POST)
	public String postProc(@ModelAttribute Post post) {
		compServ.insertPost(post);
		return "redirect:/company/"+post.getCompanyno() +"/post";
	}
	// 제출용 직업소분류
	@ResponseBody
	@RequestMapping(value = "/jobsubcategory", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getJobsubcategory(@RequestParam Integer jobcategoryno) {
		return compServ.getSubjobcategory(jobcategoryno);
	}
	// 제출용 위치소분류
	@ResponseBody
	@RequestMapping(value = "/getsublocation", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getsublocation(@RequestParam Integer locationcate) {
		return compServ.getSublocation(locationcate);
	}
	
	//******** 찜 하기 구역*********//
	// 기업 팔로우/ 언팔로우
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
	// 채용 공고 저장/ 해제
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
	// ********기본 구역*********//
	// 기업 화면 상단 (타이틀, 네비게이션)
	@RequestMapping(value = "/frag_companytop")
	public String frag_companytop(@RequestParam Integer companyno,Model model) {
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		return "companyview/sub/companytop";
	};
	// 기업 타이틀 
	@RequestMapping(value = "/frag_companytitle")
	public String frag_companytitle(
			@RequestParam Integer companyno,
			@RequestParam(required=false) Integer memberno,
			Model model
			) {
		if(memberno!=null) {
			model.addAttribute("userfollow", compServ.doesUserFollow(companyno, memberno));
		}
		return "companyview/sub/companytitle";
	};
	// 기업 네비게이션
	@RequestMapping(value = "/frag_companynavi")
	public String frag_companynavi(@RequestParam Integer companyno, Model model) {
		int[] tablecounts = compServ.getCountInfo(companyno);
		model.addAttribute("reviewcount",tablecounts[0]);
		model.addAttribute("interviewcount",tablecounts[1]);
		model.addAttribute("postcount",tablecounts[2]);
		return "companyview/sub/companyNavi";
	};
	// 채용 공고 저장 버튼
	@RequestMapping(value = "/frag_savebtn")
	public String frag_savebtn(
			@RequestParam Integer postno,
			@RequestParam(required=false) Integer memberno,
			Model model 
			) {
		if(memberno!=null) {
		model.addAttribute("postsaved", compServ.isSavedPost(postno,memberno));
		}
		return "companyview/sub/savebtn";
	};
	
	//********통계 구역********//
	// 기업 리뷰 통계
	@RequestMapping(value = "/reviewStat")
	public String reviewStat(
			@RequestParam Integer companyno,
			Model model
			) {
		model.addAttribute("stat_review", compServ.getReviewStat(companyno));
		return "companyview/stat/reviewStat";
	};
	// 기업 면접 후기 통계
	@RequestMapping(value = "/interviewStat")
	public String interviewStat(
			@RequestParam Integer companyno,
			Model model
			) {
		model.addAttribute("stat_interview", compServ.getInterviewStat(companyno));
		return "companyview/stat/interviewStat";
	};
	// 통계용 Bar
	@RequestMapping(value = "/frag_bar")
	public String frag_bar(
			@RequestParam(required=false, defaultValue="0") Integer bar_value,
			Model model 
			) {
		model.addAttribute("bar_value", bar_value);
		return "companyview/stat/bar";
	};
	
	//*******검색 구역*******//
	// 기업 리뷰 검색
	@RequestMapping(value = "/frag_reviewsearch")
	public String frag_reviewsearch(
			@RequestParam Integer companyno,
			Model model 
			) {
		model.addAttribute("s_jobcateLst", compServ.getReviewJobcateLst(companyno));
		model.addAttribute("s_statusLst", compServ.getReviewStatusLst(companyno));
		return "companyview/search/reviewSearch";
	};
	// 기업 리뷰 검색 결과
	@RequestMapping(value = "/frag_showreviewLst")
	public String frag_showreviewLst(
			@ModelAttribute CompanyReview review,
			Model model 
			) {
		model.addAttribute("reviewLst", compServ.getCompanyReview(review));
		return "companyview/search/reviewResult";
	};	
	// 면접 후기 검색
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
	// 면접 후기 검색 결과
	@RequestMapping(value = "/frag_showinterviewLst")
	public String frag_showinterviewLst(
			@ModelAttribute InterviewReview interview,
			Model model 
			) {
		model.addAttribute("interviewLst", compServ.getCompanyInterview(interview));
		return "companyview/search/interviewResult";
	};
	// 채용 공고 검색
	@RequestMapping(value = "/frag_postsearch")
	public String frag_postsearch(
			@RequestParam Integer companyno,
			Model model 
			) {
		model.addAttribute("s_jobcateLst", compServ.getPostJobcateLst(companyno));
		model.addAttribute("s_locationLst", compServ.getLocation());
		return "companyview/search/postSearch";
	};
	// 채용 공고 검색 결과
	@RequestMapping(value = "/frag_showpostLst")
	public String frag_showpostLst(
			@ModelAttribute Post post,
			Model model 
			) {
		model.addAttribute("postLst", compServ.getPost(post));
		return "companyview/search/postResult";
	};
	// 채용 공고 검색 직업 소분류 옵션
	@ResponseBody
	@RequestMapping(value = "/getPostsubjobcategory", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getPostsubjobcategory(
			@RequestParam Integer companyno,
			@RequestParam String jobcategory
			) {
		return compServ.getPostsubjobcategory(companyno,jobcategory);
	}
}
