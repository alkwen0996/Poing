package poing.member.auth.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.auth.service.CheckEmailDupleService;
import poing.mvc.CommandHandler;

public class CheckEmailDupleHandler implements CommandHandler{
	CheckEmailDupleService checkEmailDupleService = new CheckEmailDupleService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("CheckEmailDupleHandler process called");
		String email = request.getParameter("email");
		boolean result = checkEmailDupleService.checkEmailDuple(email);
		request.setAttribute("result", result);
		return "user/checkEmailrResult";
	}
	
}
