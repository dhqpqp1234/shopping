package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;

@Repository
public class HostDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//Host 로그인
	public HostVo login(HostVo hostVo) {
		
		HostVo hVo = sqlSession.selectOne("host.hostLogin", hostVo);
		
		return hVo;
		
	}
	
	//Host 회원가입
	public int hostJoin(HostVo hostVo) {
		
		int count = sqlSession.insert("host.hostInsert", hostVo);
		
		return count;
		
	}
	
	//Host Id 체크
	public int idCheck(HostVo hostVo) {
		
		int result = sqlSession.selectOne("host.hostIdCheck", hostVo);
		
		return result;
		
	}
	//Host Email 체크
	public int hostEmailCheck(HostVo hostVo) {
		
		int result = sqlSession.selectOne("host.hostEmailCheck", hostVo);
		
		return result;
		
	}
	//Host Ph 체크
	public int hostPhCheck(HostVo hostVo) {
		
		int result = sqlSession.selectOne("host.hostPhCheck", hostVo);
		
		return result;
		
	}
	
	//상품등록
	public int productWrite(HostVo hostVo) {
		
		int product = sqlSession.insert("host.productWrite", hostVo);
		
		return product;
		
	}
	
	//상품재고 등록
	
	  public int invenCount(HostVo hostVo) {
	  
	  int invenCount = sqlSession.insert("host.productCnt", hostVo);
	  
	  return invenCount;
	  
	  }
	 
	  //사진저장
	  public int fileInsert(FileVo fileVo) {
		  return sqlSession.insert("host.fileInsert", fileVo);
	  }
	  
	  //등록 상품 정보 가져오기
	  public List<HostVo> productList(){
		  
		  List<HostVo> pList = sqlSession.selectList("host.productList");
		  
		  return pList;
	  }
	  
	  //상품 사진 가져오기
	  public List<FileVo> productFileList(){
		  
		  List<FileVo> fList = sqlSession.selectList("host.productFileList");
		  
		  return fList;
		  
	  }
	  
	  //상품정보 디테일
	  public HostVo productDetail(HostVo hostVo){
		  
		  HostVo hVo = sqlSession.selectOne("host.productSelectOne", hostVo);
		  
		  return hVo;
	  }
	  
	  //상품정보 디테일
	  public List<FileVo> fileDetail(int regNo){
		  
		  List<FileVo> fList = sqlSession.selectList("host.fileSelectOne", regNo);
		  
		  return fList;
	  }
	  
	  //게시물 상품 삭제
	  public int productDelete(int productNo) {
		  
		  int count = sqlSession.delete("host.productDelete", productNo);
		  
		  return count;
	  }
	  
	//게시물 재고 삭제
	  public int invenDelete(int productNo) {
		  
		  int count = sqlSession.delete("host.invenDelete", productNo);
		  
		  return count;
	  }
}
