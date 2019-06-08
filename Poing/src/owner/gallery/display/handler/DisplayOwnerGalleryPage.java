package owner.gallery.display.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import owner.mvc.CommandHandler;

public class DisplayOwnerGalleryPage implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayOwnerGalleryPage process");
		
		return "gallery";
	}

}
