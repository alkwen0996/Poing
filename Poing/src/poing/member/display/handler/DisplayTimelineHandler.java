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
import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class DisplayTimelineHandler implements CommandHandler{
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayTimelineHandler.java process");
		String tab = request.getParameter("tab");
		String type = request.getParameter("type");
		if (tab == null) {
			tab = "reservation";
		}
		int memberID = Integer.parseInt(request.getParameter("id"));
		MemberDTO mdto = displayTimelineService.getMemberDTO(memberID);
		System.out.println("DisplayTimelineHandler.java line 22 mdto:" + mdto);
		ArrayList<RestTimlineReserveDTO> list = displayTimelineService.getReseveRestDTO(memberID);
		request.setAttribute("mdto", mdto);
		request.setAttribute("list", list);
		
		ArrayList<ReviewDTO> review_list = null;
		if (tab.equals("review")) {
			if (type == null || type.equals("write")) {
				review_list = displayTimelineService.getMyWriteReview(memberID);
			}
			else if (type.equals("like")) {
				review_list = displayTimelineService.getMyPickReview(memberID);
			}
			request.setAttribute("review_list", review_list);
		}
	
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
