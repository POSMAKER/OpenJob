package com.open.job.IDAO;

import java.util.List;

import org.apache.ibatis.annotations.Param;

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

	public List<Post> getPost(Post post);

	public List<CompanyReview> getCompanyReview(CompanyReview review);

	public List<InterviewReview> getCompanyInterview(InterviewReview review);

	public int insertInterviewReviewInfo(InterviewReview interview);

	public int insertInterviewReview(InterviewReview interview);
	
	public Post getSinglePost(@Param("companyno")Integer companyno,@Param("postno") Integer postno);
	
	public List<Location> getSublocation(Integer locationcate);
	
	public int countTable(@Param( "tablename") String tablename,@Param("companyno") Integer companyno);
	
	public int getUserFollow(@Param("companyno") Integer companyno,@Param("memberno") Integer memberno);

	public int unfollow(@Param("companyno") Integer companyno,@Param("memberno") Integer memberno);

	public int follow(@Param("companyno") Integer companyno,@Param("memberno") Integer memberno);

	public List<Jobcategory> getPostSubjobcategory(@Param("companyno") Integer companyno, @Param("jobcategory") String jobcategory);

	public List<Jobcategory> getTableJobcateLst(@Param("tablename") String tablename,@Param("companyno") Integer companyno);

	public List<CompanyReview> getReviewStatusLst(Integer companyno);

	public List<InterviewReview> getInterviewPositionLst(Integer companyno);

	public List<InterviewReview> getInterviewSuccessLst(Integer companyno);

	public CompanyReview getReviewStat(Integer companyno);

	public InterviewReview getInterviewStat(Integer companyno);

	public List<Company> getReviewRank(@Param("columnname") String columnname,@Param("limit") int limit);

	public List<Post> getAllPost();
}
