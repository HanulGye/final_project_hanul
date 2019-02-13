package com.hanul.gameMall;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.hanul.order_cart.CartDAO;
import com.hanul.order_cart.CartDTO;

public class CartTest extends AbstractTestCase{

	@Inject
	private CartDAO cartDAO;
	
	
	@Test
	public void test() throws Exception{
		/*List<Integer> ar = cartDAO.cartTest("zxcv@test.com");
		System.out.println(ar.size());
		System.out.println(ar.get(0));
		System.out.println(ar.get(1));*/
	}

}
