package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.PagingVo;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//선물셋 상품 정보가져오기
	public List<HostVo> giftSetList(PagingVo pagination){
		
		List<HostVo> giftList = sqlSession.selectList("product.giftSetList",pagination);
		
		return giftList;
	}
	
	// 소 카테고리 정보
	public List<HostVo> cawList(PagingVo pagination){
		
		List<HostVo> cawList = sqlSession.selectList("product.cawMeat",pagination);
		
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
	
	//글 전체 개수 가져오기 (giftSet)
	public int listCnt() {
		
		int listCnt = sqlSession.selectOne("totalCnt");
		
		return listCnt;
	}
	
}
