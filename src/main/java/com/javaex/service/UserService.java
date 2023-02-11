package com.javaex.service;


import java.util.Date;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	private int authNumber;
	//private JavaMailSenderImpl mailSender;
	
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
	public int idCheck(String custId) {
		
		//id
		int result = userDao.idCheck(custId);
		
		return result;
	}
	
	//eMail인증
		
		//난수 발생
		public void makeRandomNumber() {
			//난수의 범위 111111 ~ 999999(6자리 난수)
			Random r = new Random();
			int checkNum = r.nextInt(888888)+111111;
			authNumber = checkNum;
		}
		
		//이메일 보낼 양식
		public String joinEmail(String custEmail) {
			makeRandomNumber();
			
			String setFrom = ".com"; // eMail-config에 설정한 자신의 이메일 주소를 입력
			String toMail = custEmail;
			String title = "회원가입 인증 이메일 입니다.";
			String content = 
					"홈페이지를 방문해주셔서 감사합니다." + //html 형식으로 작성
			"<br><br>" +
						"인증번호는 " + authNumber + "입니다." +
						"<br>" + 
						"해당 인증번호를 인증란에 기입해주세요."; //이메일 내용 삽입
			mailSend(setFrom,toMail,title,content,custEmail);			
			
			return Integer.toString(authNumber);
		}
		
		
		
		//이메일 전송 메소드
		public void mailSend(String setFrom, String toMail, String title, String content, String custEmail) {
			
			makeRandomNumber();
			
			 Properties p = System.getProperties();
		        p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
		        p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
		        p.put("mail.smtp.auth","true");                 // gmail은 true 고정
		        p.put("mail.smtp.port", "587");                 // 네이버 포트
		        p.put("mail.smtp.port", "587");                 // 네이버 포트
		           
		        Authenticator auth = new MyAuthentication();
		        //session 생성 및  MimeMessage생성
		        Session session = Session.getDefaultInstance(p, auth);
		        MimeMessage msg = new MimeMessage(session);
		         
		        try{
		            //편지보낸시간
		            msg.setSentDate(new Date());
		            InternetAddress from = new InternetAddress() ;
		            from = new InternetAddress("dhqpqp1234@naver.com"); //발신자 아이디
		            // 이메일 발신자
		            msg.setFrom(from);
		            // 이메일 수신자
		            InternetAddress to = new InternetAddress(custEmail);
		            msg.setRecipient(Message.RecipientType.TO, to);
		            // 이메일 제목
		            msg.setSubject("NOMEAT 이메일 인증", "UTF-8");
		            // 이메일 내용
		            msg.setText("NOMEAT메일 인증번호는"+authNumber+"입니다.", "UTF-8");
		            // 이메일 헤더
		            msg.setHeader("content-Type", "text/html");
		            //메일보내기
		            javax.mail.Transport.send(msg, msg.getAllRecipients());
		             
		        }catch (AddressException addr_e) {
		            addr_e.printStackTrace();
		        }catch (MessagingException msg_e) {
		            msg_e.printStackTrace();
		        }catch (Exception msg_e) {
		            msg_e.printStackTrace();
		        }
		    }
			
		
		
	class MyAuthentication extends Authenticator {
	    
	    PasswordAuthentication pa;
	    public MyAuthentication(){
	         
	        String id = "dhqpqp1234@naver.com";  //네이버 이메일 아이디
	        String pw = "qktista";        //네이버 비밀번호
	 
	        // ID와 비밀번호를 입력한다.
	        pa = new PasswordAuthentication(id, pw);
	    }
	 
	    // 시스템에서 사용하는 인증정보
	    public PasswordAuthentication getPasswordAuthentication() {
	        return pa;
	    }
	} 
		
		
	
	//ph중복체크
	
	  public int phCheck(String custPh) {
	  
	  int result = userDao.phCheck(custPh);
	  
	  return result; }
	 
}
