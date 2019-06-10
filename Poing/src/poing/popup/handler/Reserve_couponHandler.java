package poing.popup.handler;

import java.util.ArrayList;
import java.util.Hashtable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;


import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayProductDetailService;


public class Reserve_couponHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			
		   String [] ids = request.getParameterValues("id");
		   String [] counts = request.getParameterValues("count");
		   

		   
//		   Hashtable<Integer, Integer> ht = new Hashtable<>();
//		   for(int i=0; i < ids.length ; i++)
//		       ht.put( Integer.parseInt(ids[i]), Integer.parseInt(counts[i]) );
		   
			DisplayProductDetailService service = new DisplayProductDetailService();
			JSONArray ja = new JSONArray();
			JSONObject js = null;
			for (int i = 0; i < ids.length; i++) {
				js = new JSONObject();
				js.put("ids", ids[i]);
				js.put("counts", counts[i]);
				ja.add(js);
			}
			
			int p_num = Integer.parseInt(request.getParameter("p_num"));
			ProductDTO dto = service.select(p_num);
			request.setAttribute("ja", ja);
			request.setAttribute("dto", dto);
		} catch (Exception e) {
				e.printStackTrace();
		}
		return "popup/reserve_coupon";
	}


}

/*
		출력<br>
		<c:forEach items="${ ht }" var="entry">
		   id=${ entry.key }/count=${ entry.value }<br>
		</c:forEach>*/