package com.open.job.DTO.sub;

public class SubCommonInfo {
	// 직종 
    private String jobcategory;

    // 직종 상세 
    private String subjobcategory;

    // 고용 형태 
    private String employtype;

    // 근무지역 
    private String location;

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

	public String getEmploytype() {
		return employtype;
	}

	public void setEmploytype(String employtype) {
		this.employtype = employtype;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
    
}
