package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	//로그인
	public UserVo userLogin(UserVo userVo) {
		
		UserVo uVo = userDao.userLogin(userVo);
		
		return uVo;
		
	}
	
	//회원가입
	public int userJoin(UserVo userVo) {
		
		int count = userDao.userJoin(userVo);
		
		return count;
	}
	
	//id중복체크
	public int idCheck(UserVo userVo) {
		
		int result = userDao.idCheck(userVo);
		
		return result;
	}
	
	//eMail중복체크
	public int eMailCheck(UserVo userVo) {
		
		int result = userDao.eMailCheck(userVo);
		
		return result;
	}
	
	//ph중복체크
	public int phCheck(UserVo userVo) {
		
		int result = userDao.phCheck(userVo);
		
		return result;
	}
}
