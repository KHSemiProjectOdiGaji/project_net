package odi_project.member.model.service;

import org.apache.ibatis.session.SqlSession;

import odi_project.common.template.Template;
import odi_project.member.model.dao.MemberDao;
import odi_project.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

private MemberDao memberDao = new MemberDao();
	
	@Override
	public Member loginMember(Member m) {
		
		//Connection conn = getConnection(); 
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = memberDao.loginMember(sqlSession, m);
		
		//close(conn)
		sqlSession.close();
		
		return loginUser;
	}

	public int insertMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = memberDao.insertMember(sqlSession, m);
		
		if(result>0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}	
}