package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.ArtistDTO;
import com.itbank.repository.ArtistDAO;

public class ArtistViewController extends Controller {
	private ArtistDAO dao = ArtistDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			int param = Integer.parseInt(id);
			ArtistDTO dto = dao.selectOne(param);
			request.setAttribute("dto", dto);
		}
		return "artist/view";
	}
}
