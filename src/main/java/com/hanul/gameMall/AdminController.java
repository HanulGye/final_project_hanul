package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@RequestMapping(value="home")
	public void home() throws Exception{
		
	}
	
	@RequestMapping(value="login")
	public void login() throws Exception{
		
	}
	
	@RequestMapping(value="board/list")
	public void list() throws Exception{
		
	}
	
	@RequestMapping(value="product/regist")
	public void regist() throws Exception{
		
	}
	
}
