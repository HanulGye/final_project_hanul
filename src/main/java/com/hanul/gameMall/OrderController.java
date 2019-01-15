package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@RequestMapping(value="checkout")
	public void checkout() throws Exception{
		
	}
	
	@RequestMapping(value="cart")
	public void cart() throws Exception{
		
	}
	
}