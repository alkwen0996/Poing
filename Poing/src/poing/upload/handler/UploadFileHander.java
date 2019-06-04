package poing.upload.handler;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import poing.member.MemberDTO;
import poing.mvc.CommandHandler;

public class UploadFileHander implements CommandHandler{
	final String FORMPATH = "popup/upload";
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getMethod().equalsIgnoreCase("GET")) {
			return FORMPATH;
		}
		else if (request.getMethod().equalsIgnoreCase("POST")) {
			System.out.println("UploadFileHander.java line 16 preocess POST");
			return processSubmit(request, response);
		}
		else {
			response.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processSubmit(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		MemberDTO authUser = (MemberDTO) session.getAttribute("authUser");
		if (authUser == null) {
			request.setAttribute("status", false);
			return FORMPATH;
		}
		String filePath = "/upload/uploadprofileimage/";
		String saveDirectory = request.getRealPath(filePath);
		System.out.println(saveDirectory);

		File saveDir = new File(saveDirectory);
		if (!saveDir.exists())
			saveDir.mkdirs();
		
		
		// 2. 최대크기 설정
		int maxPostSize = 1024 * 1024 * 10; // 10MB  단위 byte

		//3. 인코딩 방식 설정
		String encoding = "UTF-8";

		//4. 파일정책, 파일이름 충동시 덮어씌어짐으로 파일이름 뒤에 인덱스를 붙인다.
		FileRenamePolicy policy = new DefaultFileRenamePolicy();

		MultipartRequest mrequest;
		try {
			mrequest = new MultipartRequest(request //MultipartRequest를 만들기 위한 request
					, saveDirectory //저장 위치
					, maxPostSize //최대크기
					, encoding //인코딩 타입
					, policy);
			File uploadFile = mrequest.getFile("file"); // filename=upload
			int uploadFile_length = (int)uploadFile.length();
			String originalFileName = mrequest.getOriginalFileName("file");
			filePath = filePath + originalFileName;
			System.out.println("uploadFile_length: " + uploadFile_length);
			System.out.println("filePath: " + filePath);
			authUser.setM_img(filePath);
			byte[] file_byte = new byte[(int) uploadFile_length];
			FileInputStream fis = new FileInputStream(uploadFile);
			fis.read(file_byte, 0, uploadFile_length);
			String file_str = Base64.getEncoder().encodeToString(file_byte);
			request.setAttribute("file_str", file_str);
			request.setAttribute("content_type", mrequest.getContentType("file"));
			session.setAttribute("filePath", filePath);
			return FORMPATH;
		} catch (IOException e) {
			System.out.println("UploadFileHandler.java line 87 파일 업로드 실패");
			e.printStackTrace();
			request.setAttribute("status", false);
			return FORMPATH;
		} //파일 정책
	}

}
