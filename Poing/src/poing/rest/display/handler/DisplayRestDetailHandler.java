package poing.rest.display.handler;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
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
			RestListDTO dto = service.select(rest_seq);
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
			request.setAttribute("dto", dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "rest/restDetail";
	}


}
