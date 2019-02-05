package com.hanul.product;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product_img.Product_imgDAO;
import com.hanul.product_img.Product_imgDTO;
import com.hanul.product_option.Product_optionDAO;
import com.hanul.product_option.Product_optionDTO;
import com.hanul.util.FileSaver;

@Service
public class ProductService {

	@Inject
	private ProductDAO productDAO;
	@Inject
	private Product_imgDAO product_imgDAO;
	@Inject
	private Product_optionDAO product_optionDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView insert(ProductDTO productDTO, String [] productOptions, HttpSession session, MultipartFile mainImg, MultipartFile subImg) throws Exception {
		//상품 인서트
		int productId = productDAO.getProductId();
		productDTO.setId_product(productId);
		int result = productDAO.insert(productDTO);
		
		//옵션 인서트
		
		if(productOptions!=null) {
			for(int i=0;i<productOptions.length;i++) {
				Product_optionDTO product_optionDTO = new Product_optionDTO();
				product_optionDTO.setName_option(productOptions[i]);
				product_optionDTO.setId_product(productId);
				product_optionDAO.insert(product_optionDTO);
			}
		}
		
		//이미지 실제 저장
		FileSaver fileSaver = new FileSaver();
		String realPath = session.getServletContext().getRealPath("resources/product");
		List<Product_imgDTO> imgs = new ArrayList<Product_imgDTO>();
		for(int i=0;i<2;i++) {
			Product_imgDTO product_imgDTO = new Product_imgDTO();
			imgs.add(product_imgDTO);
		}
		
		//이미지 테이블 인서트	
		for(int i=0;i<imgs.size();i++) {
			
			if(mainImg.isEmpty()||subImg.isEmpty()) {
					imgs.get(i).setId_product(productId);
					imgs.get(i).setFname("no-image.png");
					imgs.get(i).setOname("no-image.png");
					imgs.get(i).setKind("no");
			}else {
				String fname = fileSaver.saveFile(realPath, mainImg);
				String fname2 = fileSaver.saveFile(realPath, subImg);
				imgs.get(i).setId_product(productId);
				if(i==0) {
					imgs.get(i).setFname(fname);
					imgs.get(i).setOname(mainImg.getOriginalFilename());
					imgs.get(i).setKind("main");
					
				}else {
					imgs.get(i).setFname(fname2);
					imgs.get(i).setOname(subImg.getOriginalFilename());
					imgs.get(i).setKind("sub");
				}
			}
			result = product_imgDAO.insert(imgs.get(i));
		}
		modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:./regist");
		modelAndView.addObject("message", "regist success");
		return modelAndView; 
	}
	
	
	public ModelAndView selectList() throws Exception{
		List<ProductDTO> ar = productDAO.selectList();
		modelAndView = new ModelAndView();
		modelAndView.addObject("productList", ar);
		modelAndView.setViewName("/admin/product/stock");
		return modelAndView;
	}
}
