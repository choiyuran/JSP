package board_file;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUtil {
	private static FileUtil instance;

	public static FileUtil getInstance() {
		return instance;
	}
	private FileUtil() {}
	
	private String saveDirectory = null;
	private int maxPostSize = 1024 * 1024 * 10;
	private String encoding =  "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	public BoardDTO getDTO(HttpServletRequest request) throws IOException {
		BoardDTO dto = null;
		if(saveDirectory == null) {
			ServletContext application = request.getServletContext();
			saveDirectory = application.getRealPath("/upload");
			File dir = new File(saveDirectory);
			dir.mkdirs();
		}
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		

		String title = mpRequest.getParameter("title");
		String content = mpRequest.getParameter("content");
		File profile = mpRequest.getFile("profile");
		String filePath = profile != null ? profile.getName() : null;
		String contentType = mpRequest.getContentType("profile");
		
		boolean flag1 = title.equals("") == false;
		boolean flag2 = content.equals("") == false;
		boolean flag3 = profile != null;
		boolean flag4 = flag3 && contentType.startsWith("image");
		
		if(flag1 && flag2 && flag3 && flag4) {
			dto = new BoardDTO();
			dto.setTitle(title);
			dto.setContent(content);
			dto.setFilePath("upload/" + filePath);
		}
		else {
			profile.delete();
		}
		return dto;
		
	}
}
