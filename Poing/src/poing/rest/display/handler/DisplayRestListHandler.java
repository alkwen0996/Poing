package poing.rest.display.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.product.Paging;
import poing.rest.RestListDAO;
import poing.rest.RestListDTO;
import poing.rest.display.service.RestListService;

public class DisplayRestListHandler implements CommandHandler
{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RestListDAO dao = new RestListDAO();
		int cpage = request.getParameter("pg") == null ? 1 : Integer.parseInt(request.getParameter("pg"));
		int totalCount = dao.getTotalCount();

		int startPageNo = 1;
		int endPageNo = (int) (Math.ceil(totalCount * 1.0 / 12));
		int firstPageNo = cpage - ((cpage-1)%10);
		int finalPageNo = firstPageNo + (10 - 1);
		if(finalPageNo >= endPageNo) {
			finalPageNo = endPageNo;
		}
		int prevPageNo = cpage == 1 ? 1 : cpage - 1;
		int doubleprevPageNo = firstPageNo == 1 ? 1 : firstPageNo - 10;
		int nextPageno = cpage == endPageNo ? endPageNo : cpage + 1;
		int doublenextPageNo = finalPageNo == endPageNo ? endPageNo : firstPageNo + 10;

		Paging paging = new Paging();

		paging.setPageSize(12);
		paging.setCpage(cpage);
		paging.setTotalCount(totalCount);
		paging.setStartPageNo(startPageNo);
		paging.setEndPageNo(endPageNo);
		paging.setPrevPageNo(prevPageNo);
		paging.setNextPageno(nextPageno);
		paging.setFirstPageNo(firstPageNo);
		paging.setFinalPageNo(finalPageNo);
		paging.setDoubleprevPageNo(doubleprevPageNo);
		paging.setDoublenextPageNo(doublenextPageNo);

		try {
			RestListService service = new RestListService();
			List<RestListDTO> list = service.select();
			List<RestListDTO> list1 = service.paging(cpage);
			request.setAttribute("list", list);
			request.setAttribute("list1", list1);
			request.setAttribute("paging", paging);
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return "rest/restList";
	}
}