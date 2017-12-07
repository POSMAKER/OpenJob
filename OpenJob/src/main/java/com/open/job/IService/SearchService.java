package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.Dday;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.Type;

public interface SearchService {
	// 검색_기업 리스트
	public List<Company> getCompanyList(String category,String searchWord);
	// 검색_공고 리스트
	public List<Post> getPostList(String category,String searchWord);
	// 상세 검색_공고 리스트
	public List<Post> getResult(String Location, String jobcate, String career, String type, String dday);
	// 빠른 검색
	public String getQuickCompSearch(String searchword, String onclickfunction_name);
	
	// 옵션
	public List<Location> getLocation();
	public List<Location> getSubLocation();
	public List<Jobcategory> getjobcategory();
	public List<Jobcategory> getSubjobcategory();
	public List<Type> getType();
	public List<Dday> getDday();
}