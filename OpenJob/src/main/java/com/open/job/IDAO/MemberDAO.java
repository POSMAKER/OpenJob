package com.open.job.IDAO;

import java.util.List;
import com.open.job.DTO.Member;
import com.open.job.DTO.USER;
import com.open.job.DTO.UserAcount;

public interface MemberDAO {
	// 회원 세션
	public USER getUserInfo(String memberemail);
	
	//*********페이지**********//
	// 회원 정보
	public UserAcount getUserAcountInfo(String membemail);
	// 팔로잉 기업
	public List<UserAcount> getFollowCompany(String membemail);
	// 저장된 채용
	public List<UserAcount> getSaveJobsInfo(String membemail);
	
	//*********기능**********//
	// 로그인 인증
	public String loginProc(Member member);
	// 회원 가입
	public int insertMember(Member member);
}
