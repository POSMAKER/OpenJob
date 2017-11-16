package com.open.job.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Post;
import com.open.job.IDAO.SearchDAO;
import com.open.job.IService.SearchService;

@Service
public class SearchServiceImpl implements SearchService{
	@Autowired
	private SearchDAO sdao;

	@Override
	public List<Post> getPostList(String searchOpt, String searchWord) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("searchOpt", searchOpt);
		map.put("searchWord", searchWord);
		
		if("".equals(searchWord)) {
			return sdao.getAllPostList();
		}else {
			return sdao.getSearchPostList(map);
		}
	}
}
