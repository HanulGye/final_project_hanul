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
	    String tomail  = memberDTO.getId_member();     // �޴� ��� �̸���
	    String title   = "[(��)���Ӹ�] " + memberDTO.getName() + "���� ���̵�� ��й�ȣ �Դϴ�.";  // ����
	    String content = memberDTO.getName() + "���� ���̵�� " 
	                            + memberDTO.getId_member()
	                            + " ��й�ȣ�� "
	                            + memberDTO.getPw()
	                            + " �Դϴ�.";    // ����
	    try {
	    	MimeMessage message = mailSender.createMimeMessage();
	    	MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	    	
	    	messageHelper.setFrom(setfrom);  // �����»�� �����ϰų� �ϸ� �����۵��� ����
	    	messageHelper.setTo(tomail);     // �޴»�� �̸���
	        messageHelper.setSubject(title); // ���������� ������ �����ϴ�
	        messageHelper.setText(content);  // ���� ����
	        
	        mailSender.send(message);
	        
	        response.setContentType("text/html; charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        out.println("<script>alert('������ �߼۵Ǿ����ϴ�.');</script>");
	    	out.flush();
	    	
	    }catch (Exception e) {
	    	System.out.println(e);
	    }

		
		
		
		return "home";
	}
	
}
