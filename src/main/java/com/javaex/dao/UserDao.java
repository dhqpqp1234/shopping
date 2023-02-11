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
	public int idCheck(String custId) {
		
		int result = sqlSession.selectOne("user.idCheck", custId);
		
		return result;
	}
	
	//eMail 중복체크
	/*
	public int eMailCheck(String custEmail) {
		
		int result = sqlSession.selectOne("user.eMailCheck", custEmail);
		
		return result;
	}
	*/
	//ph 중복체크
	public int phCheck(String custPh) {
		
		int result = sqlSession.selectOne("user.phCheck", custPh);
		
		return result;
	}
}
