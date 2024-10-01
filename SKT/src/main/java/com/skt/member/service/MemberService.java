package com.skt.member.service;

import com.skt.member.model.vo.Member;

public interface MemberService {
	public abstract Member loginMember(Member m);
	
	int insertMember(Member m);
	
	int checkId(String checkId);

}
