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
import poing.product.QuestionDTO;
import poing.product.ReplyDTO;
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
			
			
			ArrayList<QuestionDTO> list_question = null;// QnA
			ArrayList<ReplyDTO> list_reply = null;// QnA
			
			int member_num;
			if(mdto==null) {dto = service.select(p_num);
			} else {
				member_num = mdto.getM_seq();
				dto = service.select(p_num,member_num);
				
				list_question = service.select_question(p_num, member_num);// QnA
				list_reply = service.select_reply(p_num, member_num);// QnA
			}
			
			if(request.getParameter("tab") == "qna") {
				request.setAttribute("list_question", list_question);// QnA
				request.setAttribute("list_reply", list_reply);// QnA
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
