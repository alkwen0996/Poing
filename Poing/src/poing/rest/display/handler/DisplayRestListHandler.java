package poing.rest.display.handler;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.rest.RestListDTO;
import poing.rest.display.service.RestListService;

public class DisplayRestListHandler implements CommandHandler
{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			RestListService service = new RestListService();

			String loc_code = request.getParameter("loc_code")==null?null:request.getParameter("loc_code");
			String food_type = request.getParameter("food_type")==null?null:request.getParameter("food_type");
			String searchWord = request.getParameter("searchWord")==null?null:request.getParameter("searchWord");

			if (loc_code!=null) {

			}
			List<RestListDTO> list = service.select();
			request.setAttribute("list", list);
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return "rest/restList";
	}
}