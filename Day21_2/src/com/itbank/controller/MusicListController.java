package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.MusicDTO;
import com.itbank.repository.MusicDAO;

public class MusicListController extends Controller {
	private MusicDAO dao = MusicDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			int album_id = Integer.parseInt(id);
			List<MusicDTO> list = dao.selectAll(album_id);
			request.setAttribute("list", list);
		}
		return "music/list";
	}
}
