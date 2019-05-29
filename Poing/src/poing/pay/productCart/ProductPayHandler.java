package poing.pay.productCart;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.ProductPayService;

public class ProductPayHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
			ProductPayService service = new ProductPayService();
			int p_dc_money = Integer.parseInt(request.getParameter("p_dc_money"));
			int rp_seq = Integer.parseInt(request.getParameter("rp_seq"));
			int point = Integer.parseInt(request.getParameter("point"));
			String m_email = request.getParameter("m_email");
			System.out.println(point);//입력한값
			System.out.println(rp_seq);
			System.out.println(p_dc_money);
			System.out.println(m_email);
			boolean result = service.selectRp_seq(rp_seq, p_dc_money, m_email, point);
			System.out.println(result);
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("status", result);
		
		request.setAttribute("jsonData", jsonObject);
		return "productCart/checkCartUpdate";
		
	}
	
}
