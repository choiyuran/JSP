package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.MusicDTO;
import com.itbank.repository.MusicDAO;

public class MusicViewController extends Controller {
	private MusicDAO dao = MusicDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			int id2 = Integer.parseInt(id);
			dao.viewCount(id2);
			MusicDTO dto = dao.selectOne(id2);			
			request.setAttribute("dto", dto);
		}
		return "music/view";
	}
}
