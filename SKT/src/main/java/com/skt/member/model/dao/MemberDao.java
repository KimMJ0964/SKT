package com.skt.member.model.dao;

import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;

import com.skt.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public Member searchByEmailOrPhone(SqlSession sqlSession, String input) {
	    return sqlSession.selectOne("memberMapper.searchByEmailOrPhone", input);
	}
	
	public int insertMember(SqlSession sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public int checkId(SqlSession sqlSession, String checkId) {
        return sqlSession.selectOne("memberMapper.checkId", checkId);
    }

}
