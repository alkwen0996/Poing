package poing.member.display.service;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.member.MemberDAO;
import poing.member.MemberDTO;

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
}
