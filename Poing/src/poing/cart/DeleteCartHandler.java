package poing.cart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;

public class DeleteCartHandler implements CommandHandler{

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      DeleteCartService service = new DeleteCartService();
      int cart_seq = Integer.parseInt(request.getParameter("id"));
      System.out.println(cart_seq);
      boolean result = service.deleteCart(cart_seq);
      return "product/productCart";
   }

}