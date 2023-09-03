package org.springframework.web.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.controller.Controller;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String prefix = "/WEB-INF/views/";
	private final String suffix = ".jsp";
	
	private Map<String, Controller> map = new HashMap<>();
	
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		Properties pro = new Properties();
		FileInputStream fis = null;
		
		String configFilePath = getServletContext().getRealPath(configFile);
		try {
			fis = new FileInputStream(configFilePath);
			pro.load(fis);
		} catch(IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if(fis != null) fis.close();
			} catch(Exception e) {}
		}
	
		Iterator<Object> it = pro.keySet().iterator();
		while(it.hasNext()) {
			String command = (String)it.next();
			String handlerClassName = pro.getProperty(command);
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				Controller handlerInstance = (Controller)handlerClass.newInstance();
				map.put(command, handlerInstance);
			} catch(ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				System.out.println("\n\t [ 컨트롤러를 불러오는데 실패했습니다 ]\n");
				return;
			} 
		}
		System.out.println("\n 서블릿 초기화 성공\n");
	}
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getRequestURI();
		if(command.indexOf(request.getContextPath()) == 0) {
			command = command.substring(request.getContextPath().length());
		}
		Controller controller = map.get(command);
		
		String viewName = null;
		try {
			switch(request.getMethod()) {
			case "GET":		viewName  = controller.doGet(request, response); break;
			case "POST":	viewName  = controller.doPost(request, response); break;
			}
		} catch(Throwable e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
		if(viewName != null) {
			if(viewName.startsWith("redirect:")) {
				viewName = viewName.substring("redirect:".length());
				response.sendRedirect(request.getContextPath() + viewName);
			}
			else {
				viewName = prefix + viewName + suffix;
				request.getRequestDispatcher(viewName).forward(request, response);				
			}
		}
	}
	
}
