package poing.member.display.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.display.service.DisplayTimelineService;
import poing.mvc.CommandHandler;
import poing.product.reserva_ticDTO;
import poing.product.display.service.ProductPayService;
import poing.rest.RestListDTO;
import poing.rest.RestTimlineReserveDTO;

public class DisplayTimelineHandler implements CommandHandler {
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductPayService service = new ProductPayService();

		List<reserva_ticDTO> list1 = service.selectReserva_tic();
		request.setAttribute("list1", list1);

		String memberID = request.getParameter("id");
		MemberDTO mdto = displayTimelineService.getMemberDTO(Integer.parseInt(memberID));
		ArrayList<RestTimlineReserveDTO> list = displayTimelineService.getReseveRestDTO(Integer.parseInt(memberID));
		request.setAttribute("mdto", mdto);
		request.setAttribute("list", list);
		System.out.println("DisplayTimelineHandler.java line 18 mdto:" + mdto);

		return "user/timeline";
	}

}
