package poing.product.display.handler;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;

public class DisplayProductMapHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			DisplayProductDetailService service = new DisplayProductDetailService();
			int p_num = Integer.parseInt(request.getParameter("p_num"));
			ProductDTO dto = service.select(p_num);
			request.setAttribute("dto", dto);
		} catch (Exception e) { 
				e.printStackTrace();
		}
		return "product/productMap";
	}

}
