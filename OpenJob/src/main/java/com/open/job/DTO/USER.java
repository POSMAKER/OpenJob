package com.open.job.DTO;

public class USER {
	private String memberno;
	private String memberemail;
	private String companyno;
	private String companyname;
	
	public USER() {
		super();
	}

	public USER(String memberno, String memberemail, String companyno, String companyname) {
		super();
		this.memberno = memberno;
		this.memberemail = memberemail;
		this.companyno = companyno;
		this.companyname = companyname;
	}

	public String getMemberno() {
		return memberno;
	}
	public void setMemberno(String memberno) {
		this.memberno = memberno;
	}
	public String getMemberemail() {
		return memberemail;
	}
	public void setMemberemail(String memberemail) {
		this.memberemail = memberemail;
	}
	public String getCompanyno() {
		return companyno;
	}
	public void setCompanyno(String companyno) {
		this.companyno = companyno;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	
}
