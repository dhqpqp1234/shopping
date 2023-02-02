package com.javaex.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaex.service.UserService;
import com.javaex.vo.UserVo;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//로그인 폼
	@RequestMapping(value="/loginForm")
	public String loginForm() {
		return "user/login";
	}
	
	//로그인
	@ResponseBody
	@RequestMapping(value="/login", method= {RequestMethod.GET, RequestMethod.POST})
	public String userLogin(@RequestBody UserVo userVo, HttpSession session) {
		
		UserVo autherUser = userService.userLogin(userVo);
		
		String result = "";
		
		if(autherUser != null) {
			session.setAttribute("autherUser", autherUser);
			result = "ok";
		}else {
			result = "no";
		}
		
		return result;
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method= {RequestMethod.GET, RequestMethod.POST})
	public String userLogout(HttpSession session) {
		
		session.removeAttribute("autherUser");
		session.invalidate();
		
		return "redirect:/main";
	}
	
	//회원가입 폼
	@RequestMapping(value="/joinForm")
	public String joinForm() {
		return "user/join";
	}
	
	//회원가입
	@RequestMapping(value="/join", method= {RequestMethod.GET, RequestMethod.POST})
	public String join(@ModelAttribute UserVo userVo) {
		
		userService.userJoin(userVo);
		
		return "user/joinok";
	}
	
	//ID 중복체크
	@ResponseBody
	@RequestMapping(value="idCheck")
	public int idCheck(@RequestBody UserVo userVo) {
	
	int result = userService.idCheck(userVo);
		
	return result;	
	}
	
	//eMail 중복체크
	@ResponseBody
	@RequestMapping(value="eMailCheck")
	public int eMailCheck(@RequestBody UserVo userVo) {
	
	int result = userService.eMailCheck(userVo);
		
	return result;	
	}
	
	//ph 중복체크
	@ResponseBody
	@RequestMapping(value="phCheck")
	public int phCheck(@RequestBody UserVo userVo) {
	
	int result = userService.phCheck(userVo);
		
	return result;	
	}
	
}
