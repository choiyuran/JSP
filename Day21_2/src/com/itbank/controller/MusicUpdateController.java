package com.itbank.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.MusicDTO;
import com.itbank.repository.MusicDAO;

public class MusicUpdateController extends Controller {
	private MusicDAO dao = MusicDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			int i = Integer.parseInt(id);
			MusicDTO dto = dao.selectOne(i);
			request.setAttribute("dto", dto);
		}
		return "music/update";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int row = dao.update(dao.getDTO(request));
		System.out.println(row + "행이 업데이트 되었습니다");
		return "redirect:/music/list";
	}
}
