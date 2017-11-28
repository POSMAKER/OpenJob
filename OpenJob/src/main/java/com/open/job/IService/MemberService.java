package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Member;
import com.open.job.DTO.USER;

public interface MemberService {
	public int insertMember(Member member);
	public List<Member> getMemberList();
	public boolean loginProc(Member member);
	public USER getUserInfo(String memberemail);
}
