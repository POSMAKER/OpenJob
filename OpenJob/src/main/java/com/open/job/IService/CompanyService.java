package com.open.job.IService;

import java.util.List;
import java.util.Map;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.InterviewReview;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;

public interface CompanyService {
	public CompanyInfo getCompanyInfo(Integer companyno);
	public Company getCompanyBase(Integer companyno);
	public String getCompBaseBody(Integer companyno);
	public int[] getCountInfo(Integer companyno);
	public boolean doesUserFollow(Integer companyno, Integer memberno);
	public int followCompany(Integer companyno, Integer memberno, String string);
	
	public List<Jobcategory> getJobcategory();
	public String getSubjobcategory(Integer jobcategoryno);
	public String getSublocation(Integer locationcate);
	public List<Location> getLocation();
	public List<Employtype> getEmploytype();
	
	public int insertPost(Post post);
	public int insertReview(CompanyReview review);
	public int insertInterview(InterviewReview interview);
	
	public List<Post> getPost(Post post);
	public List<CompanyReview> getCompanyReview(CompanyReview review);
	public List<InterviewReview> getCompanyInterview(InterviewReview interview);
	
	public List<Jobcategory> getReviewJobcateLst(Integer companyno);
	public List<Jobcategory> getInterviewJobcateLst(Integer companyno);
	public List<Jobcategory> getPostJobcateLst(Integer companyno);
	
	public List<CompanyReview> getReviewStatusLst(Integer companyno);
	public List<InterviewReview> getInterviewPositionLst(Integer companyno);
	public List<InterviewReview> getInterviewSuccessLst(Integer companyno);
	public String getPostsubjobcategory(Integer companyno, String jobcategory);
	
	public Post getSinglePost(Integer companyno, Integer postno);
	public CompanyReview getReviewStat(Integer companyno);
	public InterviewReview getInterviewStat(Integer companyno);
	public Map<String,List<Company>> getAllReviewRank(int limit);
	public List<Company> getReviewRank(String columnname,int limit);
	public List<Post> getAllPost();
	public boolean isSavedPost(Integer postno_now, Integer memberno_now);
	public int savePost(Integer postno, Integer memberno, String usersaved);
	
}
