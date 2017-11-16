package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Post;

public interface SearchService {
	public List<Post> getPostList(String searchOpt,String searchWord);
}
