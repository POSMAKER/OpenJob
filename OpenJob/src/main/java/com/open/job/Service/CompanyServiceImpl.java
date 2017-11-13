package com.open.job.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Company;
import com.open.job.IDAO.CompanyDAO;
import com.open.job.IService.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired CompanyDAO cdao;

	@Override
	public List<Company> getCompanyList() {
		return cdao.getCompanyList();
	}
	
}
