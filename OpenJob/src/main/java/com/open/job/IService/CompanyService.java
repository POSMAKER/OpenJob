package com.open.job.IService;

import java.util.List;

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
	public List<Jobcategory> getJobcategory();
	public String getSubjobcategory(Integer jobcategoryno);
	public String getSublocation(Integer locationcate);
	public List<Location> getLocation();
	public List<Employtype> getEmploytype();
	public int insertPost(Post post);
	public int insertReview(CompanyReview review);
	public int insertInterview(InterviewReview interview);
	public List<Post> getPost(Post post);
	public String getCompBaseBody(Integer companyno);
	public List<CompanyReview> getCompanyReview(Integer companyno);
	public List<InterviewReview> getCompanyInterview(Integer companyno);
	public Post getSinglePost(Integer postNo);
	public int[] getCountInfo(Integer companyno);
	public boolean doesUserFollow(Integer companyno, Integer memberno);
	public int followCompany(Integer companyno, Integer memberno, String string);
	public List<Jobcategory> getPostJobcateLst(Integer companyno);
	public String getPostsubjobcategory(Integer companyno, String jobcategory);
}
