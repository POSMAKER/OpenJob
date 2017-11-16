package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Company;

public interface CompanyService {
	public List<Company> getCompanyList();
	public Company getCompanyInfo(Integer companyno);
}
