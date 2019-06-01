package poing.product.display.handler;


import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayCartService;
import poing.product.display.service.DisplayProductDetailService;


public class ModifyCartReservationHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
/*		DisplayCartService cartservice = new DisplayCartService();
		ProductDTO pdto = (ProductDTO) request.getSession().getAttribute("pdto");
		boolean result = cartservice.insertbasket(p_num);
		System.out.println(result);*/
		String optionArr = request.getParameter("optionArr");
		
		String date = request.getParameter("date");
		
		ArrayList<Integer> ids = new ArrayList<>();
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = (JSONArray) jsonParser.parse(optionArr);
		ArrayList<Integer> counts = new ArrayList<>();
		
		JSONObject obj = null;
		for (int i = 0; i < jsonArray.size(); i++) {
			obj = (JSONObject) jsonArray.get(i);
			ids.add(Integer.parseInt((String) obj.get("id")));
			counts.add(Integer.parseInt((String) obj.get("count")));
		}
		
		System.out.println("ModifyCartReservationHandler.process line 23");
		JSONObject jsonObject = new JSONObject();
		boolean result = true;
		jsonObject.put("status", result);
		
		request.setAttribute("jsonData", jsonObject);
		return "productCart/modifyCartReservation";
	}

}
