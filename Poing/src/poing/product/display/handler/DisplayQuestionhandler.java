package poing.product.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.QuestionDAO;
import poing.product.QuestionDTO;
import poing.product.display.service.DisplayQuestionService;

public class DisplayQuestionhandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayQuestionHandler");
		DisplayQuestionService service = new DisplayQuestionService();
		QuestionDAO qdao = new QuestionDAO();
		
		int tic_seq = Integer.parseInt(request.getParameter("p_num"));
		int m_no = Integer.parseInt(request.getParameter("memberID"));
		
		
		return null;
	}// process
	
}//class
