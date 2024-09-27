package com.skt.member.service;

import org.apache.ibatis.session.SqlSession;

import com.skt.common.template.Template;
import com.skt.member.model.dao.MemberDao;
import com.skt.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{
	
	private MemberDao mDao = new MemberDao();

	@Override
	public Member loginMember(Member m) {
	    SqlSession sqlSession = Template.getSqlSession();
	    Member loginUser = null;
	    
	    try {
	        loginUser = mDao.loginMember(sqlSession, m);
	    } catch (Exception e) {
	        e.printStackTrace(); 
	    } finally {
	        sqlSession.close();
	    }
	    
	    return loginUser;
	}
}
