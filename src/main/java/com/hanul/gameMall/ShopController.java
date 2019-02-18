package com.hanul.gameMall;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product.ProductDTO;
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
	
	@RequestMapping(value="smallCategory/genre")
	public ModelAndView genre(HttpServletRequest request) throws Exception{
		ProductDTO productDTO = new ProductDTO();
		productDTO.setPlatform(request.getParameter("platform"));
		productDTO.setGenre(request.getParameter("genre"));
		return productService.shopListGenre(productDTO);
	}
	
	@RequestMapping(value="smallCategory/all")
	public ModelAndView allPlatformGenre(HttpServletRequest request) throws Exception{
		String genre = request.getParameter("genre");
		return productService.shopListAll(genre);
	}
	
	@RequestMapping(value="product")
	public ModelAndView product(HttpServletRequest request) throws Exception{
		ProductDTO productDTO = new ProductDTO();
		productDTO.setId_product(Integer.parseInt(request.getParameter("id_product"))); 
		return productService.selectOne(productDTO);
	}
	
}
