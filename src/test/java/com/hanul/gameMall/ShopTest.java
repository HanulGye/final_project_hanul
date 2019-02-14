package com.hanul.gameMall;

import static org.junit.Assert.*;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;

import com.hanul.product.ProductDAO;
import com.hanul.product.ProductDTO;
import com.hanul.product_evaluation.Product_evaluationDAO;
import com.hanul.product_evaluation.Product_evaluationDTO;
import com.hanul.product_img.Product_imgDAO;
import com.hanul.product_img.Product_imgDTO;

public class ShopTest extends AbstractTestCase{

	@Inject
	private ProductDAO productDAO;
	@Inject
	private Product_imgDAO product_imgDAO;
	@Inject
	private Product_evaluationDAO product_evaluationDAO;
	
	@Test
	public void test() throws Exception{
		/*List<ProductDTO> ar = productDAO.shopList("PS4");
		System.out.println(ar.size());*/
		/*List<Product_imgDTO> ar = product_imgDAO.shopList("PS4");
		System.out.println(ar.size());*/
		List<String> ar = product_evaluationDAO.shopList("PS4");
		System.out.println(ar.size());
	}

}
