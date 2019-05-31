package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;
import com.util.ConnectionProvider;

import poing.member.MemberDTO;
import poing.rest.RestListDAO;
import poing.rest.RestListDTO;

public class CartDAO {
	
	public static boolean insertbasket(Connection conn, int m_no) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into cart values (c_seq.NEXTVAL, ?, 'N') ") ;
		ResultSet rs = null;
		ProductDTO dto = new ProductDTO();
		MemberDTO mdto = new MemberDTO();
		RestListDTO rdto = new RestListDTO();
		PreparedStatement pstmt = null;
		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, m_no);
			result = pstmt.executeUpdate()==0?false:true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public static int selectcid(Connection conn) {
		StringBuffer sql = new StringBuffer();
		int cart = 0;
		sql.append(" select c_seq.currval from dual ") ;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		try {
			
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cart = rs.getInt(1);
			}
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cart;
	}
}

