package poing.review.pick.handler;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.review.pick.service.ReviewPickService;

public class ReviewPickHandler implements CommandHandler{
	ReviewPickService reviewPickService = new ReviewPickService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		boolean result = false;
		int likeCnt = 0;
		MemberDTO mdto = (MemberDTO) request.getSession().getAttribute("authUser");
		String type = request.getParameter("type");
		int rev_id = Integer.parseInt(request.getParameter("id"));
		if(mdto == null)
		{
			request.setAttribute("status", result);
			return "review/likeReviewResult";
		}
		int mid = mdto.getM_no();
		try {
			if (type.equals("on")) {
				result = reviewPickService.addPickReview(mid, rev_id)==0?false:true;
			}
			else if (type.equals("off")) {
				result = reviewPickService.removePickReview(mid, rev_id)==0?false:true;
			}
			likeCnt = reviewPickService.countPickReview(rev_id);
			request.setAttribute("status", result);
			request.setAttribute("like_count", likeCnt);
		} catch (SQLException e) {
			request.setAttribute("status", false);
			e.printStackTrace();
		}
		return "review/pickReviewResult";
	}

}
