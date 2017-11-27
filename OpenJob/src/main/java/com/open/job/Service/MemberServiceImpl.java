package com.open.job.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.job.DTO.Member;
import com.open.job.IDAO.MemberDAO;
import com.open.job.IService.MemberService;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO mdao;

	@Override
	public int insertMember(Member member) {
		return mdao.insertMember(member);
	}

	
	@Override
	public List<Member> getMemberList() {
		return mdao.getMemberList();
	}

	

}
