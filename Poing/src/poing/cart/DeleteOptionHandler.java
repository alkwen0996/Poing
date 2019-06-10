package poing.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.CartDAO;

public class DeleteOptionHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			int cart_seq = Integer.parseInt(request.getParameter("id"));
			int op_seq = Integer.parseInt(request.getParameter("options[]"));
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" + op_seq);
			DeleteOptionService service = new DeleteOptionService();
			boolean result = service.deleteOption(cart_seq, op_seq);
			
		} catch (Exception e) {
		}
		return "product/productCart";
	}

	
}
