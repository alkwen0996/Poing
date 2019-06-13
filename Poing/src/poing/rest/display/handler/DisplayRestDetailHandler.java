package poing.rest.display.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.rest.RestListDTO;
import poing.rest.display.service.DisplayRestDetailReviewService;
import poing.rest.display.service.RestDetailService;
import poing.review.ReviewDTO;

public class DisplayRestDetailHandler implements CommandHandler
{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayRestDetailHandler porcess called...");
		int rest_seq = Integer.parseInt(request.getParameter("rest_seq"));
		String tab = request.getParameter("tab");
		int m_no =-1; 
		MemberDTO authUser = (MemberDTO)request.getSession().getAttribute("authUser");
		if (authUser != null) {
			m_no = authUser.getM_seq();
		}
		try {
			RestDetailService service = new RestDetailService();
			ArrayList<String> dto = service.select(rest_seq);
			ProductDTO restProduct = DisplayRestDetailReviewService.selectRestTicket(rest_seq); //레스토랑 티켓 이미지 티켓 이름
			List<ProductDTO> list1 = service.selectRestProductOPtion(rest_seq); //레스토랑 옵션 리스트
			
			if (tab == null || tab.equals("info")) {
				System.out.println();
			}
			
			else if (tab.equals("review")) {
				String type = (String) request.getParameter("type");
				int curPage = request.getParameter("page")==null?1:Integer.parseInt("page");
				ArrayList<ReviewDTO> list = DisplayRestDetailReviewService.getRestReviewList(rest_seq, m_no, type, curPage);
				request.setAttribute("paging", "");
				request.setAttribute("list", list);
			}
			request.setAttribute("list1", list1);
			request.setAttribute("dto", dto);
			request.setAttribute("restProduct", restProduct);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "rest/restDetail";
	}


}
