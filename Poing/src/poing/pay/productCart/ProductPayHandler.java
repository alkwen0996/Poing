package poing.pay.productCart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.reserva_ticDTO;
import poing.product.display.service.ProductPayService;

public class ProductPayHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ProductPayService service = new ProductPayService();
		
		
		System.out.println("payHandler start");
		int p_dc_money = Integer.parseInt(request.getParameter("p_dc_money"));
		int rp_seq = Integer.parseInt(request.getParameter("rp_seq"));
		int point = Integer.parseInt(request.getParameter("point"));
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		int m_no = Integer.parseInt(request.getParameter("m_no"));
		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		String m_email = request.getParameter("m_email");
		System.out.println(m_no);
		System.out.println(p_num);
		System.out.println(cart_seq);
		
		
//		String r_name = request.getParameter("r_name");
		String rest_name = request.getParameter("rest_name");
		//레스토랑 이름 유효기간 예약 내역 날짜 시간 인원
		
		System.out.println(point);// 입력한값
		System.out.println(rp_seq);
		System.out.println(p_dc_money);
		System.out.println(m_email);

		boolean result1 = service.insertReserve_tic(p_num, m_no, cart_seq);
		boolean result2 = service.selectRp_seq(rp_seq, p_dc_money, m_email, point);
		
		if (result2) {
			// 세션 새로 저장
			int new_rq_seq = rp_seq - p_dc_money;

			MemberDTO mdto = (MemberDTO) request.getSession().getAttribute("authUser");
			mdto.setRp_seq(new_rq_seq);
			request.getSession().setAttribute("authUser", mdto);
		}

		System.out.println(result1);
		System.out.println(result2);
		
		JSONObject jsonObject = new JSONObject();
		
		jsonObject.put("result1", result1);
		jsonObject.put("result2", result2);
//		jsonObject.put("rdto", rdto);
		
		request.setAttribute("result1",result1);
		request.setAttribute("result2",result2);
//		request.setAttribute("rdto",rdto);
		return "productCart/checkCartUpdate";

	}

}
