package com.open.job.DTO;

import com.open.job.DTO.sub.Companyimg;

public class Company extends Companyimg{
	  // 기업 번호 
    private Integer companyno;

    // 기업 이름 
    private String companyname;

    // 주소 주소 DB
    private String address;

    // 산업군 
    private String industry;

    // 산업군 서브 
    private String subindustry;

    public Integer getCompanyno() {
        return companyno;
    }

    public void setCompanyno(Integer companyno) {
        this.companyno = companyno;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getSubindustry() {
        return subindustry;
    }

    public void setSubindustry(String subindustry) {
        this.subindustry = subindustry;
    }

}
