package com.open.job.IDAO;

import java.util.List;
import java.util.Map;

import com.open.job.DTO.Company;
import com.open.job.DTO.Location;
import com.open.job.DTO.Member;
import com.open.job.DTO.Post;

public interface MemberDAO {
	public int inserMember(Member member);
	public List<Member> getMemberList();
}
