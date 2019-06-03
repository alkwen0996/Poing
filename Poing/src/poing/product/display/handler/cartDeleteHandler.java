package poing.product.display.handler;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;

public class cartDeleteHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boolean result2 = false;
		try {
			DisplayProductDetailService service = new DisplayProductDetailService();
			int reserva_tic_seq = Integer.parseInt(request.getParameter("reserva_tic_seq"));
			System.out.println("d"+reserva_tic_seq);
			result2 = service.deletePayCart(reserva_tic_seq);
			System.out.println(result2);
		} catch (Exception e) { 
				e.printStackTrace();
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result2", result2);
		request.setAttribute("result2", result2);
		
		return "productCart/modifyCartReservation2";
	}

}
