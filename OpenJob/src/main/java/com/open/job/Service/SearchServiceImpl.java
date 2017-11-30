package com.open.job.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.IDAO.SearchDAO;
import com.open.job.IService.SearchService;

@Service
public class SearchServiceImpl implements SearchService {
	@Autowired
	private SearchDAO sdao;

	@Override
	public List<Post> getPostList(String category, String searchWord) {
		if ("".equals(searchWord)) {
			return sdao.getAllPostList();
		} else {
			Map<String, String> map = new HashMap<String, String>();

			map.put("category", category);
			map.put("searchWord", searchWord);

			return sdao.getSearchPostList(map);
		}
	}

	@Override
	public List<Company> getCompanyList(String category, String searchWord) {
		if ("".equals(searchWord)) {
			return new ArrayList<Company>();
		} else {
			Map<String, String> map = new HashMap<String, String>();

			map.put("category", category);
			map.put("searchWord", searchWord);

			return sdao.getSearchCompanyList(map);
		}
	}

	@Override
	public List<Location> getLocation() {
		return sdao.getLocation();
	}

	@Override
	public List<Location> getSubLocation() {
		return sdao.getSubLocation();
	}

	@Override
	public String getQuickCompSearch(String searchword, String onclickfunction_name) {
		String body = "";
		body		= "<style>"
					+ "span.shover:hover{"
					+ "background-color:#d9d9d9;"
					+ "}"
					+ "</style>";
		List<Company> compLst = sdao.getQuickCompSearch(searchword);
		for(Company comp:compLst) {
			body += "<div style=\"cursor:pointer; width:100%; height:30px;\"><span class=\"shover\" style=\"width:100%; height:100%; display:block;\" onclick=\""+onclickfunction_name+"('"+comp.getCompanyno()+","+comp.getCompanyname()+"')\">"+comp.getCompanyname()+"</span></div>";
		}
		return body;
	}
	
	@Override
	public List<Jobcategory> getjobcategory() {
		return sdao.getjobcategory();
	}
	
	@Override
	public List<Jobcategory> getSubjobcategory() {
		return sdao.getSubjobcategory();
	}
	
	@Override
	public List<String> getType() {
		List<String> typeList = new ArrayList<String>();
		String [] str = {"중소기업","대기업","중견기업","외국계 (외국 법인기업)","외국계 (외국 투자기업)","국내 비영리단체/협회/교육재단","대기업 계열사/자회사","국내 공공기관/공기업","병원","대학교/대학원"};
		
		for(int i=0;i<str.length;i++) {
			typeList.add(str[i]);
		}
		return typeList;
	}
	
	@Override
	public List<String> getDate() {
		List<String> dateList = new ArrayList<String>();
		String [] str = {"전체","오늘","최근 3일","최근 1주일","최근 1개월"};
		
		for(int i=0;i<str.length;i++) {
			dateList.add(str[i]);
		}
		return dateList;
	}
	
	@Override
	public String getResult(String location, String career) {
		String wrap = "";
		wrap = location;
		
		String[] wrapSql = wrap.split(",");

		List<Post> lst = sdao.getResult(wrapSql);
		
		String str = "";
		for(Post post:lst) {
			str += "<table id='searched' border=\"1\" style=\"min-width: 600px;\">\r\n" + 
					"								<tr>\r\n" + 
					"									<td style=\"width: 130px; padding: 15px;\" rowspan=\"3\"><a\r\n" + 
					"										href=\"/job/company/"+post.getCompanyno()+"/info\"><img\r\n" + 
					"											src=\"/job/companyimgs/"+ post.getThumbimg() +"\"\r\n" + 
					"											style=\"width: 100px;\"></a></td>\r\n" + 
					"									<td colspan=\"2\" style=\"font-weight: bold;\"><a href=\"#\">"+post.getTitle()+"</a></td>\r\n" + 
					"								</tr>\r\n" + 
					"								<tr>\r\n" + 
					"									<td colspan=\"2\"><a\r\n" + 
					"										href=\"/job/company/"+post.getCompanyno()+"/info\">"+post.getCompanyname()+"</a></td>\r\n" + 
					"								</tr>\r\n" + 
					"								<tr>\r\n" + 
					"									<td>"+post.getJobcategory()+"</td>\r\n" + 
					"									<td>"+post.getSubjobcategory()+"</td>\r\n" + 
					"								</tr>\r\n" + 
					"							</table>";
		}
		return str;
	}

}
