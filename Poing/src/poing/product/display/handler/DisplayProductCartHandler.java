package poing.product.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import jdk.nashorn.api.scripting.JSObject;
import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.CartDAO;
import poing.product.CartDTO;
import poing.product.ProductDAO;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayCartService;
import poing.rest.RestListDTO;


public class DisplayProductCartHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		DisplayCartService cartservice = new DisplayCartService();
		RestListDTO rdto = new RestListDTO();
		int mId = 1;
		int poId = 1;
		int cNum = 1;
		String restName = rdto.getRest_name();
		boolean result = cartservice.insertbasket(mId, poId, cNum);
		//int options = cartservice.selectcart();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("status", result);
		//jsonObject.put("data", options);

		request.setAttribute("jsonData", jsonObject);
		
		return "popup/cart";
	}

}
