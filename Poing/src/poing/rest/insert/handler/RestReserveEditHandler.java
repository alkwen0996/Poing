package poing.rest.insert.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.mvc.CommandHandler;

public class RestReserveEditHandler implements CommandHandler
{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	return "rest/ajax/restReserveditAjax";
	}
	
}
