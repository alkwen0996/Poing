package poing.product.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.display.service.DisplayProductListService;
import poing.product.display.service.ProductDTO;


public class DisplayProductListHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(1);
		try {
			DisplayProductListService service = new DisplayProductListService();
			List<ProductDTO> list = service.select();
			System.out.println(list);
			request.setAttribute("list", list);
		} catch (Exception e) { 
				e.printStackTrace();
		}
		return "product/productList";
	}

}
