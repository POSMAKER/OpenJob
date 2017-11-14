package com.open.job.DTO.sub;

import java.util.Date;

public class InterviewReviewInfo extends SubCommonInfo {
	// 면접 후기 번호 
    private Integer interviewno;

    // 기업 번호 
    private Integer companyno;

    // 회원 번호 
    private Integer memberno;

    // 작성일 
    private Date writedate;

    // 총경력 
    private String career;

    // 직급 
    private String position;

	public Integer getInterviewno() {
		return interviewno;
	}

	public void setInterviewno(Integer interviewno) {
		this.interviewno = interviewno;
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

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
    
}
