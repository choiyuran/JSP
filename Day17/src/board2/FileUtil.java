package board2;

import java.io.File;
import java.io.IOException;


import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUtil {
	private static FileUtil instance = new FileUtil();
	public static FileUtil getInstance() {
		return instance;
	}
	private FileUtil() {}
	
	private String saveDirectory = "D:\\board";
	private int maxPostSize = 1024 * 1024 * 20;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	public BoardDTO getDTO(HttpServletRequest request) throws IOException {
		BoardDTO dto = null;
		
		File f = new File(saveDirectory);
		if(f.exists() == false) {
			f.mkdirs();
		}

		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		
		String writer = mpRequest.getParameter("writer");
		String title = mpRequest.getParameter("title");
		String content = mpRequest.getParameter("content");
		File image = mpRequest.getFile("image");
		String uploadFile = image != null ? image.getName() : null;
		String contentType = mpRequest.getContentType("image");
		
		boolean flag1 = title.equals("") == false;
		boolean flag2 = content.equals("") == false;
		boolean flag3 = image != null;
		boolean flag4 = flag3 && contentType.startsWith("image");
		
		if(flag1 && flag2 && flag3 && flag4) {
			dto = new BoardDTO();
			dto.setWriter(writer);
			dto.setContent(content);
			dto.setTitle(title);
			dto.setUploadFile("board/" + uploadFile);
		} 
		return dto;
	}

}
