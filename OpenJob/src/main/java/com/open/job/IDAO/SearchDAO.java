package com.open.job.IDAO;

import java.util.List;
import java.util.Map;

import com.open.job.DTO.Company;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;

public interface SearchDAO {
	public List<Post> getAllPostList();
	public List<Post> getSearchPostList(Map<String, String> map);
	public List<Company> getSearchCompanyList(Map<String, String> map); 
	public List<Location> getLocation();
	public List<Location> getSubLocation();
	public List<Company> getQuickCompSearch(String searchword);
}
