package ex01;

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
	// 싱글톤 객체를 생성하는 시점에서 한번 체크함
	private FileUtil() {}

	// 프로젝트 내부 폴더가 아니라, 특정 위치에 파일을 업로드 하도록 지정한다
	private String saveDirectory = "C:\\upload";
	private int maxPostSize = 1024 * 1024 * 20;
	private String encoding = "UTF-8";
	private DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	// 파일 이름을 반환하고 파일을 업로드 하기 위한 함수
	// 서버를 재시작하면 업로드 했던 파일이 다 사라지기 때문에 외부에 저장하는 곳을 둔다
	public String getFileName(HttpServletRequest request) throws IOException {
		String fileName = null;
		
		File dir = new File(saveDirectory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
		
		MultipartRequest mpRequest = new MultipartRequest(
				request, saveDirectory, maxPostSize, encoding, policy);
		
		File f = mpRequest.getFile("uploadFile");
		fileName = f.getName();				// 업로드된 파일의 이름
//		fileName= f.getAbsolutePath();		// 업로드된 파일의 절대경로
		
		System.out.println(f.getName());
		System.out.println(f.getAbsolutePath());
		
		return fileName;
	}

}
