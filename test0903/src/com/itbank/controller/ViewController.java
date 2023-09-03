package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

public class ViewController implements Controller{
	private BoardDAO dao = BoardDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		if(idx != null) {
			int i = Integer.parseInt(idx);
			BoardDTO dto = dao.selectOne(i);
			request.setAttribute("dto", dto);
			return "view";
		}
		return "redirect:/board";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		return null;
	}

}
