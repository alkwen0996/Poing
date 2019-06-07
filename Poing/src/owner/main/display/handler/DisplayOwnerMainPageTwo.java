package owner.main.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DisplayOwnerMainPageTwo implements owner.mvc.CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DIsplayOwnerMainPage2 proccess");
		
		return "index2";
	}

}
