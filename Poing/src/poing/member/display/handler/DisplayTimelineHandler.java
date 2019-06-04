package poing.member.display.handler;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.display.service.DisplayTimelineService;
import poing.mvc.CommandHandler;
import poing.news_notice.NewsDTO;
import poing.news_notice.NoticeDTO;
import poing.rest.RestTimlineReserveDTO;

public class DisplayTimelineHandler implements CommandHandler{
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String memberID = request.getParameter("id");
		MemberDTO mdto = displayTimelineService.getMemberDTO(Integer.parseInt(memberID));
		
		ArrayList<RestTimlineReserveDTO> list = displayTimelineService.getReseveRestDTO(Integer.parseInt(memberID));
		ArrayList<NewsDTO> nnlist = displayTimelineService.getNewsDTO(Integer.parseInt(memberID));
		ArrayList<NoticeDTO> nlist = displayTimelineService.getNoticeDTO(Integer.parseInt(memberID));
		
		request.setAttribute("mdto", mdto);
		request.setAttribute("list", list);
		request.setAttribute("nnlist", nnlist);
		request.setAttribute("nlist", nlist);
		
		System.out.println("DisplayTimelineHandler.java line 18 mdto:" + mdto);
		return "user/timeline";
	}

}
