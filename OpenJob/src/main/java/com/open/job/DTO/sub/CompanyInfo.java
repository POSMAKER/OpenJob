package com.open.job.DTO.sub;

import com.open.job.DTO.Company;

public class CompanyInfo extends Company{
	// 기업 번호 
    private Integer companyno;

    // 웹사이트 
    private String website;

    // 사원수 
    private String employeenum;

    // 설립일 
    private String founddate;

    // 기업형태 
    private String type;

    // 매출액 
    private String sales;

    // 대표 
    private String ceo;

    // 회사소개 
    private String companyinfo;

	public Integer getCompanyno() {
		return companyno;
	}

	public void setCompanyno(Integer companyno) {
		this.companyno = companyno;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getEmployeenum() {
		return employeenum;
	}

	public void setEmployeenum(String employeenum) {
		this.employeenum = employeenum;
	}

	public String getFounddate() {
		return founddate;
	}

	public void setFounddate(String founddate) {
		this.founddate = founddate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSales() {
		return sales;
	}

	public void setSales(String sales) {
		this.sales = sales;
	}

	public String getCeo() {
		return ceo;
	}

	public void setCeo(String ceo) {
		this.ceo = ceo;
	}

	public String getCompanyinfo() {
		return companyinfo;
	}

	public void setCompanyinfo(String companyinfo) {
		this.companyinfo = companyinfo;
	}

}
