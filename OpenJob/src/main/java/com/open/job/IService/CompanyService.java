package com.open.job.IService;

import com.open.job.DTO.Company;
import com.open.job.DTO.sub.CompanyInfo;

public interface CompanyService {
	public CompanyInfo getCompanyInfo(Integer companyno);
	public Company getCompanyBase(Integer companyno);
}
