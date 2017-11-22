package com.open.job.DTO;

public class Jobcategory {
	 // 직종 번호 
    private Integer jobcategoryno;

    // 직종 
    private String jobcategory;

    // 직종상세 
    private String subjobcategory;

	public Integer getJobcategoryno() {
		return jobcategoryno;
	}

	public void setJobcategoryno(Integer jobcategoryno) {
		this.jobcategoryno = jobcategoryno;
	}

	public String getJobcategory() {
		return jobcategory;
	}

	public void setJobcategory(String jobcategory) {
		this.jobcategory = jobcategory;
	}

	public String getSubjobcategory() {
		return subjobcategory;
	}

	public void setSubjobcategory(String subjobcategory) {
		this.subjobcategory = subjobcategory;
	}
    
}
