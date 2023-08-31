package board;

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
	
	private String saveDirectory = "E:\\board2_upload_file";
	private int maxPostSize = 1024 * 1024 * 20;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

	private FileUtil() {
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	public BoardDTO getDTO(HttpServletRequest request) throws IOException {
		BoardDTO dto = null;
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		String idx = mpRequest.getParameter("idx");
		String title = mpRequest.getParameter("title");
		String writer = mpRequest.getParameter("writer");
		String content = mpRequest.getParameter("content");
		File uploadFile = mpRequest.getFile("uploadFile");
		
		System.out.println(idx);
		System.out.println(title);
		System.out.println(writer);
		System.out.println(content);
		System.out.println(uploadFile);
		
		dto = new BoardDTO();
		dto.setTitle(title);
		dto.setWriter(writer);
		dto.setContent(content);
		if(uploadFile != null) {		
			dto.setUploadFile(uploadFile.getName());				
		}
		if(idx != null) {
			dto.setIdx(Integer.parseInt(idx));
		}
		return dto;
	}
	
	// 파일 삭제
	public boolean removeFile(String uploadFile) {
		boolean flag = false;
		File f = new File(saveDirectory, uploadFile);
		if(f.exists()) {
			flag = f.delete();
		}
		return flag;
	}
}
