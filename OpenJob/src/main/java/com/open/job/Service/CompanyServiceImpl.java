package com.open.job.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.InterviewReview;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;
import com.open.job.IDAO.CompanyDAO;
import com.open.job.IService.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	static final String[] cn_companyreview = {"totalScore","promotionScore","walfareScore","balanceScore","atmosphereScore","executiveScore"};
	static final String tn_companyreview = "CompanyReview";
	static final String tn_companyreviewinfo = "CompanyReviewInfo";
	static final String tn_interviewreviewinfo = "InterviewReviewInfo";
	static final String tn_interviewreview = "InterviewReview";
	static final String tn_post = "Post";
	
	@Autowired CompanyDAO cdao;

	@Override
	public CompanyInfo getCompanyInfo(Integer companyno) {
		return cdao.getCompanyInfo(companyno);
	}

	@Override
	public List<CompanyReview> getCompanyReview(CompanyReview review) {
		return cdao.getCompanyReview(review);
	}

	@Override
	public List<InterviewReview> getCompanyInterview(InterviewReview review) {
		return cdao.getCompanyInterview(review);
	}

	@Override
	public List<Post> getPost(Post post) {
		return cdao.getPost(post);
	}

	@Override
	public Post getSinglePost(Integer companyno, Integer postno) {
		return cdao.getSinglePost(companyno,postno);
	}

	@Override
	public List<Post> getAllPost() {
		return cdao.getAllPost();
	}

	@Override
	public Company getCompanyBase(Integer companyno) {
		return cdao.getCompanyBase(companyno);
	}

	@Override
	public int[] getCountInfo(Integer companyno) {
		String[] tablenames = {tn_companyreviewinfo,tn_interviewreviewinfo,tn_post};
		int[] tablecounts = new int[tablenames.length];
		for(int i=0; i<tablenames.length;i++) {
			tablecounts[i] = cdao.countTable(tablenames[i], companyno);
		}
		return tablecounts;
	}

	@Override
	public boolean doesUserFollow(Integer companyno, Integer memberno) {
		if(cdao.getUserFollow(companyno, memberno)!=0) return true;
		else return false;
	}

	@Override
	public boolean isSavedPost(Integer postno_now, Integer memberno_now) {
		if(cdao.getSavedPost(postno_now,memberno_now) >= 1) {
			return true;
		} else {
			return false;
		}
	}
	
	@Override
	public int insertPost(Post post) {
		return cdao.insertPost(post);
	}

	@Override
	public int insertReview(CompanyReview review) {
		int res1 = cdao.insertCompanyReviewInfo(review);
		int res2 = cdao.insertCompanyReview(review);
		return res1*res2;
	}

	@Override
	public int insertInterview(InterviewReview interview) {
		int res1 = cdao.insertInterviewReviewInfo(interview);
		int res2 = cdao.insertInterviewReview(interview);
		return res1*res2;
	}

	@Override
	public Map<String, List<Company>> getAllReviewRank(int limit) {
		Map<String, List<Company>> modelLst = new HashMap<String, List<Company>>();
		for(String columnname:cn_companyreview) {
		modelLst.put("rank_"+columnname,getReviewRank(columnname, limit));
		}
		return modelLst;
	}

	@Override
	public CompanyReview getReviewStat(Integer companyno) {
		return cdao.getReviewStat(companyno);
	}

	@Override
	public InterviewReview getInterviewStat(Integer companyno) {
		return cdao.getInterviewStat(companyno);
	}

	@Override
	public List<Company> getReviewRank(String columnname, int limit) {
		return cdao.getReviewRank(columnname,limit);
	}

	@Override
	public int followCompany(Integer companyno, Integer memberno, String userfollow) {
		int result = 0;
		if(userfollow.equals("true")) {
			result = cdao.unfollow(companyno, memberno);
		}else {
			result = cdao.follow(companyno, memberno);
		}
		return result;
	}

	@Override
	public int savePost(Integer postno, Integer memberno, String usersaved) {
		int result = 0;
		if(usersaved.equals("true")) {
			result = cdao.savePost(postno, memberno);
		} else {
			result = cdao.unsavePost(postno, memberno);
		}
		return result;
	}

	@Override
	public List<Jobcategory> getJobcategory() {
		return cdao.getJobcategory();
	}

	@Override
	public String getSubjobcategory(Integer jobcategoryno) {
		List<Jobcategory> jobcatelist =  cdao.getSubjobcategory(jobcategoryno);
		String body ="";
		body += "<option value=\"\" selected>세부직종을 선택해 주세요</option>";
		for(Jobcategory j : jobcatelist) {
			body += "<option value=\""+j.getSubjobcategory()+"\">"+j.getSubjobcategory()+"</option>";
			body += "\r\n";
		}
		return body;
	}

	@Override
	public List<Location> getLocation() {
		return cdao.getLocation();
	}

	@Override
	public String getSublocation(Integer locationcate) {
			List<Location> locationlist =  cdao.getSublocation(locationcate);
			String body ="";
			body += "<option value=\"\" selected>세부 근무지를 선택해 주세요</option>";
			for(Location l : locationlist) {
				body += "<option value=\""+l.getLocation()+(l.getSublocation()==null? "":" "+l.getSublocation())+"\">"+(l.getSublocation()==null? "전체":l.getSublocation())+"</option>";
				body += "\r\n";
			}
		return body;
	}

	@Override
	public List<Employtype> getEmploytype() {
		return cdao.getEmploytype();
	}

	@Override
	public List<Jobcategory> getReviewJobcateLst(Integer companyno) {
		return cdao.getTableJobcateLst(tn_companyreviewinfo,companyno);
	}

	@Override
	public List<CompanyReview> getReviewStatusLst(Integer companyno) {
		return cdao.getReviewStatusLst(companyno);
	}

	@Override
	public List<Jobcategory> getInterviewJobcateLst(Integer companyno) {
		return cdao.getTableJobcateLst(tn_interviewreviewinfo, companyno);
	}

	@Override
	public List<InterviewReview> getInterviewPositionLst(Integer companyno) {
		return cdao.getInterviewPositionLst(companyno);
	}

	@Override
	public List<InterviewReview> getInterviewSuccessLst(Integer companyno) {
		return cdao.getInterviewSuccessLst(companyno);
	}

	@Override
	public List<Jobcategory> getPostJobcateLst(Integer companyno) {
		return cdao.getTableJobcateLst(tn_post,companyno);
	}

	@Override
	public String getPostsubjobcategory(Integer companyno, String jobcategory) {
		List<Jobcategory> jobcatelist =  cdao.getPostSubjobcategory(companyno, jobcategory);
		String body ="";
		body += "<option value=\"null\">세부 직종 전체</option>";
		for(Jobcategory j : jobcatelist) {
			body += "<option value=\""+j.getSubjobcategory()+"\">"+j.getSubjobcategory()+"</option>";
			body += "\r\n";
		}
		return body;
	}


}
