package com.hanul.member;

import java.util.StringTokenizer;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
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
	
	public ModelAndView idCheck(String id_member) throws Exception{
		modelAndView = new ModelAndView();
		String searchedId = memberDAO.idCheck(id_member);
		int result =0;
		if(searchedId!=null) {
			result = 1;
		}
		
		modelAndView.addObject("search_result", result);
		
		return modelAndView;
	}
	
	public ModelAndView login(MemberDTO memberDTO, String uri, HttpServletRequest request) throws Exception{
		
		uri = uri.replace("/WEB-INF/views", "");
		uri = uri.replace(".jsp", "");
		uri = uri.replace("/gameMall", "");
		//matches method�� �Ű������� ���� ���Խİ� ���ڿ��� ���Ͽ� true, false�� ����
		//���Խ� ǥ���� ���۸�
		if(uri.matches(".*home.*")) {
			uri = uri.replace("home", "");
		}
		
		MemberDTO memberDTO2 = memberDAO.login(memberDTO);
		if(memberDTO2 != null) {
			request.getSession().setAttribute("login_info", memberDTO2.getName());
		}
		modelAndView = new ModelAndView();
		//modelAndView.addObject("member_data",memberDTO2); ���� ���� �ʿ� ������
		modelAndView.setViewName("redirect:"+uri);
		return modelAndView;
	}
}
