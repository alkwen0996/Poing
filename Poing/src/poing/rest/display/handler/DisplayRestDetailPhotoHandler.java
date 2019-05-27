package poing.rest.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;
import poing.rest.RestListDTO;
import poing.rest.display.service.RestDetailService;

public class DisplayRestDetailPhotoHandler implements CommandHandler
{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	try {
	RestDetailService service = new RestDetailService();
	int rest_seq = Integer.parseInt(request.getParameter("rest_seq"));
	RestListDTO dto = service.select(rest_seq);
	request.setAttribute("dto", dto);
	} catch (Exception e) { 
	e.printStackTrace();
	}
	return "restDetail_photo";
	}
	
}
