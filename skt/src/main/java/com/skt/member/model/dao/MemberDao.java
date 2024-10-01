package com.skt.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.skt.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public String searchByEmailOrPhone(SqlSession sqlSession, String input) {
		System.out.println("전달된 입력 값: " + input); 
	    return sqlSession.selectOne("memberMapper.searchByEmailOrPhone", input);
	}

	public String searchPassword(SqlSession sqlSession, String memId, String email) {
		Map<String, Object> paramMap = new HashMap<>();
	    paramMap.put("memId", memId);
	    paramMap.put("email", email);

	    return sqlSession.selectOne("memberMapper.searchPwd", paramMap);
	}

}
