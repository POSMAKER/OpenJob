package com.open.job.IService;

import java.util.List;

import com.open.job.DTO.Member;
import com.open.job.DTO.SavedCompany;
import com.open.job.DTO.USER;
import com.open.job.DTO.UserAcount;

public interface MemberService {
	public int insertMember(Member member);
	public boolean loginProc(Member member);
	public USER getUserInfo(String memberemail);
	public List<UserAcount> getFollowCompany(String membemail);
	public UserAcount getUserAcountInfo(String membemail);
	public List<UserAcount> getSaveJobsInfo(String membemail);	
}
