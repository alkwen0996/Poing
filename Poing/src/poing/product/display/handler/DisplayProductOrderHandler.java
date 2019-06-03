package poing.product.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;
import poing.product.display.service.DisplayProductListService;

public class DisplayProductOrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		DisplayProductDetailService service = new DisplayProductDetailService();
		ProductDTO dto = service.select(p_num);
		request.setAttribute("dto", dto);
		ProductDTO dto2 = service.selectCartId(cart_seq);
		request.setAttribute("dto2", dto2);
		

		return "/product/productOrder";
	}

}
