package poing.member.display.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;
import poing.news_notice.NewsDTO;
import poing.news_notice.NoticeDTO;
import poing.rest.RestListDTO;
import poing.notice.UserNoticeDTO;
import poing.notice.PoingNoticeDTO;
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
	public ArrayList<RestTimlineReserveDTO> getReseveRestDTO(int memberID, String type) throws SQLException {
		
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<RestTimlineReserveDTO> list = mdao.getReserveRest(conn,memberID, type);
		
		conn.close();	
		System.out.println("displaytimlineService : 예약리스트 처리되어  list에 담김");
		return list;
	}
	public ArrayList<ReviewDTO> getWriteReview(int memberID, int curPage, int my_no) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		ArrayList<ReviewDTO> review_list = null;
		
		review_list = ReviewDAO.selectWriteReview(conn, memberID, curPage, my_no);
		conn.close();
		return review_list;
	}
	public ArrayList<ReviewDTO> getPickReview(int memberID, int curPage, int my_no) throws SQLException {
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		ArrayList<ReviewDTO> review_list = null;
		
		review_list = ReviewDAO.selectPickReview(conn, memberID, curPage, my_no);
		conn.close();
		return review_list;
	}

	
	public ArrayList<UserNoticeDTO> getUserNoticeList(int memberID)throws SQLException {
		
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<UserNoticeDTO> nnlist = mdao.getUserNoticeList(conn, memberID);
		
		conn.close();	
		System.out.println("displaytimlineService : 소식 list에 담김");
		return nnlist;
	}// getNewsNoticeDTO
	
	public ArrayList<PoingNoticeDTO> getNoticeDTO(int memberID) throws SQLException{
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<PoingNoticeDTO> nlist = mdao.getNoticeList(conn, memberID);
		
		conn.close();
		System.out.println("displaytimlineService : 알림 list에 담김");
		return nlist;
	}// getNoticeDTO
	public ArrayList<RestListDTO> getPickRestList(int memberID, int page) throws SQLException {
		Connection conn = ConnectionProvider.getConnection();
		ArrayList<RestListDTO> nlist = mdao.PickRestList(conn, memberID, page);
		
		conn.close();
		System.out.println("displaytimlineService : 알림 list에 담김");
		return nlist;
	
	public static boolean amIFollow(int memberID, int my_no) throws SQLException {
		if (my_no == -1) {
			return false;
		}
		boolean result = false;
		Connection conn = null;
		conn = ConnectionProvider.getConnection();
		result = MemberDAO.amIFollow(conn , memberID, my_no);
		return result;
	}
}// class
