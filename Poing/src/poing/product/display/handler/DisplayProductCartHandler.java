package poing.product.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import jdk.nashorn.api.scripting.JSObject;
import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayCartService;


public class DisplayProductCartHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DisplayCartService cartservice = new DisplayCartService();
		ProductDTO pdto = (ProductDTO) request.getSession().getAttribute("pdto");
		int p_num = 4;
		boolean result = cartservice.insertbasket(p_num);
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("status", result);
		request.setAttribute("jsonData", jsonObject);
	
		return "popup/cart";
	}

}
