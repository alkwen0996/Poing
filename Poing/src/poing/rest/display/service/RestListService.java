package poing.rest.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.util.ConnectionProvider;

import poing.rest.RestListDAO;
import poing.rest.RestListDTO;

public class RestListService {

	public List<RestListDTO> select() {
		RestListDAO dao = RestListDAO.getInstance();	
		try (Connection conn = ConnectionProvider.getConnection()) {	
			List<RestListDTO> list = dao.selectdisplay(conn);
			
			// 로그 처리
			// 
			//
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public List<RestListDTO> paging(int cpage) {
		RestListDAO dao = RestListDAO.getInstance();
		int pageNo = cpage;
		int numberOfBlock = 12;
		int first = (pageNo-1) * numberOfBlock + 1;
		int end = (pageNo-1) * numberOfBlock + numberOfBlock;
		try(Connection conn = ConnectionProvider.getConnection()) {
			List<RestListDTO> list1 = dao.pagingdisplay(conn, first, end);
			
			return list1;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
