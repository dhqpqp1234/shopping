package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//로그인
	public UserVo userLogin(UserVo userVo) {
		
		UserVo uVo = sqlSession.selectOne("user.userLogin", userVo);
		
		return uVo;
	}
	
	//회원가입
	public int userJoin(UserVo userVo) {
		
		int count = sqlSession.insert("user.userInsert", userVo);
		
		return count;
	}
	
	//id 중복체크
	public int idCheck(UserVo userVo) {
		
		int result = sqlSession.selectOne("user.idCheck", userVo);
		
		return result;
	}
	
	//eMail 중복체크
	public int eMailCheck(UserVo userVo) {
		
		int result = sqlSession.selectOne("user.eMailCheck", userVo);
		
		return result;
	}
	
	//ph 중복체크
	public int phCheck(UserVo userVo) {
		
		int result = sqlSession.selectOne("user.phCheck", userVo);
		
		return result;
	}
}
