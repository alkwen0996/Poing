package poing.product.display.handler;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.RefundTicketDTO;
import poing.product.ReserveTicketDTO;
import poing.product.display.service.DisplayProductDetailService;
import poing.product.display.service.ProductPayService;

public class cartDeleteHandler implements CommandHandler {
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boolean result1 = false;
		boolean result2 = false;
			DisplayProductDetailService service = new DisplayProductDetailService();
			int reserva_tic_seq = Integer.parseInt(request.getParameter("reserva_tic_seq"));
			int totalmoney = Integer.parseInt(request.getParameter("totalmoney"));
			int id = Integer.parseInt(request.getParameter("id"));
			
			System.out.println(reserva_tic_seq);
			result1 = service.updateTotalmoney(totalmoney, id);
			result2 = service.deletePayCart(reserva_tic_seq);
//			List<RefundTicketDTO> list2 = service.selectRefund_tic(reserva_tic_seq);
					
			System.out.println(result2);
			
//			ProductPayService service1 = new ProductPayService();
//
//			List<ReserveTicketDTO> list1 = service1.selectReserva_tic();
//			request.setAttribute("list1", list1);

		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("result1", result1);
		jsonObject.put("result2", result2);
//		jsonObject.put("list2", list2);
		
//		request.setAttribute("list2", list2);
		request.setAttribute("result1", result1);
		request.setAttribute("result2", result2);
		
		return "productCart/modifyCartReservation2";
	}

}
