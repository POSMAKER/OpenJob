package com.open.job.DTO;

public class Industry {
	// 산업 번호 
    private Integer industryno;

    // 산업군 
    private String industry;

    // 산업군 서브 
    private String subindustry;

    public Integer getIndustryno() {
        return industryno;
    }

    public void setIndustryno(Integer industryno) {
        this.industryno = industryno;
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
