package poing.review.insert.handler;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.review.ReviewDTO;
import poing.review.insert.service.WriteReviewService;

public class WriteReviewHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/review/reviewList";
	private WriteReviewService writeReviewService = new WriteReviewService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("WriteReviewHandler");
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		} else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}// process

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("processSubmit");
		ReviewDTO dto = new ReviewDTO();
		dto.setRev_seq(request.getParameter("id"));
		dto.setRest_seq(request.getParameter("grade"));
		dto.setRev_wtime(request.getParameter("text"));
		dto.setRev_content(request.getParameter("photo_cnt"));
		
		
		int result = writeReviewService.writeReview(dto);
		
		try {
			if(result == 1) {
				response.sendRedirect("review.do");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}// processSubmit
} // class


