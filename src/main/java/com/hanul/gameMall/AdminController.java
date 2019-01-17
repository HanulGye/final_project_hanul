package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@RequestMapping(value="home")
	public void home() throws Exception{
		
	}
}
