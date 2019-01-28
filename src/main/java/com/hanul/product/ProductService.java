package com.hanul.product;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product_img.Product_imgDTO;

@Service
public class ProductService {

	@Inject
	private ProductDAO productDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView insert(ProductDTO productDTO, HttpSession session, List<Product_imgDTO> imgs) {
		
		
		return modelAndView; 
	}
}
