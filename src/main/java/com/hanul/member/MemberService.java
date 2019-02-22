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
			modelAndView.addObject("msg", "가입을 성공하였습니다.");			
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
		//matches method는 매개변수로 들어가는 정규식과 문자열을 비교하여 true, false값 도출
		//정규식 표현은 구글링
		if(uri.matches(".*home.*")) {
			uri = uri.replace("home", "");
		}*/
		modelAndView = new ModelAndView();
		
		MemberDTO memberDTO2 = memberDAO.login(memberDTO);
		if(memberDTO2 != null) {
			request.getSession().setAttribute("login_info", memberDTO2);
		}else {
			modelAndView.addObject("msg", "로그인 정보가 틀렸습니다. 다시 시도해주십시오.");
		}
		//modelAndView.addObject("member_data",memberDTO2); 굳이 보낼 필요 없을듯
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
