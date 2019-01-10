package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop/**")
public class NaviController {

	@RequestMapping(value="smallCategory")
	public void smallCategory() throws Exception{
		
	}
	
}
