package com.open.job.DTO;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.open.job.DTO.sub.SubCommonInfo;

public class Post extends SubCommonInfo{
	// 공고 번호 
    private Integer postno;
    
    // 기업 번호 
    private Integer companyno;

    // 기업 소개 회사 소개와는 다르다.
    private String companyintro;

    // 주요업무 
    private String mainduty;

    // 자격 요건 
    private String requirement;

    // 채용 절차 
    private String process;

    // 담당자 공고 담당자 이름
    private String personcharged;

    // 담당자 이메일 공고 작성자 이메일을 디폴트로
    private String emailcharged;

    // 담당자 번호 공고 작성자 번호를 디폴트로
    private String phonecharged;

    // 최종 학력 
    private String educationrecord;

    // 급여 
    private String salary;

    // 직급 
    private String position;

    // 직책 
    private String duty;

    // 경력 
    private String career;

    // 공고 마감일 Null이면 채용시 마감.
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date enddate;

    // 공고 시작일 
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startdate;

    // 작성일 
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date writedate;

    // 공고 타이틀 공고 타이틀
    private String title;
    
    private String companyname;
    
    public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getThumbimg() {
		return thumbimg;
	}

	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}

	private String thumbimg;

	public Integer getPostno() {
		return postno;
	}

	public void setPostno(Integer postno) {
		this.postno = postno;
	}

	public Integer getCompanyno() {
		return companyno;
	}

	public void setCompanyno(Integer companyno) {
		this.companyno = companyno;
	}

	public String getCompanyintro() {
		return companyintro;
	}

	public void setCompanyintro(String companyintro) {
		this.companyintro = companyintro;
	}

	public String getMainduty() {
		return mainduty;
	}

	public void setMainduty(String mainduty) {
		this.mainduty = mainduty;
	}

	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public String getPersoncharged() {
		return personcharged;
	}

	public void setPersoncharged(String personcharged) {
		this.personcharged = personcharged;
	}

	public String getEmailcharged() {
		return emailcharged;
	}

	public void setEmailcharged(String emailcharged) {
		this.emailcharged = emailcharged;
	}

	public String getPhonecharged() {
		return phonecharged;
	}

	public void setPhonecharged(String phonecharged) {
		this.phonecharged = phonecharged;
	}

	public String getEducationrecord() {
		return educationrecord;
	}

	public void setEducationrecord(String educationrecord) {
		this.educationrecord = educationrecord;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getDuty() {
		return duty;
	}

	public void setDuty(String duty) {
		this.duty = duty;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public Date getEnddate() {
		return enddate;
	}

	public void setEnddate(Date enddate) {
		this.enddate = enddate;
	}

	public Date getStartdate() {
		return startdate;
	}

	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}

	public Date getWritedate() {
		return writedate;
	}

	public void setWritedate(Date writedate) {
		this.writedate = writedate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
    
}
