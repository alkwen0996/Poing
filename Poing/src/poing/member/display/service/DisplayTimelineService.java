package poing.member.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.ConnectionProvider;

import javafx.collections.ArrayChangeListener;
import poing.member.MemberDAO;
import poing.member.MemberDTO;
import poing.rest.RestTimlineReserveDTO;
import poing.review.ReviewDAO;
import poing.review.ReviewDTO;

public class DisplayTimelineService {
	MemberDAO mdao = new MemberDAO();
	public MemberDTO getMemberDTO(int memberID) throws SQLException {
		MemberDTO mdto = new MemberDTO();
		
		Connection conn = ConnectionProvider.getConnection();
		mdto = mdao.selectById(conn , memberID);
		
		int result[] = MemberDAO.getFollowCnt(conn, memberID);
		mdto.setEd_cnt(result[0]);
		mdto.setEr_cnt(result[1]);
		conn.close();
		return mdto;
	}
	public ArrayList<RestTimlineReserveDTO> getReseveRestDTO(int memberID) throws SQLException {
		
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<RestTimlineReserveDTO> list = mdao.getReserveRest(conn,memberID);
		
		conn.close();	
		System.out.println("displaytimlineService : 예약리스트 처리도어  list에 담김");
		return list;
	}
	public ArrayList<ReviewDTO> getMyWriteReview(int memberID) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		ArrayList<ReviewDTO> review_list = null;
		
		review_list = ReviewDAO.selectMyWriteReview(conn, memberID);
		conn.close();
		return review_list;
	}
	public ArrayList<ReviewDTO> getMyPickReview(int memberID) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		ArrayList<ReviewDTO> review_list = null;
		
		review_list = ReviewDAO.selectMyPickReview(conn, memberID);
		conn.close();
		return review_list;
	}
}
