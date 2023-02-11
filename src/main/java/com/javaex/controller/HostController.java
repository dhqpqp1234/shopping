package com.javaex.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.service.HostService;
import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;

@Controller
public class HostController {
	
	@Autowired
	private HostService hostService;
	
	//Host 메인 화면
	@RequestMapping(value="/admin")
	public String hostMain() {
		return "hostMain/hostMain";
	}
	
	//Host 로그인 화면
	@RequestMapping(value="/adminLogin")
	public String hostLogin() {
		return "hostMain/hostLogin";
	}
	
	//Host 로그인
	@ResponseBody
	@RequestMapping(value="/hostLogin", method= {RequestMethod.GET, RequestMethod.POST})
	public String login(@RequestBody HostVo hostVo, HttpSession session) {
		
		HostVo autherHost = hostService.login(hostVo);
		
		String result = "";
		
		if(autherHost != null) {
			session.setAttribute("autherHost", autherHost);
			result = "ok";
		}else {
			result = "no";
		}
		
		return result;
	}
	
	//Host 로그아웃
	@RequestMapping(value="hostLogout")
	public String hostLogout(HttpSession session) {
		
		session.removeAttribute("autherHost");
		session.invalidate();
		
		return "redirect:adminLogin";
	}
	
	//Host 회원가입 화면
	@RequestMapping(value="/adminJoinForm")
	public String hostJoinForm() {
		return "hostMain/hostjoin";
	}
	
	//Host 회원가입
	@RequestMapping(value="/hostJoin")
	public String hostJoin(@ModelAttribute HostVo hostVo) {
		
		hostService.hostJoin(hostVo);
		
		return "hostMain/hostMain";
	}
	
	//Host ID 체크
	@ResponseBody
	@RequestMapping(value="/hostIdCheck", method= {RequestMethod.GET, RequestMethod.POST})
	public int idCheck(@RequestBody HostVo hostVo) {
		
		int result = hostService.idCheck(hostVo);
		
		return result;
		
	}
	//Host Email 체크
	@ResponseBody
	@RequestMapping(value="/hostEmailCheck", method= {RequestMethod.GET, RequestMethod.POST})
	public int hostEmailCheck(@RequestBody HostVo hostVo) {
		
		int result = hostService.hostEmailCheck(hostVo);
		
		return result;
		
	}
	//Host Ph 체크
	@ResponseBody
	@RequestMapping(value="/hostPhCheck", method= {RequestMethod.GET, RequestMethod.POST})
	public int hostPhCheck(@RequestBody HostVo hostVo) {
		
		int result = hostService.hostPhCheck(hostVo);
		
		return result;
		
	}
	
	//Host 상품등록 폼
	@RequestMapping(value="/hostWriteForm")
	public String hostWriteForm() {
		return "hostMain/hostWrite";
	}
	
	//Host 상품등록
	@RequestMapping(value="/productWrite", method = {RequestMethod.POST})
	public ModelAndView productWrite(@ModelAttribute HostVo hostVo,
									@RequestParam (value="file", required = false) MultipartFile file[],
									FileVo fileVo) {
		
		ModelAndView mav = new ModelAndView();
		
		
		Map<String, Object> wMap = new HashMap<String,Object>();
		
		
		hostService.productWrite(hostVo,file,fileVo);
		
		mav.setViewName("redirect:/productList");
		mav.addObject("wMap", wMap);
		return mav;
	}
	
	
	//등록상품 리스트 가져오기
	@RequestMapping("/productList")
	public ModelAndView productList() {
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap = hostService.productList();
		
		mav.setViewName("hostMain/hostManagerMent");
		mav.addObject("pMap", pMap);
		return mav;
	}
	
	//상품 리스트 상세보기
	@RequestMapping("/productDetail")
	public String productDetail() {
		return "hostMain/hostDetail";
	}
	
	//상품 리스트 상세보기 리스트
	@RequestMapping("/productSelectDetail")
	public ModelAndView productSelectDetail(HostVo hostVo, FileVo fileVo) {
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> dMap = hostService.productSelectDetail(hostVo, fileVo);
		
		mav.addObject("dMap", dMap);
		mav.setViewName("hostMain/hostDetail");
		
		return mav;
		
	}
	
	//게시물 삭제
	@RequestMapping(value="/hostDelete", method = {RequestMethod.POST, RequestMethod.GET})
	public String hostDelete(@RequestParam("productNo") int productNo) {
		
		hostService.hostDelete(productNo);
		
		return "redirect:/productList";
	} 
	
}
