package com.hanul.order;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.member.MemberDAO;
import com.hanul.member.MemberDTO;

@Service
public class OrderService {

	@Inject
	private MemberDAO memberDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView orderCheck(MemberDTO memberDTO) throws Exception{
		modelAndView = new ModelAndView();
		
		MemberDTO member = memberDAO.orderCheck(memberDTO);
		modelAndView.addObject("member_data", member);
		return modelAndView;
	}
	
}
