package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/community/**")
public class CommController {

	@RequestMapping(value="main")
	public void main() throws Exception{
		
	}
	
	@RequestMapping(value="review/main")
	public void reviewMain() throws Exception{
		
	}
	
}
