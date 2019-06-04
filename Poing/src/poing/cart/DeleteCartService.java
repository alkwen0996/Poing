package poing.cart;

import java.sql.Connection;
import java.sql.SQLException;

import com.util.ConnectionProvider;

import poing.product.CartDAO;

public class DeleteCartService {
   
   public boolean deleteCart(int cart_seq) {
      CartDAO cartdao = new CartDAO();
      boolean result2 = true;
      try(Connection conn = ConnectionProvider.getConnection()){
            result2 = cartdao.deleteCart(conn, cart_seq);
            
            return result2;
      } catch (SQLException e) {
         throw new RuntimeException(e);
      }
   }
}