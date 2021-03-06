package owner.restimage.add.handler;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import owner.OwnerDTO;
import owner.mvc.CommandHandler;
import owner.restimage.add.service.AddOwnerRestImageService;

public class AddOwnerRestImageHandler implements CommandHandler{
	AddOwnerRestImageService addOwnerRestImageService = new AddOwnerRestImageService();
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("DisplayOwnerGalleryPage process");
		
		OwnerDTO authOwner = (OwnerDTO) request.getSession().getAttribute("authOwner");
		if (authOwner == null) {
			System.out.println("authOwner is null");
			response.sendRedirect("/Poing/owner/login.ow");
			return null;
		}
		String realPath = "/upload/restimage/";
		String saveDirectory = request.getRealPath(realPath);
		//String saveDirectory = realPath;
		System.out.println("saveDirectory: "+saveDirectory);

		File saveDir = new File(saveDirectory);
		if (!saveDir.exists())
			saveDir.mkdirs();
		
		// 2. 최대크기 설정
		int maxPostSize = 1024 * 1024 * 5; // 5MB  단위 byte

		//3. 인코딩 방식 설정
		String encoding = "UTF-8";

		//4. 파일정책, 파일이름 충동시 덮어씌어짐으로 파일이름 뒤에 인덱스를 붙인다.
		FileRenamePolicy policy = new DefaultFileRenamePolicy();

		//cos.jar파일에서 제공하는 MultipartRequest클래스
		// 객체 생성될 때 생성자의 파라미터값으로 예외 발생하지 않으면
		// 자동 파일 업로드 성공....
		// ServletInputStream sis= request.getInputStream();
		//  DataInputStream dis = new DataInputStream(sis); 
		// 과정을 생략해준다.
		MultipartRequest mrequest = null; 
		try {
			mrequest = new MultipartRequest(request //MultipartRequest를 만들기 위한 request
					, saveDirectory //저장 위치
					, maxPostSize //최대크기
					, encoding //인코딩 타입
					, policy); //파일 정책
			File uploadFile = mrequest.getFile("rest_img"); // filename=upload
			long uploadFile_length = uploadFile.length();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("사진 업로드 실패");
			response.sendRedirect("/Poing/owner/rest_image.ow");
			return null;
		}
		String originalFileName = mrequest.getOriginalFileName("rest_img");
		boolean result = addOwnerRestImageService.addRestImage(realPath+originalFileName, authOwner.getRest_seq());
		if (result) {
			System.out.println("사진 입력 성공");
			System.out.println(realPath+originalFileName);
		}
		response.sendRedirect("/Poing/owner/rest_image.ow");
		return null;
	}

}
