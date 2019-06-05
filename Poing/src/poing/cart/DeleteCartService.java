package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.CartDAO;

public class DeleteCartService {
   
   public boolean deleteCart(int cart_seq) {
      CartDAO cartdao = new CartDAO();
      boolean result = true;
      try(Connection conn = ConnectionProvider.getConnection()){
            result = cartdao.deleteCart(conn, cart_seq);
            
            return result;
      } catch (SQLException e) {
         throw new RuntimeException(e);
      }
   }
}