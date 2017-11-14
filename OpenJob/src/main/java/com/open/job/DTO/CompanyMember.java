package com.open.job.DTO;

public class CompanyMember {
	// 회원번호 
    private Integer memberno;

    // 기업 번호 기업을 등록하고 난 뒤에 얻음
    private Integer companyno;

    // 담당자 기업회원 등록시 기입
    private String personcharged;

    // 담당자 번호 기업회원 등록시 기입
    private String phonecharged;

	public Integer getMemberno() {
		return memberno;
	}

	public void setMemberno(Integer memberno) {
		this.memberno = memberno;
	}

	public Integer getCompanyno() {
		return companyno;
	}

	public void setCompanyno(Integer companyno) {
		this.companyno = companyno;
	}

	public String getPersoncharged() {
		return personcharged;
	}

	public void setPersoncharged(String personcharged) {
		this.personcharged = personcharged;
	}

	public String getPhonecharged() {
		return phonecharged;
	}

	public void setPhonecharged(String phonecharged) {
		this.phonecharged = phonecharged;
	}
    
}
