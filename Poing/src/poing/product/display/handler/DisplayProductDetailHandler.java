package poing.product.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;


public class DisplayProductDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			DisplayProductDetailService service = new DisplayProductDetailService();
			int p_num = Integer.parseInt(request.getParameter("p_num"));
			ProductDTO dto = service.select(p_num);
			ProductDTO dto1 = service.select(p_num);
			request.setAttribute("dto", dto);
			request.setAttribute("dto1", dto1);
			
		} catch (Exception e) { 
				e.printStackTrace();
		}
		return "product/productDetail";
	}

}
