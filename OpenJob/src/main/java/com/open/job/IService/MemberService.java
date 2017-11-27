package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Member;

public interface MemberService {
	public int insertMember(Member member);
	public List<Member> getMemberList();
}
