package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.Post;

public interface SearchService {
	public List<Post> getPostList(String category,String searchWord);
	public List<Company> getCompanyList(String category,String searchWord);
}
