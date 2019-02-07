package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@RequestMapping(value="join", method=RequestMethod.GET)
	public void join() throws Exception{
		
	}
	
	@RequestMapping(value="myPage")
	public void myPage() throws Exception{
		
	}
	
}