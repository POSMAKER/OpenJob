package com.open.job.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;
import com.open.job.DTO.sub.CompanyReviewInfo;
import com.open.job.IDAO.CompanyDAO;
import com.open.job.IService.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired CompanyDAO cdao;

	@Override
	public CompanyInfo getCompanyInfo(Integer companyno) {
		return cdao.getCompanyInfo(companyno);
	}

	@Override
	public Company getCompanyBase(Integer companyno) {
		return cdao.getCompanyBase(companyno);
	}

	@Override
	public List<Jobcategory> getJobcategory() {
		return cdao.getJobcategory();
	}

	@Override
	public String getSubjobcategory(Integer jobcategoryno) {
		List<Jobcategory> jobcatelist =  cdao.getSubjobcategory(jobcategoryno);
		String body ="";
		body += "<option value=\"\" selected>세부직종을 선택해 주세요</option>";
		for(Jobcategory j : jobcatelist) {
			body += "<option value=\""+j.getSubjobcategory()+"\">"+j.getSubjobcategory()+"</option>";
			body += "\r\n";
		}
		return body;
	}

	@Override
	public List<Location> getLocation() {
		return cdao.getLocation();
	}

	@Override
	public List<Employtype> getEmploytype() {
		return cdao.getEmploytype();
	}

	@Override
	public int insertPost(Post post) {
		return cdao.insertPost(post);
	}

	@Override
	public List<Post> getPost(Integer companyno) {
		return cdao.getPost(companyno);
	}

	@Override
	public String getCompBaseBody(Integer companyno) {
		Company comp = cdao.getCompanyBase(companyno);
		if(comp==null) return "";
		String body = 
				"		<table style=\"padding:15px;\">\r\n" + 
				"			<tr>\r\n" + 
				"				<td><img alt=\"Img not found\"\r\n" + 
				"					onerror=\"this.src='/job/companyimgs/0.jpg';\"\r\n" + 
				"					src=\"/job/companyimgs/"+(comp.getThumbimg().equals("")? "0.jpg":comp.getThumbimg())+"\"\r\n" + 
				"					style=\"width: 110px; height: 110px;\"></td>\r\n" + 
				"				<td><span\r\n" + 
				"					style=\"font-size: 20px; font-weight: bold; margin: 5px;\">&nbsp;&nbsp;"+comp.getCompanyname()+"</span>\r\n" + 
				"				</td>\r\n" + 
				"			</tr>\r\n" + 
				"		</table>\r\n";
		return body;
	}

	@Override
	public int insertReview(CompanyReview review) {
		int res1 = cdao.insertCompanyReviewInfo(review);
		int res2 = cdao.insertCompanyReview(review);
		return res1*res2;
	}
}
