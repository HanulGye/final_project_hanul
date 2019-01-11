package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	@RequestMapping(value="join")
	public void join() throws Exception{
		
	}
	
	
}