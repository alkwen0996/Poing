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
import poing.product.display.service.DisplayOptionService;
import poing.product.display.service.DisplayProductDetailService;


public class DisplayProductDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		OptionDAO odao = new OptionDAO();
		int tic_seq = Integer.parseInt(request.getParameter("tic_seq"));
		int totalCount = odao.getTotalCount(tic_seq);
		
		try {
			DisplayProductDetailService service = new DisplayProductDetailService();
			DisplayOptionService oservice = new DisplayOptionService();
			List<OptionDTO> pp = oservice.select(tic_seq);
			
//			ProductDTO dto2 = service.selectProductDetail(tic_seq);
//			request.setAttribute("dto2", dto2);   프로덕트 상세부분 쪽
			
			List<ProductDTO> photoList = (List<ProductDTO>) service.selectRestPhotoImg(tic_seq);
			ProductDTO dto = service.select(tic_seq);
			MemberDTO mdto = (MemberDTO)request.getSession().getAttribute("authUser");
	
			
			int member_num;
			if(mdto==null) {dto = service.select(tic_seq);
			} else {
				member_num = mdto.getM_seq();
				dto = service.select(tic_seq,member_num);
			}
			
			
			ArrayList<QuestionDTO> list_question = service.select_question(tic_seq);// QnA
			
			
			request.setAttribute("list_question", list_question);
			request.setAttribute("photoList", photoList);
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
