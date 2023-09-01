package ex05;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05/delete")
public class Ex05DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private BoardDAO dao = BoardDAO.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		int i;
		if(idx != null) {
			i = Integer.parseInt(idx);
			System.out.println("삭제할 idx : " + i);
			int row = dao.delete(i);
			System.out.println(row + "행이 삭제되었습니다");
		}
		else {
			System.out.println("삭제할 idx가 지정되지 않았습니다");
		}
		
		response.sendRedirect(request.getContextPath() + "/ex05");
	}

}
