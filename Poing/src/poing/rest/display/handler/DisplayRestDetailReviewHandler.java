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

public class DisplayRestDetailReviewHandler implements CommandHandler
{
	RestDetailService service = new RestDetailService();
	DisplayRestDetailReviewService displayRestDetailReviewService = new DisplayRestDetailReviewService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayRestDetailReviewHandler process called...");

		try {
			int rest_no = Integer.parseInt(request.getParameter("rest_seq"));
			String type = request.getParameter("type");
			int m_no =-1; 
			MemberDTO authUser = (MemberDTO)request.getSession().getAttribute("authUser");
			if (authUser != null) {
				m_no = authUser.getM_no();
			}
			RestListDTO dto = service.select(rest_no);
			ArrayList<ReviewDTO> list = displayRestDetailReviewService.getRestReviewList(rest_no, m_no, type);
			
			request.setAttribute("dto", dto);
			request.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "rest/restDetail";
	}
 

}
