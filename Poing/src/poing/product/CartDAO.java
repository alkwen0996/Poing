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

		sql.append(" insert into cart values (cart_seq.NEXTVAL, ?, 0, null, null) ") ;
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
		sql.append(" select distinct c.cart_seq, c.party_size, c.message, c.c_date, p.p_name, p.p_st_ed_date, p.p_num from cart c ");
		sql.append(" join totalcart t on t.cart_seq = c.cart_seq ");
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
				dto.setCart_seq(rs.getInt("cart_seq"));
				dto.setP_name(rs.getString("p_name"));
				dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
				dto.setMessage(rs.getString("message"));
				dto.setParty_size(rs.getInt("party_size"));
				dto.setC_date(rs.getString("c_date"));
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
	
	public List<ProductDTO> OptionList(Connection conn) {
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from p_option o ");
		sql.append(" join totalcart t on t.op_seq = o.op_seq ");
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<ProductDTO> option = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			ProductDTO dto = null;
			while (rs.next()) {
				dto = new ProductDTO();
				dto.setP_num(rs.getInt("p_num"));
				dto.setOp_seq(rs.getInt("op_seq"));
				dto.setOp_cnt(rs.getInt("op_cnt"));
				dto.setCart_seq(rs.getInt("cart_seq"));
				dto.setOp_name(rs.getString("op_name"));
				dto.setOp_price(rs.getInt("op_price"));
				dto.setOp_cnt(rs.getInt("op_cnt"));
				dto.setOp_min_cnt(rs.getInt("op_min_cnt"));
				dto.setOp_max_cnt(rs.getInt("op_max_cnt"));
				option.add(dto);
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
		return option;
		
	}
	
	
	
	 public boolean deleteCart(Connection conn, int cart_seq) throws SQLException {
	      StringBuffer sql = new StringBuffer();
	      
	      sql.append(" delete cart where cart_seq = ? ");
	      
	      PreparedStatement pstmt = null;
	      
	      boolean result = false;
	      pstmt = conn.prepareStatement(sql.toString());
	     
	      pstmt.setInt(1, cart_seq);
	     
	      result = pstmt.executeUpdate()==0? false:true;
	      pstmt.close();
	      conn.close();
	      return false;

	   }
	 
	 public boolean updateCart(Connection conn, int party_size, String message, String c_date, int cart_seq) {
		 StringBuffer sql = new StringBuffer();
		 sql.append(" update cart set party_size = ?, message = ?, c_date = ? where cart_seq = ? ");
		 PreparedStatement pstmt = null;
		 boolean result =  false;
		 try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, party_size);
			pstmt.setString(2, message);
			pstmt.setString(3, c_date);
			pstmt.setInt(4, cart_seq);
			result = pstmt.executeUpdate()==0? false:true;
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	 }
	 
	 public List<ProductDTO> selectoption(Connection conn, int cart_seq) {
			StringBuffer sql = new StringBuffer();
			sql.append(" select distinct c.cart_seq, c.party_size, c.message, c.c_date, p.p_name, p.p_st_ed_date, p.p_num from cart c ");
			sql.append(" join totalcart t on t.cart_seq = c.cart_seq ");
			sql.append(" join p_option o on t.op_seq = o.op_seq ");
			sql.append(" join p_product p on o.p_num = p.p_num  ");
			sql.append(" where c.cart_seq = ? ");
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<ProductDTO> list = new ArrayList<>();
			
			try {
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, cart_seq);
				rs = pstmt.executeQuery();
				ProductDTO dto = null;
				while (rs.next()) {
					dto = new ProductDTO();
					dto.setP_num(rs.getInt("p_num"));
					dto.setCart_seq(rs.getInt("cart_seq"));
					dto.setP_name(rs.getString("p_name"));
					dto.setP_st_ed_date(rs.getString("p_st_ed_date"));
					dto.setMessage(rs.getString("message"));
					dto.setParty_size(rs.getInt("party_size"));
					dto.setC_date(rs.getString("c_date"));
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
	 public List<ProductDTO> Selectoption(Connection conn, int cart_seq) {
			StringBuffer sql = new StringBuffer();
			sql.append(" select * from p_option o ");
			sql.append(" join totalcart t on t.op_seq = o.op_seq ");
			sql.append(" where t.cart_seq = ? ");
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			ArrayList<ProductDTO> option = new ArrayList<>();
			
			try {
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setInt(1, cart_seq);
				rs = pstmt.executeQuery();
				ProductDTO dto = null;
				while (rs.next()) {
					dto = new ProductDTO();
					dto.setP_num(rs.getInt("p_num"));
					dto.setOp_seq(rs.getInt("op_seq"));
					dto.setOp_cnt(rs.getInt("op_cnt"));
					dto.setCart_seq(rs.getInt("cart_seq"));
					dto.setOp_name(rs.getString("op_name"));
					dto.setOp_price(rs.getInt("op_price"));
					dto.setOp_cnt(rs.getInt("op_cnt"));
					dto.setOp_min_cnt(rs.getInt("op_min_cnt"));
					dto.setOp_max_cnt(rs.getInt("op_max_cnt"));
					option.add(dto);
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
			return option;
			
		}
	 
	 public boolean deleteOption(Connection conn, int cart_seq, int op_seq) throws SQLException {
	      StringBuffer sql = new StringBuffer();
	      
	      sql.append(" delete totalcart where cart_seq = ? and op_seq = ? ");
	      
	      PreparedStatement pstmt = null;
	      
	      boolean result = false;
	      try{
	    	  pstmt = conn.prepareStatement(sql.toString());
	    	  pstmt.setInt(1, cart_seq);
	    	  pstmt.setInt(2, op_seq);
	    	  result = pstmt.executeUpdate()==0? false:true;
	    	  pstmt.close();
	    	  conn.close();
	      } catch (SQLException e) {
		}
	     
	      return result;

	   }
	 
	 public boolean updateOption1(Connection conn, int cart_seq) {
		 StringBuffer sql = new StringBuffer();
		 sql.append(" delete from totalcart where cart_seq = ? ");
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 boolean result =  false;
		 try {
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, cart_seq);
			result = pstmt.executeUpdate()==0? false:true;
	
			pstmt.close();
			conn.close();
		} catch (SQLException e) {
			
		}
		return result;
	 }

	public boolean updateOption(Connection conn, int cart_seq, String[] op_seq, String[] op_cnt) throws SQLException {
		StringBuffer sql = new StringBuffer();
		sql.append(" insert into totalcart values(total_cart_seq.nextval, ?, ?, ?) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean result =  false;
		
		try {
			pstmt = conn.prepareStatement(sql.toString());
			for (int i = 0; i < op_seq.length; i++) {
			pstmt.setInt(1, cart_seq);
			pstmt.setInt(2, Integer.parseInt(op_seq[i]));
			pstmt.setInt(3, Integer.parseInt(op_cnt[i]));	
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
}
