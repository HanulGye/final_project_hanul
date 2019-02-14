package com.hanul.gameMall;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.member.MemberDTO;
import com.hanul.order_cart.CartDTO;
import com.hanul.order_cart.CartService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private CartService cartService;
	
	@RequestMapping(value="checkout")
	public void checkout() throws Exception{
		
	}
	
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public ModelAndView cartSelect(HttpServletRequest request) throws Exception{
		MemberDTO memberDTO =  (MemberDTO) request.getSession().getAttribute("login_info");
		String id_member = "";
		if(memberDTO!=null) {
			id_member = memberDTO.getId_member();			
		}
		return cartService.cartSelect(id_member);
	}
	
	@RequestMapping(value="cart/del", method=RequestMethod.POST)
	public ModelAndView cartDel(String id_cart_order) throws Exception{
		return cartService.cartDel(id_cart_order);
	}
	
	@RequestMapping(value="cart/delAll", method=RequestMethod.POST)
	public ModelAndView cartDelAll(String id_member) throws Exception{
		return cartService.cartDelAll(id_member);
	}
	
	@RequestMapping(value="cart/update", method=RequestMethod.GET)
	public ModelAndView optUpdate(CartDTO cartDTO) throws Exception{
		return cartService.optUpdate(cartDTO);
	}
}