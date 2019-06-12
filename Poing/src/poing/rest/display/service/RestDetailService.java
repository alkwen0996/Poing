package poing.rest.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import poing.rest.RestDetailDAO;
import poing.rest.RestListDTO;
import poing.review.ReviewDAO;

public class RestDetailService {

	/*public RestListDTO select(int rest_seq) {
		RestDetailDAO dao = RestDetailDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			RestListDTO dto = dao.selectdisplay(conn, rest_seq);
			int rev_cnt = ReviewDAO.countRestReview(conn, rest_seq);
			dto.setRest_review_cnt(rev_cnt);
			
			// 
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}*/

	public RestListDTO select(int rest_seq, int m_no) {
		RestDetailDAO dao = RestDetailDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			RestListDTO dto = dao.selectdisplay(conn, rest_seq, m_no);
			ArrayList<String> imgList = new ArrayList<>();
			imgList = dao.selectimage(conn, rest_seq);
			int rev_cnt = ReviewDAO.countRestReview(conn, rest_seq);
			//dto.setRest_review_cnt(rev_cnt);
			
			// 
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public ArrayList<String> select(int rest_seq) {
		RestDetailDAO dao = RestDetailDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			
			ArrayList<String> imgList = new ArrayList<>();
			imgList = dao.selectimage(conn, rest_seq);
	 
			return imgList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public ArrayList<String> historySelect(int rest_seq) {
		RestDetailDAO dao = RestDetailDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			
			ArrayList<String> reserveHisList = new ArrayList<>();
			reserveHisList = dao.selectReservHis(conn, rest_seq);
	 
			return reserveHisList;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
