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
	public ModelAndView registProcess(ProductDTO productDTO, HttpSession session, MultipartFile mainImage, MultipartFile subImage ) throws Exception{
		return productService.insert(productDTO, session, mainImage, subImage);
	}
	
	@RequestMapping(value="product/stock")
	public ModelAndView stock(String platform, Integer id_product) throws Exception{
		//ModelAndView modelAndView = productService.selectList();
		platform = "[PS4]";
		id_product = 15;
		ModelAndView modelAndView = productService.selectListBySearch(platform, id_product);
		return modelAndView;
	}
	
	
	

}
