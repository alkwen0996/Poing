package poing.display.main.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import poing.display.main.MainDTO;
import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class DisplayMainService {
	public MainDTO getMainDisplay() throws SQLException {
		MainDTO mainDTO = new MainDTO();
		
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<ReviewDTO> rev_list = ReviewDAO.selectMainReview(conn );
		mainDTO.setRev_list(rev_list);
		conn.close();
		return mainDTO;
	}

}
