package com.hanul.gameMall;

import java.io.PrintWriter;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanul.member.MemberDTO;

@Controller
public class MailController {

	@Inject
	private JavaMailSender mailSender;
	
	@RequestMapping(value="member/sendPass")
	public String mailSending(Model model, HttpServletResponse response) throws Exception{
		Map<String, Object> map = model.asMap();
		MemberDTO memberDTO = (MemberDTO)map.get("resultDTO");
		
		System.out.println(memberDTO.getId_member());
		System.out.println(memberDTO.getName());
		String setfrom = "admin@gamemall.com";         
	    String tomail  = memberDTO.getId_member();     // 받는 사람 이메일
	    String title   = "[(주)게임몰] " + memberDTO.getName() + "님의 아이디와 비밀번호 입니다.";  // 제목
	    String content = memberDTO.getName() + "님의 아이디는 " 
	                            + memberDTO.getId_member()
	                            + " 비밀번호는 "
	                            + memberDTO.getPw()
	                            + " 입니다.";    // 내용
	    try {
	    	MimeMessage message = mailSender.createMimeMessage();
	    	MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	    	
	    	messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
	    	messageHelper.setTo(tomail);     // 받는사람 이메일
	        messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
	        messageHelper.setText(content);  // 메일 내용
	        
	        mailSender.send(message);
	        
	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('메일이 발송되었습니다.');</script>");
	    	out.flush();
	    	
	    }catch (Exception e) {
	    	System.out.println(e);
	    }

		
		
		
		return "home";
	}
	
}
