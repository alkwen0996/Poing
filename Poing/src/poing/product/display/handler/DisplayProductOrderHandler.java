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

		DisplayProductDetailService service = new DisplayProductDetailService();
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		ProductDTO dto = service.select(p_num);
		String message = request.getParameter("message");
		String data = request.getParameter("date");
		int party_size = Integer.parseInt(request.getParameter("party_size"));
		String rest_name = dto.getRest_name();
		
		request.setAttribute("dto", dto);

		return "/product/productOrder";
	}

}
