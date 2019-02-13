package com.hanul.order_cart;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product.ProductDAO;
import com.hanul.product.ProductDTO;
import com.hanul.product_img.Product_imgDAO;
import com.hanul.product_img.Product_imgDTO;
import com.hanul.product_option.Product_optionDAO;
import com.hanul.product_option.Product_optionDTO;

@Service
public class CartService {

	@Inject
	private CartDAO cartDAO;
	@Inject
	private ProductDAO productDAO;
	@Inject
	private Product_optionDAO product_optionDAO;
	@Inject
	private Product_imgDAO product_imgDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView cartSelect(String id_member) throws Exception{
		modelAndView = new ModelAndView();
		List<CartDTO> cartAr = cartDAO.cartSelect(id_member);
		if(cartAr.size()!=0) {
			List<ProductDTO> proAr = productDAO.cartSelect(id_member);
			//��ǰ�� �ش��ϴ� ���� �̹����� �ֱ����� �ݺ���
			for(int i=0;i<proAr.size();i++) {
				//id_product�� ���ۿ��� ����Ʈ�ؿ��� ����(�ش� �÷��� �̿��Ͽ� ������ ã������ �ϱ� ����)
				int id_product = proAr.get(i).getId_product();
				Product_imgDTO product_imgDTO = product_imgDAO.onlyMain(id_product);
				proAr.get(i).setMainImg(product_imgDTO);
			}
			
			
			
			List<Product_optionDTO> optAr = product_optionDAO.cartSelect(id_member);
			
			
			
			//cartDTO�ȿ� �ִ� ������ productDTO, productOptionDTO�� proAr, optAr�� ��ü���� �־��ִ� �۾�
			//(����Ʈ������� �����ִ� ����)
			for(int i=0;i<cartAr.size();i++) {
				int sum = proAr.get(i).getPrice() + optAr.get(i).getPrice();
				proAr.get(i).setPrice(sum);
				cartAr.get(i).setProducts(proAr.get(i));
				cartAr.get(i).setProduct_options(optAr.get(i));

			}
		}
		
		modelAndView.addObject("carts", cartAr);
		
		// 
		
		List<CartDTO> cartAr2 = cartDAO.cartSelect(id_member);
		String [] ids = new String[cartAr2.size()];
		List<Product_optionDTO> options = new ArrayList<Product_optionDTO>();
		for(int i=0;i<cartAr2.size();i++) {
			ids[i] = cartAr2.get(i).getId_cart_order();
			options = product_optionDAO.cartOptSel(ids[i]);
		}
		
		modelAndView.addObject("options", options);
		
		return modelAndView;
	}
	
}
