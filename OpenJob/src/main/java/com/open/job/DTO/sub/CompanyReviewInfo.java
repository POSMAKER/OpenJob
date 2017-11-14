package com.open.job.DTO.sub;

import java.util.Date;

public class CompanyReviewInfo extends SubCommonInfo{
	  // 기업 리뷰 번호 
    private Integer companyreviewno;

    // 기업 번호 
    private Integer companyno;

    // 회원 번호 
    private Integer memberno;

    // 작성일 
    private Date writedate;

    // 직장 상태 
    private String employstatus;

	public Integer getCompanyreviewno() {
		return companyreviewno;
	}

	public void setCompanyreviewno(Integer companyreviewno) {
		this.companyreviewno = companyreviewno;
	}

	public Integer getCompanyno() {
		return companyno;
	}

	public void setCompanyno(Integer companyno) {
		this.companyno = companyno;
	}

	public Integer getMemberno() {
		return memberno;
	}

	public void setMemberno(Integer memberno) {
		this.memberno = memberno;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public String getEmploystatus() {
		return employstatus;
	}

	public void setEmploystatus(String employstatus) {
		this.employstatus = employstatus;
	}
    
}
