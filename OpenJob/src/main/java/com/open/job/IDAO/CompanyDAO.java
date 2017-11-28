package com.open.job.IDAO;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.InterviewReview;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;
import com.open.job.DTO.sub.CompanyReviewInfo;

public interface CompanyDAO {
	public CompanyInfo getCompanyInfo(Integer companyno);

	public Company getCompanyBase(Integer companyno);

	public List<Jobcategory> getJobcategory();

	public List<Jobcategory> getSubjobcategory(Integer jobcategoryno);

	public List<Location> getLocation();

	public List<Employtype> getEmploytype();

	public int insertPost(Post post);

	public int insertCompanyReviewInfo(CompanyReview cr);

	public int insertCompanyReview(CompanyReview cr);

	public List<Post> getPost(Integer companyno);

	public List<CompanyReview> getCompanyReview(Integer companyno);

	public List<InterviewReview> getCompanyInterview(Integer companyno);

	public int insertInterviewReviewInfo(InterviewReview interview);

	public int insertInterviewReview(InterviewReview interview);
	
	public Post getSinglePost(Integer postno);
	
	public List<Location> getSublocation(Integer locationcate);
	
	public int countTable(String tablename,Integer companyno);
	
	public int getUserFollow(Integer companyno, Integer memberno);

	public int unfollow(Integer companyno, Integer memberno);

	public int follow(Integer companyno, Integer memberno);
}
