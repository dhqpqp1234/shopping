package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.ProductDao;
import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.PagingVo;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	//선물세트 정보가져오기
	public List<HostVo> giftList(PagingVo pagination){
		
		
		int curPage = pagination.getCurPage();
		int pageSize = pagination.getPageSize();

		//시작글번호
		int startRnum = (curPage-1)*pageSize + 1 ;
		
		//끝글번호
		int endRnum = (startRnum + pageSize) - 1;
		
		pagination.setStartRnum(startRnum); //값이 비어잇어서 넣어줫음
		pagination.setEndRnum(endRnum); ////값이 비어잇어서 넣어줫음
		
		List<HostVo> giftList = productDao.giftSetList(pagination);
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
	
	//글 전체 개수 가져오기(giftSet)
	public int listCnt() {
		
		int listCnt = productDao.listCnt();
		
		return listCnt;
	}
}
