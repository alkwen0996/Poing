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
import poing.product.ProductDTO;
import poing.product.ProductDetailDAO;
import poing.product.RefundTicketDTO;
import poing.product.display.service.DisplayProductDetailService;
import poing.product.display.service.ProductPayService;
import poing.rest.RestListDTO;
import poing.rest.RestTimlineReserveDTO;
import poing.review.ReviewDTO;

public class DisplayTimelineHandler implements CommandHandler {
	DisplayTimelineService displayTimelineService = new DisplayTimelineService();
	
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		int cart_seq = Integer.parseInt(request.getParameter("cart_seq"));
		
		System.out.println("DisplayTimelineHandler.java process");
		String tab = request.getParameter("tab");
		String type = request.getParameter("type");
		int my_no;
		my_no = -1;
		MemberDTO authUser = (MemberDTO) request.getSession().getAttribute("authUser");
		int memberID = Integer.parseInt(request.getParameter("id"));
		MemberDTO mdto = displayTimelineService.getMemberDTO(memberID);
		request.setAttribute("mdto", mdto);
		if (authUser != null) {
			my_no = authUser.getM_seq();
		}
		
		if (my_no == -1) {
			request.setAttribute("amIFollow", false);
		}
		else if (my_no != memberID) {
			boolean amIFollow = DisplayTimelineService.amIFollow(memberID, my_no);
			request.setAttribute("amIFollow", amIFollow);
		}
		
		if(tab == null)
		{
			if ( authUser != null && my_no != -1 && authUser.getM_seq() == mdto.getM_seq())
				tab = "reservation";
			else
				tab = "review";
		}
		
		// 탭 분기
		if (tab.equals("reservation"))
		{
			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}
			String reservTab = "past";
			if (type==null || type.equals("recent")) reservTab ="recent";
			ArrayList<RestTimlineReserveDTO> reserve_list = displayTimelineService.getReseveRestDTO(memberID,reservTab);
			request.setAttribute("reserve_list", reserve_list);
		}
		else if (tab.equals("coupon"))
		{
			ProductPayService service = new ProductPayService();
			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}else {
			ProductPayService service5 = new ProductPayService();
			List<RefundTicketDTO> rev_tic_list = service5.selectReserva_tic();
			List<RefundTicketDTO> rev_use_list = service.selectUseReserva_tic();
			request.setAttribute("rev_use_list", rev_use_list);
			request.setAttribute("rev_tic_list", rev_tic_list);
		
//			DisplayProductDetailService service2 = new DisplayProductDetailService();
//			List<ProductDTO> list = service2.selectProductList(cart_seq);
//			request.setAttribute("list", list);
			}
		}
		else if (tab.equals("review"))
		{
			int curPage = request.getParameter("pg")==null?1:Integer.parseInt(request.getParameter("pg"));
			ArrayList<ReviewDTO> review_list = null;

			Paging paging = null; 
			
			if (type == null || type.isEmpty() || type.equals("write")) {
				review_list = displayTimelineService.getWriteReview(memberID, curPage, my_no);
				paging = Paging.getReviewPaing(mdto.getM_seq(), "write", curPage);
			}
			else if (type.equals("like")) {
				review_list = displayTimelineService.getPickReview(memberID, curPage, my_no);
				paging = Paging.getReviewPaing(mdto.getM_seq(), "like", curPage);
			}
			request.setAttribute("paging", paging);
			request.setAttribute("review_list", review_list);
		}
		//찜한 레스토랑 티켓
		else if (tab.equals("restaurant")){
		
			if(type.equals("restaurant")) {
			ArrayList<RestListDTO> pick_rest_list = null;
			int page = request.getParameter("page")==null?1:Integer.parseInt(request.getParameter("page"));
			pick_rest_list = displayTimelineService.getPickRestList(memberID, page);
			request.setAttribute("pick_rest_list", pick_rest_list);
		
			}else if(type.equals("coupon")) { //티켓 찜
				
				DisplayProductDetailService service = new DisplayProductDetailService();
				List<ProductDTO> ticList = service.selectPickTicket();
				ProductDTO pickRownum = service.selectPickRownum();
				
				request.setAttribute("pickRownum", pickRownum);
				request.setAttribute("ticList", ticList);
				
			}
		}
		
		else if (tab.equals("alert"))
		{
			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}
			ArrayList<UserNoticeDTO> nnlist = displayTimelineService.getUserNoticeList(memberID);
			ArrayList<PoingNoticeDTO> nlist = displayTimelineService.getNoticeDTO(memberID);
			request.setAttribute("nnlist", nnlist);
			request.setAttribute("nlist", nlist);
		}
		else if (tab.equals("payment"))
		{
			DisplayProductDetailService service2 = new DisplayProductDetailService();

			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}else {
			List<RefundTicketDTO> payment_list = service2.selectRefund_tic();//환불 되고나서
			request.setAttribute("payment_list", payment_list);
			}
			
		}
		else if (tab.equals("friends"))
		{
			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}		
		}
		else if (tab.equals("setting"))
		{
			if (authUser == null || authUser.getM_seq() != mdto.getM_seq()) 
			{
				response.sendRedirect("/Poing/timeline.do?id="+mdto.getM_seq());
				return null;
			}
		}
		return "user/timeline";
	}

}
