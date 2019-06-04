package poing.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.mvc.CommandHandler;

public class UpdateCartHandler implements CommandHandler{
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		UpdateCartService service = new UpdateCartService();
		
		int cart_seq = Integer.parseInt(request.getParameter("id"));
		int party_size = Integer.parseInt(request.getParameter("party_size"));
		String message = request.getParameter("message");
		String c_date = request.getParameter("date");
		
		boolean result = service.updatecart(party_size, message, c_date, cart_seq);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("res", result);
		request.setAttribute("jsonData", jsonObject);
		
		return "cart/changeCart";
	}
}
