package com.open.job.IDAO;

import java.util.List;
import java.util.Map;

import com.open.job.DTO.Company;
import com.open.job.DTO.Location;
import com.open.job.DTO.Member;
import com.open.job.DTO.Post;
import com.open.job.DTO.USER;
import com.open.job.DTO.UserAcount;

public interface MemberDAO {
	public int insertMember(Member member);
	public String loginProc(Member member);
	public USER getUserInfo(String memberemail);
	public UserAcount getUserAcount(String membemail);
}
