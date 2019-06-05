package poing.review.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.Paging;
import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class DisplayReviewService {
	public List<ReviewDTO> select(String type, int m_no, int cpage) throws SQLException{

		System.out.println("DisplayReviewService");
		ReviewDAO dao = new ReviewDAO();
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		List<ReviewDTO> list = ReviewDAO.selectAllReview(conn, type, m_no, cpage);

		return list;

	}//List

	public static int countReview(int m_no) throws SQLException {
		int result = 0;
		Connection conn = null;

		conn = ConnectionProvider.getConnection();
		result = ReviewDAO.countWriteReview(conn, m_no);
		conn.close();
		return result;
	}

	public Paging getPaing(int cpage, String type, int num) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		int totalCount = 0;
		switch (type) {
		case "member":
			totalCount = ReviewDAO.countWriteReview(conn, num);
			break;
		case "rest":
			totalCount = ReviewDAO.countRestReview(conn, num);
			break;
		case "follow":
			totalCount = ReviewDAO.countFollowReview(conn, num);
			break;
		default:
			totalCount = ReviewDAO.countReview(conn);
			break;
		}
		Paging paging = new Paging();
		paging.setCpage(cpage); //현재페이지 수

		
		int numberOfBlocks = (int) Math.ceil(totalCount / 7.0); //총 페이지 수
		paging.setPageSize(10); //10page출력
		int numberOfBlock = paging.getPageSize(); //출력되는 페이지수
		
		int startPageNo = (cpage-1)/numberOfBlock * numberOfBlock + 1;
		int endPageNo = startPageNo + numberOfBlock - 1;
		if(endPageNo > numberOfBlocks)
			endPageNo = numberOfBlocks;
		
		int prevPageNo = cpage == startPageNo ? startPageNo : cpage - 1;
		int nextPageno = cpage == endPageNo ? endPageNo : cpage + 1;

		//paging.setPageNo(pageNo);\
		paging.setStartPageNo(startPageNo);
		paging.setEndPageNo(endPageNo);
		paging.setPrevPageNo(prevPageNo);
		paging.setNextPageno(nextPageno);
		conn.close();
		return paging;
	}
}//class
