package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test/**")
public class TestController {

	@RequestMapping(value="test")
	public void test() throws Exception{
		
	}
	
}
