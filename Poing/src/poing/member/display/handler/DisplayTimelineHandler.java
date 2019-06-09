package poing.member.display.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.member.display.service.DisplayTimelineService;
import poing.mvc.CommandHandler;
import poing.notice.PoingNoticeDTO;
import poing.notice.UserNoticeDTO;
import poing.product.Paging;
import poing.product.RefundTicketDTO;
import poing.product.display.service.DisplayProductDetailService;
import poing.product.display.service.ProductPayService;
import poing.rest.RestTimlineReserveDTO;
import poing.review.ReviewDTO;

public class DisplayTimelineHandler implements CommandHandler {
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ProductPayService service = new ProductPayService();
		DisplayProductDetailService service2 = new DisplayProductDetailService();
		
		System.out.println("DisplayTimelineHandler.java process");
		String tab = request.getParameter("tab");
		String type = request.getParameter("type");

		MemberDTO authUser = (MemberDTO) request.getSession().getAttribute("authUser");
		int memberID = Integer.parseInt(request.getParameter("id"));
		MemberDTO mdto = displayTimelineService.getMemberDTO(memberID);
		request.setAttribute("mdto", mdto);
		int my_no = -1;
		if (authUser != null) {
			my_no = authUser.getM_no();
		}
		if (my_no != memberID) {
			boolean amIFollow = DisplayTimelineService.amIFollow(memberID, my_no);
			request.setAttribute("amIFollow", amIFollow);
		}
		
		
		if(tab == null)
		{
			if ( authUser != null && authUser.getM_no() == mdto.getM_no())
				tab = "reservation";
			else
				tab = "review";
		}
		
		// 탭 분기
		if (tab.equals("reservation"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}
			ArrayList<RestTimlineReserveDTO> reserve_list = displayTimelineService.getReseveRestDTO(memberID);
			request.setAttribute("reserve_list", reserve_list);
		}
		else if (tab.equals("coupon"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}else {
			ProductPayService service5 = new ProductPayService();
			List<RefundTicketDTO> rev_tic_list = service5.selectReserva_tic();
			request.setAttribute("rev_tic_list", rev_tic_list);
			}
		}
		else if (tab.equals("review"))
		{
			int curPage = request.getParameter("pg")==null?1:Integer.parseInt(request.getParameter("pg"));
			ArrayList<ReviewDTO> review_list = null;

			Paging paging = null; 
			
			if (type == null || type.isEmpty() || type.equals("write")) {
				review_list = displayTimelineService.getWriteReview(memberID, curPage, my_no);
				paging = Paging.getReviewPaing(mdto.getM_no(), "write", curPage);
			}
			else if (type.equals("like")) {
				review_list = displayTimelineService.getPickReview(memberID, curPage, my_no);
				paging = Paging.getReviewPaing(mdto.getM_no(), "like", curPage);
			}
			request.setAttribute("paging", paging);
			request.setAttribute("review_list", review_list);
		}
		else if (tab.equals("restaurant"))
		{

		}
		else if (tab.equals("alert"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}
			ArrayList<UserNoticeDTO> nnlist = displayTimelineService.getUserNoticeList(memberID);
			ArrayList<PoingNoticeDTO> nlist = displayTimelineService.getNoticeDTO(memberID);
			request.setAttribute("nnlist", nnlist);
			request.setAttribute("nlist", nlist);
		}
		else if (tab.equals("payment"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}else {
			List<RefundTicketDTO> payment_list = service2.selectRefund_tic();//환불 되고나서
			request.setAttribute("payment_list", payment_list);
			}
			
		}
		else if (tab.equals("friends"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}		
		}
		else if (tab.equals("setting"))
		{
			if (authUser == null || authUser.getM_no() != mdto.getM_no()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_no());
				return null;
			}
		}
		return "user/timeline";
	}

}
