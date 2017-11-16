package com.open.job.IDAO;

import java.util.List;

import com.open.job.DTO.Company;

public interface CompanyDAO {
	public List<Company> getCompanyList();
	public Company getCompanyInfo(Integer companyno);
}
