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
			//상품에 해당하는 메인 이미지를 넣기위한 반복문
			for(int i=0;i<proAr.size();i++) {
				//id_product를 매퍼에서 셀렉트해오는 이유(해당 컬럼을 이용하여 사진을 찾으려고 하기 때문)
				int id_product = proAr.get(i).getId_product();
				Product_imgDTO product_imgDTO = product_imgDAO.onlyMain(id_product);
				proAr.get(i).setMainImg(product_imgDTO);
			}
			
			
			
			List<Product_optionDTO> optAr = product_optionDAO.cartSelect(id_member);
			for(int i=0; i<optAr.size();i++) {
				//옵션이 없는 경우 NullPointerException 발생
				//catch문에서 임의의 값 (옵션없음, 0)을 넣어줌.
				try {
					optAr.get(i).getName();
					
				}catch (Exception e) {
					Product_optionDTO product_optionDTO = new Product_optionDTO();
					product_optionDTO.setName("옵션없음");
					product_optionDTO.setPrice(0);
					optAr.set(i, product_optionDTO);
				}
					
				
				
			}
			
			
			//cartDTO안에 있는 각각의 productDTO, productOptionDTO에 proAr, optAr의 객체들을 넣어주는 작업
			//(셀렉트결과들을 합쳐주는 과정)
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
			//상품에 해당하는 메인 이미지를 넣기위한 반복문
			for(int i=0;i<proAr.size();i++) {
				//id_product를 매퍼에서 셀렉트해오는 이유(해당 컬럼을 이용하여 사진을 찾으려고 하기 때문)
				int id_product = proAr.get(i).getId_product();
				Product_imgDTO product_imgDTO = product_imgDAO.onlyMain(id_product);
				proAr.get(i).setMainImg(product_imgDTO);
			}
			
			
			
			List<Product_optionDTO> optAr = product_optionDAO.cartSelect_guest(id_guest);
			for(int i=0; i<optAr.size();i++) {
				//옵션이 없는 경우 NullPointerException 발생
				//catch문에서 임의의 값 (옵션없음, 0)을 넣어줌.
				try {
					optAr.get(i).getName();
					
				}catch (Exception e) {
					Product_optionDTO product_optionDTO = new Product_optionDTO();
					product_optionDTO.setName("옵션없음");
					product_optionDTO.setPrice(0);
					optAr.set(i, product_optionDTO);
				}
					
				
				
			}
			
			
			//cartDTO안에 있는 각각의 productDTO, productOptionDTO에 proAr, optAr의 객체들을 넣어주는 작업
			//(셀렉트결과들을 합쳐주는 과정)
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
		String msg = "장바구니 삭제실패";
		int result = cartDAO.cartDel(id_cart_order);
		if(result>0) {
			msg = "장바구니 삭제성공";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
	public ModelAndView cartDelAll(String id_member, String id_guest) throws Exception{
		System.out.println(id_member);
		System.out.println(id_guest);
		modelAndView = new ModelAndView();
		String msg = "오류가 발생했습니다.";
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
			msg = "장바구니를 모두 비웠습니다.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
	
	public ModelAndView optUpdate(CartDTO cartDTO) throws Exception{
		modelAndView = new ModelAndView();
		String msg = "진행 중 오류가 발생했습니다.";
		int result = cartDAO.optUpdate(cartDTO);
		if(result>0) {
			msg = "옵션 및 수량이 변경되었습니다.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		
		return modelAndView;
	}
	
	public ModelAndView cartInsert(CartDTO cartDTO) throws Exception{
		modelAndView = new ModelAndView();
		String msg = "장바구니 등록 중 오류가 발생했습니다.";
		int result = cartDAO.cartInsert(cartDTO);
		if(result>0) {
			msg = "장바구니에 상품을 등록했습니다.";
		}
		modelAndView.setViewName("redirect:./");
		modelAndView.addObject("message", msg);
		return modelAndView;
	}
	
}
