package com.open.job.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
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
}
