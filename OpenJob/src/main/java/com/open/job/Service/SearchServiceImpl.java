package com.open.job.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.Post;
import com.open.job.IDAO.SearchDAO;
import com.open.job.IService.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private SearchDAO sdao;

	@Override
	public List<Post> getPostList(String category, String searchWord) {
		if ("all".equals(category) || "post".equals(category)) {
			if ("".equals(searchWord)) {
				return sdao.getAllPostList();
			} else {
				Map<String, String> map = new HashMap<String, String>();
				
				map.put("category", category);
				map.put("searchWord", searchWord);
				
				return sdao.getSearchPostList(map);
			}
		} else {
			return null;
		}
	}

	@Override
	public List<Company> getCompanyList(String category, String searchWord) {
		if ("all".equals(category) || "company".equals(category)) {
			if ("".equals(searchWord)) {
				return null;
			} else {
				Map<String, String> map = new HashMap<String, String>();

				map.put("category", category);
				map.put("searchWord", searchWord);
				
				return sdao.getSearchCompanyList(map);
			}
		} else {
			return null;
		}
	}

}
