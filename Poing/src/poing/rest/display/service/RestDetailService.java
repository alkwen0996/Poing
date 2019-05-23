package poing.rest.display.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.rest.RestDetailDAO;
import poing.rest.RestListDTO;

public class RestDetailService {

	public RestListDTO select(int rest_seq) {
		RestDetailDAO dao = RestDetailDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			RestListDTO dto = dao.selectdisplay(conn, rest_seq);
			// 
			return dto;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
