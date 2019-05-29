package poing.review.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.review.ReviewDTO;
import poing.review.display.service.DisplayReviewService;

public class DisplayReviewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("DisplayReviewHandler process()");
		
		DisplayReviewService service = new DisplayReviewService();
		List<ReviewDTO> list = service.select();
		System.out.println(list);
		request.setAttribute("list", list);
		
		return "review/reviewList";
	}
	
}
