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
import org.springframework.web.servlet.ModelAndView;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.InterviewReview;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Post;
import com.open.job.DTO.USER;
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

	// **********************SORTED***********************//

	// **********************MIXED***********************//
	// 기업 정보 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/info")
	public String showCompanyInfo(@PathVariable String companyNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("companyno", companyno);
		model.addAttribute("companyInfo", compServ.getCompanyInfo(companyno));
		model.addAttribute("frmoption", "review");
		model.addAttribute("infoactive", "active");
		return "companyview/companyInfo";
	}

	// 기업 리뷰 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/review")
	public String showCompanyReview(@PathVariable String companyNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("companyno", companyno);
		model.addAttribute("reviewLst", compServ.getCompanyReview(companyno));
		model.addAttribute("frmoption", "review");
		model.addAttribute("reviewactive", "active");
		return "companyview/companyReview";
	}

	// 기업 면접후기 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/interview")
	public String showCompanyInterview(@PathVariable String companyNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("companyno", companyno);
		model.addAttribute("interviewLst", compServ.getCompanyInterview(companyno));
		model.addAttribute("frmoption", "interview");
		model.addAttribute("interviewactive", "active");
		return "companyview/companyInterview";
	}

	// 기업 공고 페이지로 이동
	// companyNo로 DB에서 불러와서 정보를 줌
	@RequestMapping("/{companyNo:^[0-9]*$}/post")
	public String showCompanyPost(@PathVariable String companyNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		model.addAttribute("companyno", companyno);
		model.addAttribute("postLst", compServ.getPost(companyno));
		model.addAttribute("frmoption", "post");
		model.addAttribute("postactive", "active");
		return "companyview/companyPost";
	}

	@RequestMapping("/{companyNo:^[0-9]*$}/post/{postNo:^[0-9]*$}")
	public String showPost(@PathVariable String companyNo, @PathVariable String postNo, Model model) {
		Integer companyno = commServ.IntegerFilter(companyNo);
		Integer postno = commServ.IntegerFilter(postNo);
		model.addAttribute("companyno", companyno);
		model.addAttribute("post", compServ.getSinglePost(postno));
		model.addAttribute("companyInfo", compServ.getCompanyInfo(companyno));
		return "companyview/postView";
	}

	@RequestMapping(value = "/{frmName:^.+Form$}")
	public String showform(@PathVariable String frmName, @ModelAttribute USER USER, Model model) {
		model.addAttribute("USER", USER);
		model.addAttribute("jobcategoryLst", compServ.getJobcategory());
		model.addAttribute("locLst", compServ.getLocation());
		model.addAttribute("employtypeLst", compServ.getEmploytype());
		return "companyview/Form/" + frmName;
	}

	@RequestMapping(value = "/test")
	public String test(Model model, @RequestParam String use) {
		model.addAttribute("testattribute", "WOW");
		System.out.println(use);
		return "companyview/test";
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
		System.out.println("WOWOWWOWOWO");
		compServ.insertPost(post);
		return "redirect:/company/" + post.getCompanyno() + "/post";
	}

	@ResponseBody
	@RequestMapping(value = "/jobsubcategory", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getJobsubcategory(@RequestParam String jobcategoryno) {
		return compServ.getSubjobcategory(commServ.IntegerFilter(jobcategoryno));
	}

	@ResponseBody
	@RequestMapping(value = "/getsublocation", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getsublocation(@RequestParam String locationcate) {
		return compServ.getSublocation(commServ.IntegerFilter(locationcate));
	}

	@ResponseBody
	@RequestMapping(value = "/getcompbasebody", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String getCompBasebody(@RequestParam String companyno) {
		return compServ.getCompBaseBody(commServ.IntegerFilter(companyno));
	}

	@ResponseBody
	@RequestMapping(value = "/followProc", method = RequestMethod.POST)
	public String followProc(@RequestParam String memberno, @RequestParam String companyno,
			@RequestParam String userfollow) {
		return "true";
	}

	// ****************FRAGMENTS*******************//
	@RequestMapping(value = "/frag_companytop")
	public String frag_companytop(@RequestParam Integer companyno) {
		return "companyview/sub/companytop";
	};

	@RequestMapping(value = "/frag_companytitle")
	public String frag_companytitle(@RequestParam Integer companyno, Model model) {
		model.addAttribute("company", compServ.getCompanyBase(companyno));
		return "companyview/sub/companytitle";
	};

	@RequestMapping(value = "/frag_companynavi")
	public String frag_companynavi(@RequestParam Integer companyno, Model model) {
		return "companyview/sub/companyNavi";
	};
}
