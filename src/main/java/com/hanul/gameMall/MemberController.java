package com.hanul.gameMall;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hanul.member.MemberDTO;
import com.hanul.member.MemberService;
import com.hanul.util.FindPassValidator;

@Controller
@RequestMapping("/member/**")
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@Inject
	private SqlSession sqlSession;

	@RequestMapping(value="join", method=RequestMethod.GET)
	public void join() throws Exception{
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.POST)
	public ModelAndView joinprss(MemberDTO memberDTO) throws Exception{
		return memberService.join(memberDTO);
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(MemberDTO memberDTO, HttpServletRequest request) throws Exception{
		return memberService.login(memberDTO, request);
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) throws Exception{
		request.getSession().removeAttribute("login_info");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		//로그인처럼 uri 현재 페이지로 가게끔 하고 실제 주소도 그렇게 찍히게 바꿔야함 
		return modelAndView;
	}
	
	@RequestMapping(value="myPage")
	public void myPage() throws Exception{
		
	}
	
	@RequestMapping(value="find", method=RequestMethod.GET)
	public void findpw() throws Exception{
		
	}
	
	@RequestMapping(value="find", method=RequestMethod.POST)
	public String findPw(MemberDTO memberDTO, HttpServletRequest request, RedirectAttributes rd, Errors errors) throws Exception{
		new FindPassValidator().validate(memberDTO, errors);
		if(errors.hasErrors()) {
			return "member/find"; 
		}
		
		try {
			MemberDTO resultDTO = memberService.findMail(memberDTO);
			rd.addFlashAttribute("resultDTO", resultDTO);
			return "redirect:sendPass"; 
		}catch (Exception e) {
			errors.rejectValue("id_member", "EmailNotExist");
			return "member/find"; 
		}
		
	}
	
	@RequestMapping(value="join/idCheck", method=RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> idcheck(@RequestBody String id_member) throws Exception{
		int result = 0;
		System.out.println(id_member);
		Map<Object, Object> map = new HashMap<Object, Object>();
		result = memberService.idCheck(id_member);
		
		System.out.println(result);
		//0이면 가능 1이면 불가능
		map.put("result", result);
		return map;
	}
	
}