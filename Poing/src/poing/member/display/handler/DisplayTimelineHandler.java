package poing.member.display.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.display.service.DisplayTimelineService;
import poing.mvc.CommandHandler;
import poing.news_notice.NewsDTO;
import poing.news_notice.NoticeDTO;
import poing.product.ReserveTicketDTO;
import poing.product.display.service.ProductPayService;
import poing.rest.RestListDTO;
import poing.rest.RestTimlineReserveDTO;
import poing.review.ReviewDTO;

public class DisplayTimelineHandler implements CommandHandler {
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductPayService service = new ProductPayService();

		//List<ReserveTicketDTO> list1 = service.selectReserva_tic();
		//request.setAttribute("list1", list1);

		System.out.println("DisplayTimelineHandler.java process");
		String tab = request.getParameter("tab");
		String type = request.getParameter("type");
		if (tab == null) {
			tab = "reservation";
		}
		
		int memberID = Integer.parseInt(request.getParameter("id"));
		MemberDTO mdto = displayTimelineService.getMemberDTO(memberID);
		System.out.println("DisplayTimelineHandler.java line 22 mdto:" + mdto);
		
		
		ArrayList<RestTimlineReserveDTO> list = null;
		if (tab.equals("reservation")) {
			String reservTab = "past";
			if (type==null || type.equals("recent")) reservTab ="recent";
			list = displayTimelineService.getReseveRestDTO(memberID, reservTab);
		}
		
		
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
		
		ArrayList<RestListDTO> pick_rest_list = null;
		int page = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
		if (tab.equals("restaurant")) {
			pick_rest_list = displayTimelineService.getPickRestList(memberID, page);
			request.setAttribute("pick_rest_list", pick_rest_list);
		}
	
		ArrayList<NewsDTO> nnlist = displayTimelineService.getNewsDTO(memberID);
		ArrayList<NoticeDTO> nlist = displayTimelineService.getNoticeDTO(memberID);
		
		request.setAttribute("mdto", mdto);
		request.setAttribute("list", list);
		request.setAttribute("nnlist", nnlist);
		request.setAttribute("nlist", nlist);
		
		System.out.println("DisplayTimelineHandler.java line 18 mdto:" + mdto);
		return "user/timeline";
	}

}
