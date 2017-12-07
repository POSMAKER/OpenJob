package com.open.job.Service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.open.job.DTO.Member;
import com.open.job.DTO.USER;
import com.open.job.DTO.UserAcount;
import com.open.job.IDAO.MemberDAO;
import com.open.job.IService.MemberService;


@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO memberDao;
	@Override
	public USER getUserInfo(String memberemail) {
		USER USER = memberDao.getUserInfo(memberemail);
		return USER;
	}
	@Override
	public UserAcount getUserAcountInfo(String membemail) {
		return memberDao.getUserAcountInfo(membemail);
	}
	@Override
	public List<UserAcount> getFollowCompany(String membemail) {
		List<UserAcount> userAcountLst = memberDao.getFollowCompany(membemail);
		return userAcountLst;
	}
	@Override
	public List<UserAcount> getSaveJobsInfo(String membemail) {
		List<UserAcount> saveJobLst = memberDao.getSaveJobsInfo(membemail);
		return saveJobLst;
	}
	@Override
	public boolean loginProc(Member member) {
		if(memberDao.loginProc(member)==null)
			return false;
		return true;
	}
	@Override
	public int insertMember(Member member) {
		return memberDao.insertMember(member);
	}
}
