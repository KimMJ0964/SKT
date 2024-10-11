package com.skt.member.service;

import org.apache.ibatis.session.SqlSession;
import org.eclipse.tags.shaded.org.apache.xpath.operations.String;

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

	@Override
		public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = mDao.insertMember(sqlSession, m);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public int checkId(java.lang.String checkId) {
        // SqlSession 객체를 생성
        SqlSession sqlSession = Template.getSqlSession();
        int result = 0;
        
        try {
            // MemberDao의 checkId 메서드 호출
            result = mDao.checkId(sqlSession, checkId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            sqlSession.close(); // SqlSession 객체 닫기
        }
        
        return result;
    }    

	
}
