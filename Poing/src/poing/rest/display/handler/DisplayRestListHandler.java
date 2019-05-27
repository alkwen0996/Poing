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
	System.out.println(1);
	try {
	RestListService service = new RestListService();
	List<RestListDTO> list = service.select();
	request.setAttribute("list", list);
	} catch (Exception e) { 
	e.printStackTrace();
	}
	return "rest/restList";
	}
	
}
