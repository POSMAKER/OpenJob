package com.open.job.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.sub.CompanyInfo;
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
}
