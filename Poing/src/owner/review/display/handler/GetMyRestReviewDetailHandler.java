package owner.review.display.handler;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import owner.mvc.CommandHandler;
import owner.review.display.service.GetMyRestReviewDetailService;
import poing.review.CommentDTO;
import poing.review.ReviewDTO;

public class GetMyRestReviewDetailHandler implements CommandHandler{
	GetMyRestReviewDetailService getMyRestReviewDetailService = new GetMyRestReviewDetailService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ReviewDTO reviewDTO = null;
		int rev_no = Integer.parseInt(request.getParameter("rev_no"));
		reviewDTO = getMyRestReviewDetailService.getMyRestReivew(rev_no);
		ArrayList<CommentDTO> comment_list = getMyRestReviewDetailService.getReviewCommentList(rev_no);
		request.setAttribute("reviewDTO", reviewDTO);
		request.setAttribute("comment_list", comment_list);
		return "review_detail";
	}
	
	
}
