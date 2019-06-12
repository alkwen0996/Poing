package admin.review.write.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminDTO;
import admin.mvc.CommandHandler;
import admin.review.write.service.WriteEditerReviewService;

public class WriteEditerReviewHandler implements CommandHandler{
	WriteEditerReviewService writeEditerReviewService = new WriteEditerReviewService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equals("GET")) {
			return "editer_review";
		}
		else if (request.getMethod().equals("POST"))	{
			AdminDTO authAdmin = (AdminDTO) request.getSession().getAttribute("authAdmin");
			if (authAdmin == null) {
				System.out.println("세션 정보 부족");
				response.sendRedirect("/Poing/admin/login.ad");
				return null;
			}
			int e_seq = authAdmin.getE_seq();
			int rest_seq = Integer.parseInt(request.getParameter("rest_seq"));
			String er_content = request.getParameter("er_content");
			writeEditerReviewService.addEditerReview(e_seq, rest_seq, er_content);
		}
		return null;
	}

}
