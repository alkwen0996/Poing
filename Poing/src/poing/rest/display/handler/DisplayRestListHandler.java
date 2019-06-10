package poing.rest.display.handler;

import java.util.List;


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

			
//			pop=2&add=104,107&searchWord=고기&foodType=11,55
					
			
			String pop = request.getParameter("pop");
			String loc_code = request.getParameter("loc_code");
			String food_type = request.getParameter("food_type");
			String searchWord = request.getParameter("searchWord");
			List<RestListDTO> list = null;
			
			if(pop!=null || loc_code!=null || food_type!=null || searchWord!=null ) list = service.select(pop, loc_code, food_type, searchWord);
			else list = service.select();
			request.setAttribute("list", list);
		} catch (Exception e) { 
			e.printStackTrace();
		}
		return "rest/restList";
	}
}
