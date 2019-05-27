package poing.member.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.display.service.DisplayTimelineService;
import poing.mvc.CommandHandler;

public class DisplayTimelineHandler implements CommandHandler{
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String memberID = request.getParameter("id");
		MemberDTO mdto = displayTimelineService.getMemberDTO(Integer.parseInt(memberID));
		request.setAttribute("mdto", mdto);
		System.out.println("DisplayTimelineHandler.java line 18 mdto:" + mdto);
		return "user/timeline";
	}

}
