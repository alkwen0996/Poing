package poing.member.auth.handler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;


public class JoinMemberHandler implements CommandHandler{

	private static final String FORM_VIEW = "user/joinForm";

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
		
		String memberid = request.getParameter("name");
		LocalDate date = LocalDate.now();
		String email = request.getParameter("email");
		if (request.getParameter("birth1") != null) {
			String b_year = request.getParameter("birth1");
			String b_month = request.getParameter("birth2");
			String b_day = request.getParameter("birth3");
			
			
			date.of(b_year, b_month, b_day);
		}
		
		
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		String confirm_password = request.getParameter("password2");

		
		
		
		String birth_str = request.getParameter("birth1") + "/" + request.getParameter("birth2") + "/" + request.getParameter("birth3");
		SimpleDateFormat format = new SimpleDateFormat();
		try {
			mdto.setBirth(format.parse(birth_str));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		mdto.setGender(gender);
		mdto.setPassword(password);
		
		System.out.println(mdto);
		Map<String, Boolean> errors = new HashMap<>();
		request.setAttribute("errors", errors);
		if (memberid == null || memberid.isEmpty()) {
			errors.put("id", Boolean.TRUE);
		}
		if (password == null || password.isEmpty()) {
			errors.put("password", Boolean.TRUE);
		}
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		return FORM_VIEW;
	
		
	}
	private String trim(String str) {
		return str == null ? null : str.trim();
	}

}
