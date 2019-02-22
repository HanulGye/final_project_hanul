package com.hanul.gameMall;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.member.MemberDTO;
import com.hanul.order.OrderService;
import com.hanul.order_cart.CartDTO;
import com.hanul.order_cart.CartService;

@Controller
@RequestMapping("/order/**")
public class OrderController {

	@Inject
	private CartService cartService;
	
	@Inject
	private OrderService orderService;
	
	@RequestMapping(value="checkout")
	public ModelAndView checkout(HttpServletRequest request) throws Exception{
		if(request.getSession().getAttribute("login_info")!=null) {
			MemberDTO memberDTO =  (MemberDTO) request.getSession().getAttribute("login_info");
			String id_member = "";
			if(memberDTO!=null) {
				id_member = memberDTO.getId_member();			
			}	
			return cartService.cartSelect(id_member);
		}else {
			String id_guest = (String)request.getSession().getAttribute("guest_info");
			return cartService.cartSelect_guest(id_guest);
		}
	}
	
	@RequestMapping(value="find")
	public void find() throws Exception{
		
	}
	
	@RequestMapping(value="cart", method=RequestMethod.GET)
	public ModelAndView cartSelect(HttpServletRequest request) throws Exception{
		//회원인지 게스트인지 확인
		if(request.getSession().getAttribute("login_info")!=null) {
			MemberDTO memberDTO =  (MemberDTO) request.getSession().getAttribute("login_info");
			String id_member = "";
			if(memberDTO!=null) {
				id_member = memberDTO.getId_member();			
			}	
			return cartService.cartSelect(id_member);
		}else {
			String id_guest = (String)request.getSession().getAttribute("guest_info");
			System.out.println(id_guest);
			return cartService.cartSelect_guest(id_guest);
		}
		
	}
	
	@RequestMapping(value="cart/del", method=RequestMethod.POST)
	public ModelAndView cartDel(String id_cart_order) throws Exception{
		return cartService.cartDel(id_cart_order);
	}
	
	@RequestMapping(value="cart/delAll", method=RequestMethod.POST)
	public ModelAndView cartDelAll(String id_member, String id_guest) throws Exception{
		System.out.println("id_member :"+id_member);
		System.out.println("id_guest :"+id_guest);
		return cartService.cartDelAll(id_member, id_guest);
	}
	
	@RequestMapping(value="cart/update", method=RequestMethod.GET)
	public ModelAndView optUpdate(CartDTO cartDTO) throws Exception{
		return cartService.optUpdate(cartDTO);
	}
	
	@RequestMapping(value="cart/insert", method=RequestMethod.POST)
	public ModelAndView cartInsert(CartDTO cartDTO) throws Exception{
		return cartService.cartInsert(cartDTO);
	}
}