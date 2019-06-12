package admin.mypage.changeinfo.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminDTO;
import admin.mvc.CommandHandler;
import admin.mypage.changeinfo.service.ChangeAdminInfoService;


public class ChangeAdminInfoHandler implements CommandHandler{
	ChangeAdminInfoService changeAdminInfoService = new ChangeAdminInfoService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("ChangeAdminInfoHandler process");
		
		AdminDTO authAdmin = (AdminDTO) request.getSession().getAttribute("authAdmin");
		
		if (authAdmin == null) {
			System.out.println("세션 정보 부족");
			response.sendRedirect("/Poing/admin/login.ad");
			return null;
		}
		
		int e_seq = authAdmin.getE_seq();
		String e_name = request.getParameter("e_name");
		String e_pw = request.getParameter("e_pw");
		changeAdminInfoService.changeAdminInfo(e_name, e_pw, e_seq);
		
		
		response.sendRedirect("/Poing/admin/editer_mypage.ad");
		return null;
	}
}
