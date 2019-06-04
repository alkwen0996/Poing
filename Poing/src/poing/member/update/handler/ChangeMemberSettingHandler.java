package poing.member.update.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.update.service.ChangeMemberSettingService;
import poing.mvc.CommandHandler;

public class ChangeMemberSettingHandler implements CommandHandler{
	ChangeMemberSettingService changeMemberSettingService = new ChangeMemberSettingService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberDTO authUser = (MemberDTO)request.getSession().getAttribute("authUser");
		int memberID = authUser.getM_no();

		String paramName = request.getParameterNames().nextElement();
		boolean result = false;
		switch (paramName) {
		case "web_name": //이름 변경
			String webName = request.getParameter("web_name");
			result = changeMemberSettingService.changeMemberWebName(memberID, webName );

			break;

		case "simple_introduction": //자기소개 변경
			String selfIntro = request.getParameter("simple_introduction");
			result = changeMemberSettingService.changeMemberSelfIntro(memberID, selfIntro);
			break;

		case "name": //예약자명 변경
			String name = request.getParameter("name");
			result = changeMemberSettingService.changeMemberName(memberID, name);
			break;

		default:
			request.setAttribute("status", result);
		}
		request.setAttribute("status", result);
		return "user/changeSettingResult";
	}

}
