package odi_project.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import odi_project.member.model.vo.Member;

public class MemberDao {

	public Member loginMember(SqlSession sqlSession, Member m) {
		
		// selectOne : 조회결과 없으면 null값 반환
		// sqlSession.sql문 종류에 맞는 메소드 ("mapper파일의 namespace.해당 sql문의 id값", sql문을 완성시킬 객체)
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int insertMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.insert("memberMapper.insertMember", m);
	}

}
