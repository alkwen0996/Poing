package poing.review.update.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.review.update.service.UpdateReviewService;

public class UpdateReviewHandler implements CommandHandler{
	UpdateReviewService updateReviewService = new UpdateReviewService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDTO authUser = (MemberDTO) request.getSession().getAttribute("authUser");
		if (authUser == null) {
			request.setAttribute("status", false);
			return "review/updateReview_json";
		}
		int rev_no = Integer.parseInt(request.getParameter("rid"));
		int m_no = Integer.parseInt(request.getParameter("mid"));
		String content = request.getParameter("content");
		int result = updateReviewService.updateReview(rev_no, content, m_no);
		request.setAttribute("status", result==0?false:true);
		return "review/updateReview_json";
	}
	
}
