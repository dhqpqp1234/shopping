package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//선물셋 상품 정보가져오기
	public List<HostVo> giftSetList(){
		
		List<HostVo> giftList = sqlSession.selectList("product.giftSetList");
		
		return giftList;
	}
	
	// 소 카테고리 정보
	public List<HostVo> cawList(){
		
		List<HostVo> cawList = sqlSession.selectList("product.cawMeat");
		
		return cawList;
		
	}
	
	//돼지
	public List<HostVo> pigList(){
		
		List<HostVo> pList = sqlSession.selectList("product.pigMeat");
		
		return pList;
		
	}
	
	//국거
	public List<HostVo> soupMeat(){
		
		List<HostVo> sList = sqlSession.selectList("product.soupMeat"); 
		
		return sList;
	}
	
}
