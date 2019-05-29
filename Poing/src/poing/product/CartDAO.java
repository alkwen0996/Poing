package poing.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import poing.rest.RestListDAO;
import poing.rest.RestListDTO;

public class CartDAO {
	
	public static boolean insertbasket(Connection conn, int p_num) {
		boolean result = false;
		ProductDTO dto = null;
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into cart (c_seq, p_num) values (c_seq.NEXTVAL, ?) ") ;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, p_num);
			result = pstmt.executeUpdate()==0?false:true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}

