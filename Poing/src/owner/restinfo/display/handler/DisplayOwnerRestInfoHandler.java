package owner.restinfo.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import owner.OwnerDTO;
import owner.mvc.CommandHandler;
import owner.restinfo.display.service.DisplayOwnerRestInfoService;
import poing.rest.RestListDTO;

public class DisplayOwnerRestInfoHandler implements CommandHandler{
	DisplayOwnerRestInfoService displayRestInfoService = new DisplayOwnerRestInfoService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		OwnerDTO owner = (OwnerDTO)request.getSession().getAttribute("authOwner");
		int rest_seq = owner.getRest_seq();
		DisplayOwnerRestInfoService service = new DisplayOwnerRestInfoService();
		RestListDTO dto = service.selectRestInfo(rest_seq);
		request.setAttribute("dto", dto);
		
		return "rest_info";
	}

}
