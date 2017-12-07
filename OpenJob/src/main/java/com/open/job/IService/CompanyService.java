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
	//******컨텐츠 서비스 (하위 검색 겸용)******//
	// 기업_기업 소개 화면
	public CompanyInfo getCompanyInfo(Integer companyno);
	// 기업_기업 리뷰 화면
	public List<CompanyReview> getCompanyReview(CompanyReview review);
	// 기업_면접 후기 화면
	public List<InterviewReview> getCompanyInterview(InterviewReview interview);
	// 기업_채용 공고 화면
	public List<Post> getPost(Post post);
	// 채용 공고 (개별)
	public Post getSinglePost(Integer companyno, Integer postno);
	// 채용 홈
	public List<Post> getAllPost();
	
	//*****기본 화면 구성*****//
	// 타이틀용 기본 정보
	public Company getCompanyBase(Integer companyno);
	// 네비게이션용 게시물 갯수
	public int[] getCountInfo(Integer companyno);
	// 찜 정보
	public boolean doesUserFollow(Integer companyno, Integer memberno);
	public boolean isSavedPost(Integer postno_now, Integer memberno_now);
	
	//*********제출 서비스********//
	public int insertPost(Post post);
	public int insertReview(CompanyReview review);
	public int insertInterview(InterviewReview interview);	
	
	//*********통계 서비스**********//
	// 기업 홈 통계 (전체)
	public Map<String,List<Company>> getAllReviewRank(int limit);
	// 기업 리뷰 통계
	public CompanyReview getReviewStat(Integer companyno);
	// 면접 후기 통계
	public InterviewReview getInterviewStat(Integer companyno);
	// 기업 홈 통계 (개별)
	public List<Company> getReviewRank(String columnname,int limit);
	
	//******찜 서비스*******//
	public int followCompany(Integer companyno, Integer memberno, String string);
	public int savePost(Integer postno, Integer memberno, String usersaved);
	
	//********옵션 서비스*********//
	public List<Jobcategory> getJobcategory();
	public String getSubjobcategory(Integer jobcategoryno);
	public List<Location> getLocation();
	public String getSublocation(Integer locationcate);
	public List<Employtype> getEmploytype();
	
	public List<Jobcategory> getReviewJobcateLst(Integer companyno);
	public List<CompanyReview> getReviewStatusLst(Integer companyno);
	
	public List<Jobcategory> getInterviewJobcateLst(Integer companyno);
	public List<InterviewReview> getInterviewPositionLst(Integer companyno);
	public List<InterviewReview> getInterviewSuccessLst(Integer companyno);
	
	public List<Jobcategory> getPostJobcateLst(Integer companyno);
	public String getPostsubjobcategory(Integer companyno, String jobcategory);
}
