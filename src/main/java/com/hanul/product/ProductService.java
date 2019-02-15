package com.hanul.product;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hanul.product_evaluation.Product_evaluationDAO;
import com.hanul.product_evaluation.Product_evaluationDTO;
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
	@Inject
	private Product_evaluationDAO product_evaluationDAO;
	private ModelAndView modelAndView;
	
	public ModelAndView insert(ProductDTO productDTO, HttpSession session, MultipartFile mainImage, MultipartFile subImage) throws Exception {
		//��ǰ �μ�Ʈ
		int productId = productDAO.getProductId();
		productDTO.setId_product(productId);
		int result = productDAO.insert(productDTO);
		
		//�ɼ� �μ�Ʈ
		
		 if(productDTO.getOptions()!=null) { 
			 for(int i=0;i<productDTO.getOptions().size();i++) { 
				 Product_optionDTO product_optionDTO = new Product_optionDTO();
				 product_optionDTO.setName(productDTO.getOptions().get(i).getName());
				 product_optionDTO.setId_product(productId);
				 product_optionDTO.setPrice(productDTO.getOptions().get(i).getPrice());
				 product_optionDAO.insert(product_optionDTO); 
				 } 
			 }

		//�̹��� ���� ����
			FileSaver fileSaver = new FileSaver();
			String realPath = session.getServletContext().getRealPath("resources/product");
			System.out.println(realPath);
			List<Product_imgDTO> imgs = new ArrayList<Product_imgDTO>();
			for(int i=0;i<2;i++) {
				Product_imgDTO product_imgDTO = new Product_imgDTO();
				imgs.add(product_imgDTO);
			}
			
			//�̹��� ���̺� �μ�Ʈ	
			for(int i=0;i<imgs.size();i++) {
				
				if(mainImage.isEmpty()||subImage.isEmpty()) {
						imgs.get(i).setId_product(productId);
						imgs.get(i).setFname("no-image.png");
						imgs.get(i).setOname("no-image.png");
						imgs.get(i).setKind("no");
				}else {
					String fname = fileSaver.saveFile(realPath, mainImage);
					String fname2 = fileSaver.saveFile(realPath, subImage);
					imgs.get(i).setId_product(productId);
					if(i==0) {
						imgs.get(i).setFname(fname);
						imgs.get(i).setOname(mainImage.getOriginalFilename());
						imgs.get(i).setKind("main");
						
					}else {
						imgs.get(i).setFname(fname2);
						imgs.get(i).setOname(subImage.getOriginalFilename());
						imgs.get(i).setKind("sub");
					}
				}
				result = product_imgDAO.insert(imgs.get(i));
			}


		
		
		modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:./");
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
	
	public ModelAndView selectListBySearch(String platform, Integer id_product) throws Exception{
		List<ProductDTO> ar = productDAO.selectListBySearch(platform);
		//�ش� ����Ʈ���� ������ product�� id�� ������, �� �� ��ŭ �ݺ��Ͽ� �������� �ִ����� Ȯ��
		//Ȯ�� ��, ���� �������� �ִٸ� �ش� ��ǰ�� �������鸸�� ���ϰ� �װ��� ����� ���� �Ҽ��� ù��°�ڸ������� ������� ����
		//���� ������ productDTO�� ���� �־ modelandview�� ��Ƽ� ����.
		
		List<Product_evaluationDTO> eval_ar = product_evaluationDAO.selectList(id_product);
		double sum_score = 0.0;
		if(eval_ar.size()!=0) {
			for(int i=0;i<eval_ar.size();i++) {
				sum_score = sum_score + eval_ar.get(i).getScore_eval();
			}
			sum_score = sum_score/eval_ar.size();
			
			System.out.println(sum_score);
			
		}
		//�ӽ÷� �� �ִ� �ݺ���
		for(int i=0;i<ar.size();i++) {
			ar.get(i).setSum_score(sum_score);
		}
		
		modelAndView = new ModelAndView();
		modelAndView.addObject("productList", ar);
		modelAndView.setViewName("/admin/product/stock");
		
		return modelAndView;
	}
	
	public ModelAndView shopList(String platform) throws Exception{
		List<ProductDTO> proAr = productDAO.shopList(platform);
		if(proAr!=null) {
			List<Product_imgDTO> imgAr = product_imgDAO.shopList(platform);
			List<String> evAr = product_evaluationDAO.shopList(platform);
			for(int i=0;i<proAr.size();i++){
				proAr.get(i).setMainImg(imgAr.get(i));
				proAr.get(i).setTest(evAr.get(i));
			}
		}
		
		modelAndView = new ModelAndView();
		modelAndView.addObject("products", proAr);
		return modelAndView;
		
	}
}
