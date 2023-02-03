package com.javaex.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javaex.service.ProductService;
import com.javaex.vo.HostVo;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	//선물세트 폼
	@RequestMapping(value="/giftSet")
	public ModelAndView giftSet() {
		
		ModelAndView mav = new ModelAndView();
		
		List<HostVo> pList = productService.giftList(); 
		
		int count = pList.size();
		
		mav.setViewName("productMenu/giftSet");
		mav.addObject("pList", pList);
		
		return mav;
	}
	
	// 소고기 폼
	@RequestMapping(value="/cawMeat")
	public ModelAndView cawMeat() {
		
		ModelAndView cMav = new ModelAndView();
		
		List<HostVo> cList = productService.cawList();
		
		cMav.setViewName("productMenu/cawMeat");
		cMav.addObject("cList", cList);
		
		return cMav;
		
	}
	
	//돼지
	@RequestMapping(value="/pigMeat")
	public ModelAndView pigMeat() {
		
		ModelAndView pMav = new ModelAndView();
		
		List<HostVo> pList = productService.pigList();
		
		pMav.addObject("pList", pList);
		pMav.setViewName("productMenu/pigMeat");
		
		return pMav;
		
	}
	
	//국거리
	@RequestMapping(value="/soupMeat")
	public ModelAndView soupMeat() {
		
		ModelAndView sMav = new ModelAndView();
		
		List<HostVo> sList = productService.soupMeat();
		
		sMav.addObject("sList", sList);
		sMav.setViewName("productMenu/soupMeat");
		
		return sMav;
	}
	
}
