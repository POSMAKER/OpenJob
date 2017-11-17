package com.open.job.IDAO;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.sub.CompanyInfo;

public interface CompanyDAO {
	public CompanyInfo getCompanyInfo(Integer companyno);
	public Company getCompanyBase(Integer companyno);
}
