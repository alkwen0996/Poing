package poing.member.auth.handler;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.member.MemberDTO;
import poing.member.auth.service.JoinMemberService;
import poing.mvc.CommandHandler;


public class JoinMemberHandler implements CommandHandler{

	private static final String FORM_VIEW = "user/joinForm";
	JoinMemberService joinMemberService = new JoinMemberService();
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return processForm(request, response);
		}
		else if (request.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(request, response);
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("JoinMemberHandler processForm");
		return FORM_VIEW;
	}
	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("JoinMemberHandler processSubmit");
		MemberDTO mdto = new MemberDTO();
		
		String name = request.getParameter("web_name");
		String email = request.getParameter("login_id");
		String birth = request.getParameter("birth");
		if (birth != null) {
			mdto.setM_birth(birth);
		}
		String password = request.getParameter("password");
		
		
		mdto.setM_name(name);
		mdto.setM_nickname(name);
		mdto.setM_email(email);
		mdto.setM_pw(password);
		String gender = null;
		if((gender=request.getParameter("gender")) != null)
		{
			mdto.setM_gen(gender.equals("mail")?1:0); //남자라면1 아니라면 0			
		}
		
		mdto.setRp_seq(3000);
		System.out.println(mdto);
		
		boolean result = joinMemberService.joinMember(mdto);
		JSONObject jsonData = new JSONObject();
		jsonData.put("status", result);
		request.setAttribute("jsonData", jsonData);

		if(result)
		{
			System.out.println("Join success");
			request.setAttribute("authUser", mdto);
			return "user/joinResult";
		}
		else
		{
			System.out.println("Join failed");
		}
		return FORM_VIEW;
	}

}
