package com.hanul.gameMall;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/community/**")
public class CommController {

	@RequestMapping(value="main")
	public void main() throws Exception{
		
	}
	
	@RequestMapping(value="review/main")
	public void reviewMain() throws Exception{
		
	}
	
	@RequestMapping(value="article")
	public void article() throws Exception{
		
	}
	
	@RequestMapping(value="review/article")
	public ModelAndView reviewArticle() throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/community/article");
		return modelAndView;
	}
	
	@RequestMapping(value="write")
	public void writeform() throws Exception{
		
	}
	
}
