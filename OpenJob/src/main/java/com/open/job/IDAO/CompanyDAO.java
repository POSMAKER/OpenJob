package com.open.job.IDAO;

import java.util.List;

import com.open.job.DTO.Company;
import com.open.job.DTO.Employtype;
import com.open.job.DTO.Jobcategory;
import com.open.job.DTO.Location;
import com.open.job.DTO.Post;
import com.open.job.DTO.sub.CompanyInfo;

public interface CompanyDAO {
	public CompanyInfo getCompanyInfo(Integer companyno);
	public Company getCompanyBase(Integer companyno);
	public List<Jobcategory> getJobcategory();
	public List<Jobcategory> getSubjobcategory(Integer jobcategoryno);
	public List<Location> getLocation();
	public List<Employtype> getEmploytype();
	public int insertPost(Post post);
	public List<Post> getPost(Integer companyno);
}
