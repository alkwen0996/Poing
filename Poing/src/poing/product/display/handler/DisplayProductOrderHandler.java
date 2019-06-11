package poing.product.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;

public class DisplayProductOrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int tic_seq = Integer.parseInt(request.getParameter("tic_seq"));
		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		DisplayProductDetailService service = new DisplayProductDetailService();
		
		ProductDTO dto = service.select(tic_seq);
		request.setAttribute("dto", dto);
		ProductDTO dto2 = service.selectCartId(cart_seq);
		request.setAttribute("dto2", dto2);
		

		return "/product/productOrder";
	}

}
