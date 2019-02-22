package com.hanul.member;


import java.util.Enumeration;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Service
public class MemberService {

	@Inject
	private MemberDAO memberDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView join(MemberDTO memberDTO) throws Exception{
		int result = memberDAO.join(memberDTO);
		modelAndView = new ModelAndView();
		if(result>0) {
			modelAndView.setViewName("redirect:../");
			modelAndView.addObject("msg", "������ �����Ͽ����ϴ�.");			
		}else {
			modelAndView.setViewName("member/join");
		}
		return modelAndView;
	}
	
	public int idCheck(String id_member) throws Exception{
		
		String searchedId = memberDAO.idCheck(id_member);
		System.out.println(searchedId);
		int result =0;
		if(searchedId!=null) {
			result = 1;
		}
		
		
		return result;
	}
	
	public ModelAndView login(MemberDTO memberDTO, HttpServletRequest request) throws Exception{
		
		/*uri = uri.replace("/WEB-INF/views", "");
		uri = uri.replace(".jsp", "");
		uri = uri.replace("/gameMall", "");
		//matches method�� �Ű������� ���� ���Խİ� ���ڿ��� ���Ͽ� true, false�� ����
		//���Խ� ǥ���� ���۸�
		if(uri.matches(".*home.*")) {
			uri = uri.replace("home", "");
		}*/
		modelAndView = new ModelAndView();
		
		MemberDTO memberDTO2 = memberDAO.login(memberDTO);
		if(memberDTO2 != null) {
			request.getSession().setAttribute("login_info", memberDTO2);
		}else {
			modelAndView.addObject("msg", "�α��� ������ Ʋ�Ƚ��ϴ�. �ٽ� �õ����ֽʽÿ�.");
		}
		//modelAndView.addObject("member_data",memberDTO2); ���� ���� �ʿ� ������
		modelAndView.setViewName("redirect:../");
		return modelAndView;
	}
	
	public MemberDTO findMail(MemberDTO memberDTO) throws Exception{
		MemberDTO resultDTO = memberDAO.find_mail(memberDTO);
		if(resultDTO==null) {
			throw new Exception();
		}
		return resultDTO;
	}

	
}
