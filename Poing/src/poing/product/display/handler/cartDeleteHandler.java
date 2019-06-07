package poing.product.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.RefundTicketDTO;
import poing.product.PointHistoryDTO;
import poing.product.display.service.DisplayProductDetailService;
import poing.product.display.service.ProductPayService;

public class cartDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boolean result1 = false;
		boolean result2 = false;
		boolean result3 = false;

		DisplayProductDetailService service = new DisplayProductDetailService();
		int reserva_tic_seq = Integer.parseInt(request.getParameter("reserva_tic_seq"));
		int totalmoney = Integer.parseInt(request.getParameter("totalmoney"));
		System.out.println("토탈머니=" + totalmoney);
		int id = Integer.parseInt(request.getParameter("id"));
		MemberDTO mdto = (MemberDTO)request.getSession().getAttribute("authUser");
		int m_no = mdto.getM_no();

		System.out.println(reserva_tic_seq);
		result1 = service.updateTotalmoney(totalmoney, id);
		result2 = service.updatePayCart(reserva_tic_seq, m_no ,totalmoney);
		
//			List<RefundTicketDTO> list2 = service.selectRefund_tic(reserva_tic_seq);

		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);

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
