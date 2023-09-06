package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.repository.AlbumDAO;

public class AlbumViewController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		if(id != null) {
			int param = Integer.parseInt(id);
			AlbumDTO dto = dao.selectOne(param);
			request.setAttribute("dto", dto);
		}
		return "album/view";
	}
}
