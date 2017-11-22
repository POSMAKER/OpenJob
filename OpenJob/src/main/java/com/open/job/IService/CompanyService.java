package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.sub.CompanyInfo;

public interface CompanyService {
	public CompanyInfo getCompanyInfo(Integer companyno);
	public Company getCompanyBase(Integer companyno);
	public List<Jobcategory> getJobcategory();
	public String getSubjobcategory(Integer jobcategoryno);
	public List<Location> getLocation();
	public List<Employtype> getEmploytype();
}
