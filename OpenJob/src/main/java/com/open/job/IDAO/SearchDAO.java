package com.open.job.IDAO;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.open.job.DTO.Company;
import com.open.job.DTO.Dday;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.Type;

public interface SearchDAO {
	// 검색_기업 리스트
	public List<Company> getSearchCompanyList(Map<String, String> map);
	// 기본_공고 리스트
	public List<Post> getAllPostList();
	// 검색_공고 리스트
	public List<Post> getSearchPostList(Map<String, String> map);
	// 상세 검색_공고 리스트
	public List<Post> getResult(@Param("loca")String[] loca,
	@Param("job")String[] job,
	@Param("care")String[] care,
	@Param("type")String[] type,
	@Param("dday")String[] dday);
	// 빠른 검색
	public List<Company> getQuickCompSearch(String searchword);
	
	// 옵션
	public List<Location> getLocation();
	public List<Location> getSubLocation();
	public List<Jobcategory> getjobcategory();
	public List<Jobcategory> getSubjobcategory();
	public List<Type> getType();
	public List<Dday> getDday();
}
