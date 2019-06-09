package poing.product.display.handler;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;
import poing.product.OptionDAO;
import poing.product.OptionDTO;
import poing.product.ProductDTO;
import poing.product.display.service.DisplayOptionService;
import poing.product.display.service.DisplayProductDetailService;


public class DisplayProductDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		OptionDAO odao = new OptionDAO();
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		//int totalCount = odao.getTotalCount(p_num);
		try {
			DisplayProductDetailService service = new DisplayProductDetailService();
			DisplayOptionService oservice = new DisplayOptionService();
			List<OptionDTO> pp = oservice.select(p_num);
			p_num = Integer.parseInt(request.getParameter("p_num"));
			
			ProductDTO dto2 = service.selectProductDetail(p_num);
			request.setAttribute("dto2", dto2);
			
			ProductDTO dto = service.select(p_num);
			MemberDTO mdto = (MemberDTO)request.getSession().getAttribute("authUser");
			int member_num;
			if(mdto==null) {dto = service.select(p_num);
			} else {
				member_num = mdto.getM_no();
				dto = service.select(p_num,member_num);
			}
			
			request.setAttribute("dto", dto);
			request.setAttribute("pp", pp);
		} catch (Exception e) { 
				e.printStackTrace();
		}
		return "product/productDetail";
	}

	public static void main(String[] args) {
	}

}
