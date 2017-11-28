package com.open.job.DTO;

public class Member {
	// 회원 번호 
    private Integer memberno;

    // 성별 M, F
    private String gender;

    // 나이 
    private Integer age;

    // 이메일 
    private String email;

    // 비밀번호 SHA-512
    private String password;
    
    
    // 경력 
    private Integer career;
    

	public Integer getMemberno() {
		return memberno;
	}

	public void setMemberno(Integer memberno) {
		this.memberno = memberno;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getCareer() {
		return career;
	}

	public void setCareer(Integer career) {
		this.career = career;
	}
    
}
