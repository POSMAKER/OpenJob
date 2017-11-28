package com.open.job.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.CompanyReview;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.InterviewReview;
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

	@Override
	public List<CompanyReview> getCompanyReview(Integer companyno) {
		return cdao.getCompanyReview(companyno);
	}

	@Override
	public List<InterviewReview> getCompanyInterview(Integer companyno) {
		return cdao.getCompanyInterview(companyno);
	}

	@Override
	public int insertInterview(InterviewReview interview) {
		int res1 = cdao.insertInterviewReviewInfo(interview);
		int res2 = cdao.insertInterviewReview(interview);
		return res1*res2;
	}

	@Override
	public Post getSinglePost(Integer postno) {
		return cdao.getSinglePost(postno);
	}

	@Override
	public String getSublocation(Integer locationcate) {
			List<Location> locationlist =  cdao.getSublocation(locationcate);
			String body ="";
			body += "<option value=\"\" selected>세부 근무지를 선택해 주세요</option>";
			for(Location l : locationlist) {
				body += "<option value=\""+l.getLocation()+(l.getSublocation()==null? "":" "+l.getSublocation())+"\">"+(l.getSublocation()==null? "전체":l.getSublocation())+"</option>";
				body += "\r\n";
			}
		return body;
	}

	@Override
	public int[] getCountInfo(Integer companyno) {
		String[] tablenames = {"CompanyReviewInfo","InterviewReviewInfo","Post"};
		int[] tablecounts = new int[tablenames.length];
		for(int i=0; i<tablenames.length;i++) {
			tablecounts[i] = cdao.countTable(tablenames[i], companyno);
		}
		return tablecounts;
	}

	@Override
	public boolean doesUserFollow(Integer companyno, Integer memberno) {
		if(cdao.getUserFollow(companyno, memberno)!=0) return true;
		else return false;
	}

	@Override
	public int followCompany(Integer companyno, Integer memberno, String mode) {
		int result = 0;
		if(mode.equals("delete")) {
			result = cdao.unfollow(companyno, memberno);
		}else {
			result = cdao.follow(companyno, memberno);
		}
		return result;
	}


}
