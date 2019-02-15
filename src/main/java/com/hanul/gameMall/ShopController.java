package com.hanul.gameMall;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product.ProductService;

@Controller
@RequestMapping("/shop/**")
public class ShopController {

	@Inject
	private ProductService productService;
	
	@RequestMapping(value="smallCategory")
	public ModelAndView smallCategory(HttpServletRequest request) throws Exception{
		String val = request.getParameter("platform");
		System.out.println(val);
		return productService.shopList(val);
		
	}
	
	@RequestMapping(value="product")
	public ModelAndView product(HttpServletRequest request) throws Exception{
		String id = request.getParameter("id_product");
		Integer id_product = Integer.parseInt(id);
		return productService.selectOne(id_product);
	}
	
}
