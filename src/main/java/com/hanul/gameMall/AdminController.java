package com.hanul.gameMall;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.hanul.product.ProductDTO;
import com.hanul.product.ProductService;
import com.hanul.product_option.Product_optionDTO;

@Controller
@RequestMapping("/admin/**")
public class AdminController {
	
	@Inject
	private ProductService productService;
	
	@RequestMapping(value="home")
	public void home() throws Exception{
		
	}
	
	@RequestMapping(value="login")
	public void login() throws Exception{
		
	}
	
	@RequestMapping(value="board/list")
	public void list() throws Exception{
		
	}
	
	@RequestMapping(value="product/regist", method=RequestMethod.GET)
	public void regist() throws Exception{
		
	}
	
	@RequestMapping(value="product/regist", method=RequestMethod.POST )
	public ModelAndView registProcess(ProductDTO productDTO, String [] productOptions, HttpSession session, MultipartFile mainImg, MultipartFile subImg, RedirectAttributes redirectAttributes) throws Exception{
		return productService.insert(productDTO, productOptions, session, mainImg, subImg);
	}
	
	@RequestMapping(value="product/stock")
	public ModelAndView stock() throws Exception{
		ModelAndView modelAndView = productService.selectList();
		return modelAndView;
	}
	
}
