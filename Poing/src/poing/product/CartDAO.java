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
	
	public static int insertbasket(Connection conn, int m_no) {
		boolean result = false;
		StringBuffer sql = new StringBuffer();

		sql.append(" insert into cart values (cart_seq.NEXTVAL, ?, null, null) ") ;
		ResultSet rs = null;

		PreparedStatement pstmt = null;
		int c_seq = -1;

		try {
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, m_no);

			result = pstmt.executeUpdate()==0?false:true;

			if (result) {
				String sql2 = " select cart_seq.currval from dual ";
				pstmt = conn.prepareStatement(sql2);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					c_seq = rs.getInt(1);   
				}
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return c_seq;
	}

	public boolean insertTotalCart(Connection conn, int cart_seq, String[] ids, String[] counts) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append("insert into totalcart (total_cart_seq, cart_seq, op_seq, op_cnt)values (total_cart_seq.nextval, ?, ?, ?)");
		PreparedStatement pstmt = null;
		ProductDTO dto = null;
		boolean result = false;

		try {
			pstmt = conn.prepareStatement(sql.toString());
			for (int i = 0; i < ids.length; i++) {
				pstmt.setInt(1, cart_seq);
				pstmt.setInt(2, Integer.parseInt(ids[i]));
				System.out.println("id:" + Integer.parseInt(ids[i]));
				pstmt.setInt(3, Integer.parseInt(counts[i]));
				System.out.println("cnt:" + Integer.parseInt(counts[i]));
				result = pstmt.executeUpdate()==0? false:true;
				if (!result) {
					break;
				}
			}
			pstmt.close();
		}catch (SQLException e) {
			pstmt.close();
			e.printStackTrace();
		}
		return result;
	}

	public List<ProductDTO> CartList(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from totalcart t ");
		sql.append(" join cart c on t.cart_seq = c.cart_seq ");
		sql.append(" join p_option o on t.op_seq = o.op_seq ");
		sql.append(" join p_product p on o.p_num = p.p_num  ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			ProductDTO dto = null;
			while (rs.next()) {
				dto = new ProductDTO();
				dto.setP_num(rs.getInt("p_num"));
				dto.setOp_cnt(rs.getInt("op_cnt"));
				dto.setCart_seq(rs.getInt("cart_seq"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				dto.setOp_name(rs.getString("op_name"));
				dto.setOp_price(rs.getInt("op_price"));
				dto.setOp_cnt(rs.getInt("op_cnt"));
				dto.setOp_min_cnt(rs.getInt("op_min_cnt"));
				dto.setOp_max_cnt(rs.getInt("op_max_cnt"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}try {
			pstmt.close();
			rs.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return list;
		
	}
	
	public boolean deleteCart(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" delete cart where cart_seq = ? ");
		return false;
		
	}
	/*
	 
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

      } catch (SQLException e) {
         e.printStackTrace();
      } 

      return cart;
   }*/
}
