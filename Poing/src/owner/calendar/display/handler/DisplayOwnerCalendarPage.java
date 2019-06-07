package owner.calendar.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import owner.mvc.CommandHandler;

public class DisplayOwnerCalendarPage implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayOwnerCalendarPage process");
		
		return "calendar";
	}

}
