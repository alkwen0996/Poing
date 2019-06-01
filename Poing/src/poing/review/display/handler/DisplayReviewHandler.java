package poing.review.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.review.ReviewDTO;
import poing.review.display.service.DisplayReviewService;

public class DisplayReviewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("DisplayReviewHandler process()");
		
		DisplayReviewService service = new DisplayReviewService();
		String type = request.getParameter("type");
		if(type == null)
		{
			type = "all";
		}
		request.setAttribute("type", type);
		MemberDTO authUser = (MemberDTO) request.getSession().getAttribute("authUser");
		int m_no = -1;
		if (authUser != null) {
			m_no = authUser.getM_no();
		}
		List<ReviewDTO> list = service.select(type, m_no);
		request.setAttribute("list", list);
		
		return "review/reviewList";
	}
	
}
