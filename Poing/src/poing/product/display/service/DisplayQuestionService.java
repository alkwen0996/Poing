package poing.product.display.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import poing.product.QuestionDAO;
import poing.product.QuestionDTO;

public class DisplayQuestionService {
	QuestionDAO qdao = QuestionDAO.getInstance(); 
	public List<QuestionDTO> selectQuestion(int p_num,int memberID) {
		List<QuestionDTO> qlist = null;
		
		try (Connection conn = ConnectionProvider.getConnection()){
			qlist =qdao.selectDisplay(conn, memberID);
			 conn.close();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		return qlist;
	}// selectQuestion
}//class
