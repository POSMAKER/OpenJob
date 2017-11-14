package com.open.job.DTO;

public class Admin {
	// 회원 번호 
    private Integer memberno;

    // 관리자 등급 
    private Integer grade;

	public Integer getMemberno() {
		return memberno;
	}

	public void setMemberno(Integer memberno) {
		this.memberno = memberno;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}
    
}
