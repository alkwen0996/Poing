package poing.upload.handler;

import java.io.File;
import java.io.FileInputStream;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import poing.mvc.CommandHandler;

public class UploadReviewImageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String saveDirectory = request.getRealPath("/upload/reivewImages");
		System.out.println(saveDirectory);

		File saveDir = new File(saveDirectory);
		if (!saveDir.exists())
			saveDir.mkdirs();

		// 2. 최대크기 설정
		int maxPostSize = 1024 * 1024 * 5; // 5MB  단위 byte

		//3. 인코딩 방식 설정
		String encoding = "UTF-8";

		//4. 파일정책, 파일이름 충동시 덮어씌어짐으로 파일이름 뒤에 인덱스를 붙인다.
		FileRenamePolicy policy = new DefaultFileRenamePolicy();

		MultipartRequest mrequest = new MultipartRequest(request //MultipartRequest를 만들기 위한 request
				, saveDirectory //저장 위치
				, maxPostSize //최대크기
				, encoding //인코딩 타입
				, policy); //파일 정책
		File uploadFile = mrequest.getFile("image"); // filename=upload
		int uploadFile_length = (int)uploadFile.length();
		String originalFileName = mrequest.getOriginalFileName("image");
		String filesystemName = mrequest.getFilesystemName("image");
		
		System.out.println("uploadFile_length: " + uploadFile_length);
		System.out.println("filesystemName: " + filesystemName);
		
		byte[] file_byte = new byte[(int) uploadFile_length];
		FileInputStream fis = new FileInputStream(uploadFile);
		fis.read(file_byte, 0, uploadFile_length);
		String file_str = Base64.getEncoder().encodeToString(file_byte);
		request.setAttribute("file_str", file_str);
		request.setAttribute("content_type", mrequest.getContentType("image"));
				
		
		
		return null;
	}

}
