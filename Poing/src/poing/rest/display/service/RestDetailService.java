package poing.rest.display.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.rest.RestDetailDAO;
import poing.rest.RestListDTO;
import poing.review.ReviewDAO;

public class RestDetailService {

	public RestListDTO select(int rest_seq) {
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
	}
}
