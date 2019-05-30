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
	
	public static boolean insertbasket(Connection conn, int mId, int poId, int cNum) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into cart (c_seq, m_no, po_id, c_num) values (c_seq.NEXTVAL, ?, ?, ?) ") ;
		ResultSet rs = null;
		ProductDTO dto = new ProductDTO();
		MemberDTO mdto = new MemberDTO();
		RestListDTO rdto = new RestListDTO();
		PreparedStatement pstmt = null;
		try {
			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, mId);
			pstmt.setInt(2, poId);
			pstmt.setInt(3, cNum);
			
			result = pstmt.executeUpdate()==0?false:true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}

