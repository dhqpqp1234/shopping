package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ProductDao;
import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	//선물세트 정보가져오기
	public List<HostVo> giftList(){
		
		List<HostVo> giftList = productDao.giftSetList();
		
		return giftList;
	}
	
	//소 카테고리
	public List<HostVo> cawList(){
		
		List<HostVo> cawList = productDao.cawList();
		
		return cawList;
		
	}
	
	// 돼지
	public List<HostVo> pigList(){
		
		List<HostVo> pList = productDao.pigList();
		
		return pList;
	}
	
	//국거
	public List<HostVo> soupMeat(){
		
		List<HostVo> sList = productDao.soupMeat(); 
		
		return sList;
	}
}
