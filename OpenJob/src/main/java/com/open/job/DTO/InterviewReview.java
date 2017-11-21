package com.open.job.DTO;

import com.open.job.DTO.sub.InterviewReviewInfo;

public class InterviewReview extends InterviewReviewInfo{
	// 면접 후기 번호 
    private Integer reviewno;

    // 면접 과정 
    private String interviewprocess;

    // 면접 질문 
    private String interviewquestion;

    // 면접 질문 답변 
    private String interviewanswer;

    // 연봉 협상 절차 
    private String salaryprocess;

    // 면접 경험 Negetive,Soso,Positive
    private String experience;

    // 면접 난이도 1~5
    private Integer interviewlevel;

    // 합격 여부 Y,N,Wait
    private String successed;

    // 면접 경로 참고
    private String interviewroot;

	public Integer getReviewno() {
		return reviewno;
	}

	public void setReviewno(Integer reviewno) {
		this.reviewno = reviewno;
	}

	public String getInterviewprocess() {
		return interviewprocess;
	}

	public void setInterviewprocess(String interviewprocess) {
		this.interviewprocess = interviewprocess;
	}

	public String getInterviewquestion() {
		return interviewquestion;
	}

	public void setInterviewquestion(String interviewquestion) {
		this.interviewquestion = interviewquestion;
	}

	public String getInterviewanswer() {
		return interviewanswer;
	}

	public void setInterviewanswer(String interviewanswer) {
		this.interviewanswer = interviewanswer;
	}

	public String getSalaryprocess() {
		return salaryprocess;
	}

	public void setSalaryprocess(String salaryprocess) {
		this.salaryprocess = salaryprocess;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public Integer getInterviewlevel() {
		return interviewlevel;
	}

	public void setInterviewlevel(Integer interviewlevel) {
		this.interviewlevel = interviewlevel;
	}

	public String getSuccessed() {
		return successed;
	}

	public void setSuccessed(String successed) {
		this.successed = successed;
	}

	public String getInterviewroot() {
		return interviewroot;
	}

	public void setInterviewroot(String interviewroot) {
		this.interviewroot = interviewroot;
	}
    
}
