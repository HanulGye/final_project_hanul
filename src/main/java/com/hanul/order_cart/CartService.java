package com.hanul.order_cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
			for(int i=0; i<optAr.size();i++) {
				//�ɼ��� ���� ��� NullPointerException �߻�
				//catch������ ������ �� (�ɼǾ���, 0)�� �־���.
				try {
					optAr.get(i).getName();
					
				}catch (Exception e) {
					Product_optionDTO product_optionDTO = new Product_optionDTO();
					product_optionDTO.setName("�ɼǾ���");
					product_optionDTO.setPrice(0);
					optAr.set(i, product_optionDTO);
				}
					
				
				
			}
			
			
			//cartDTO�ȿ� �ִ� ������ productDTO, productOptionDTO�� proAr, optAr�� ��ü���� �־��ִ� �۾�
			//(����Ʈ������� �����ִ� ����)
			for(int i=0;i<cartAr.size();i++) {
				int sum = (proAr.get(i).getPrice() + optAr.get(i).getPrice()) * cartAr.get(i).getQuantity();				
				proAr.get(i).setPrice(sum);
				cartAr.get(i).setProducts(proAr.get(i));
				cartAr.get(i).setProduct_options(optAr.get(i));
				
			}
		}
		
		modelAndView.addObject("carts", cartAr);
		
		// 
		
		List<CartDTO> cartAr2 = cartDAO.cartSelect(id_member);
		List<List<Product_optionDTO>> optLists = new ArrayList<List<Product_optionDTO>>();
		for(int i=0;i<cartAr2.size();i++) {
			List<Product_optionDTO> options = product_optionDAO.cartOptSel(cartAr.get(i).getId_cart_order());
			optLists.add(options);
		}
		modelAndView.addObject("optList", optLists);
		
		return modelAndView;
	}
	
	public ModelAndView cartSelect_guest(String id_guest) throws Exception{
		modelAndView = new ModelAndView();
		List<CartDTO> cartAr = cartDAO.cartSelect_guest(id_guest);
		if(cartAr.size()!=0) {
			List<ProductDTO> proAr = productDAO.cartSelect_guest(id_guest);
			//��ǰ�� �ش��ϴ� ���� �̹����� �ֱ����� �ݺ���
			for(int i=0;i<proAr.size();i++) {
				//id_product�� ���ۿ��� ����Ʈ�ؿ��� ����(�ش� �÷��� �̿��Ͽ� ������ ã������ �ϱ� ����)
				int id_product = proAr.get(i).getId_product();
				Product_imgDTO product_imgDTO = product_imgDAO.onlyMain(id_product);
				proAr.get(i).setMainImg(product_imgDTO);
			}
			
			
			
			List<Product_optionDTO> optAr = product_optionDAO.cartSelect_guest(id_guest);
			for(int i=0; i<optAr.size();i++) {
				//�ɼ��� ���� ��� NullPointerException �߻�
				//catch������ ������ �� (�ɼǾ���, 0)�� �־���.
				try {
					optAr.get(i).getName();
					
				}catch (Exception e) {
					Product_optionDTO product_optionDTO = new Product_optionDTO();
					product_optionDTO.setName("�ɼǾ���");
					product_optionDTO.setPrice(0);
					optAr.set(i, product_optionDTO);
				}
					
				
				
			}
			
			
			//cartDTO�ȿ� �ִ� ������ productDTO, productOptionDTO�� proAr, optAr�� ��ü���� �־��ִ� �۾�
			//(����Ʈ������� �����ִ� ����)
			for(int i=0;i<cartAr.size();i++) {
				int sum = (proAr.get(i).getPrice() + optAr.get(i).getPrice()) * cartAr.get(i).getQuantity();				
				proAr.get(i).setPrice(sum);
				cartAr.get(i).setProducts(proAr.get(i));
				cartAr.get(i).setProduct_options(optAr.get(i));
				
			}
		}
		
		modelAndView.addObject("carts", cartAr);
		
		// 
		
		List<CartDTO> cartAr2 = cartDAO.cartSelect(id_guest);
		List<List<Product_optionDTO>> optLists = new ArrayList<List<Product_optionDTO>>();
		for(int i=0;i<cartAr2.size();i++) {
			List<Product_optionDTO> options = product_optionDAO.cartOptSel(cartAr.get(i).getId_cart_order());
			optLists.add(options);
		}
		modelAndView.addObject("optList", optLists);
		return modelAndView;
	}
	
	public ModelAndView cartDel(String id_cart_order) throws Exception{
		modelAndView = new ModelAndView();
		String msg = "��ٱ��� ��������";
		int result = cartDAO.cartDel(id_cart_order);
		if(result>0) {
			msg = "��ٱ��� ��������";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
	public ModelAndView cartDelAll(String id_member, String id_guest) throws Exception{
		System.out.println(id_member);
		System.out.println(id_guest);
		modelAndView = new ModelAndView();
		String msg = "������ �߻��߽��ϴ�.";
		Map<String, String> map = new HashMap<String, String>();
		int result = 0;
		if(id_member == null) {
			map.put("id_guest", id_guest);
			result = cartDAO.cartDelAll(map);
		}else {
			map.put("id_member", id_member);
			result = cartDAO.cartDelAll(map);
		}
		if(result>0) {
			msg = "��ٱ��ϸ� ��� ������ϴ�.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
	
	public ModelAndView optUpdate(CartDTO cartDTO) throws Exception{
		modelAndView = new ModelAndView();
		String msg = "���� �� ������ �߻��߽��ϴ�.";
		int result = cartDAO.optUpdate(cartDTO);
		if(result>0) {
			msg = "�ɼ� �� ������ ����Ǿ����ϴ�.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		
		return modelAndView;
	}
	
	public ModelAndView cartInsert(CartDTO cartDTO) throws Exception{
		modelAndView = new ModelAndView();
		String msg = "��ٱ��� ��� �� ������ �߻��߽��ϴ�.";
		int result = cartDAO.cartInsert(cartDTO);
		if(result>0) {
			msg = "��ٱ��Ͽ� ��ǰ�� ����߽��ϴ�.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
}
