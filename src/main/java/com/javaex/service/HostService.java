package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.HostDao;
import com.javaex.vo.FileVo;
import com.javaex.vo.HostVo;
import com.javaex.vo.PagingVo;

@Service
public class HostService {
	
	@Autowired
	private HostDao hostDao;
	
	//Host 로그인
	public HostVo login(HostVo hostVo) {
		
		HostVo hVo = hostDao.login(hostVo);
		
		return hVo;
	}
	
	//Host 회원가입
	public int hostJoin(HostVo hostVo) {
		
		int count = hostDao.hostJoin(hostVo);
		
		return count;
	}
	
	//Host Id체크
	public int idCheck(HostVo hostVo) {
		
		int result = hostDao.idCheck(hostVo);
		
		return result;
		
	}
	//Host Email체크
	public int hostEmailCheck(HostVo hostVo) {
		
		int result = hostDao.hostEmailCheck(hostVo);
		
		return result;
		
	}
	//Host Ph체크
	public int hostPhCheck(HostVo hostVo) {
		
		int result = hostDao.hostPhCheck(hostVo);
		
		return result;
		
	}
	
	//상품 등록
	public Map<String,Object> productWrite(HostVo hostVo, MultipartFile file[]
											,FileVo fileVo) {
		
		Map<String,Object> wMap = new HashMap<String, Object>();
		
		
		int productNo = hostVo.getProductNo();
		
		//상품등록
		int product = hostDao.productWrite(hostVo);
		
		//수량등록
		int count = hostDao.invenCount(hostVo);
		
		for(int i=0; i <file.length; i++) {
			//첨부파일
			String saveDir = "C:\\javaStudy\\upload";

			// -원파일이름
			String orgName = file[i].getOriginalFilename();

			// 확장자
			String exName = file[i].getOriginalFilename().substring(file[i].getOriginalFilename().lastIndexOf("."));

			// -저장파일이름
			String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

			// -파일패스 생성(
			String filePath = saveDir + "\\" + saveName;

			// 파일 사이즈
			long fileSize = file[i].getSize();
			
			// 파일업로드(복사)
			try {
				byte[] fileData = file[i].getBytes();
				OutputStream out = new FileOutputStream(filePath);
				BufferedOutputStream bout = new BufferedOutputStream(out);

				bout.write(fileData);

				if (bout != null) {
					bout.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			// 파일정보 정리
			fileVo.setFilePath(filePath);
			fileVo.setOrgName(orgName);
			fileVo.setSaveName(saveName);
			fileVo.setFileSize(fileSize);
			fileVo.setRegNo(hostVo.getProductNo());	
			
			//DB에저장
			hostDao.fileInsert(fileVo);
			wMap.put("filePath", filePath);
			wMap.put("orgName", orgName);
			wMap.put("saveName", saveName);
			wMap.put("fileSize", fileSize);
		}
		
		
		wMap.put("product", product);
		wMap.put("count", count);
		
		wMap.put("productNo", productNo);
		return wMap;
	}
	//전체 등록글 수 가져오기
	public int listCnt() {
		int listCnt = hostDao.listCnt();
		return listCnt;
	}
	//등록 상품 리스트 가져오기
	public Map<String, Object> productList(PagingVo pagination){
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		int curPage = pagination.getCurPage();
		int pageSize = pagination.getPageSize();

		//시작글번호
		int startRnum = (curPage-1)*pageSize + 1 ;
		
		//끝글번호
		int endRnum = (startRnum + pageSize) - 1;
		
		pagination.setStartRnum(startRnum); 
		pagination.setEndRnum(endRnum); 
		
		List<HostVo> pList = hostDao.productList(pagination);
		List<FileVo> fList = hostDao.productFileList();
		
		pMap.put("fList", fList);
		pMap.put("pList", pList);
		
		return pMap;
	}
	
	//상세정보 리스트
	public Map<String, Object> productSelectDetail(HostVo hostVo, FileVo fileVo){
		
		Map<String, Object> dMap = new HashMap<String, Object>();
		
		
		HostVo hVo = hostDao.productDetail(hostVo);
		
		int regNo = hostVo.getProductNo();
		fileVo.setRegNo(regNo);
		
		List<FileVo> fList = hostDao.fileDetail(regNo);
		
		dMap.put("fList", fList);
		dMap.put("hVo", hVo);
		
		return dMap;
	}
	
	//게시물 삭제
	public int hostDelete(int productNo){
		
		int count = hostDao.productDelete(productNo);
		count += hostDao.invenDelete(productNo);
		return count;
	}
	
}
