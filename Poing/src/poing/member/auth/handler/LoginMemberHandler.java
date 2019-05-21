package poing.member.auth.handler;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.auth.service.LoginMemberService;
import poing.member.auth.service.MemberDTO;
import poing.mvc.CommandHandler;

public class LoginMemberHandler implements CommandHandler{
	LoginMemberService loginMemberService = new LoginMemberService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("LoginMemberHandler process() called...");
		Map<String, String[]> map = request.getParameterMap();
		
		Set<String> set = map.keySet();
		Iterator<String> ir = set.iterator();
		while (ir.hasNext()) {
			String string = ir.next();
			String[] params = map.get(string);
			System.out.println(string + " : " + params[0]);
		} 
		
		String email = request.getParameter("login_id");
		String password = request.getParameter("password");
		int memberID = loginMemberService.getMemberID(email);
		if(memberID == 0)
		{
			System.out.println("ID가 존재하지 않습니다.");
			return "main";
		}
		MemberDTO mdto = loginMemberService.selectMemberByID(memberID);
		if(!mdto.checkPassword(password))
		{
			System.out.println("비밀번호가 일치하지 않습니다.");
			return "main";
		}
		System.out.println("no:" + mdto.getId());
		System.out.println("이름:" + mdto.getName());
		request.setAttribute("mdto", mdto);
		return "main";
	}

}
