package poing.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.mvc.CommandHandler;

/*public class ConfirmOptionHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ConfirmOptionService service = new ConfirmOptionService();

		int cart_seq = Integer.parseInt(request.getParameter("cid"));
		String[] op_seq = request.getParameterValues("id");
		String[] op_cnt = request.getParameterValues("count");
		//System.out.println("####################################" + op_cnt);
		boolean result1 = service.deleteoption(cart_seq);
		boolean result = service.updateOption(cart_seq, op_seq, op_cnt);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("res", result);
		request.setAttribute("jsonData", jsonObject);
		
		return "/cart/updateCart";
	}

}
*/