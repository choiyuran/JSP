package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.BoardDTO;
import com.itbank.repository.BoardDAO;

public class WriteController implements Controller {
	private BoardDAO dao = BoardDAO.getInstance();
	
	private BoardDTO getDTO(HttpServletRequest request) {
		BoardDTO dto = new BoardDTO();
		
		dto.setContent(request.getParameter("content"));
		dto.setTitle(request.getParameter("title"));
		dto.setWriter(request.getParameter("writer"));
		return dto;
	}
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "write";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BoardDTO dto = getDTO(request);
		if(dto != null) {
			int row = dao.insert(dto);
			System.out.println(row + "행이 삽입되었습니다");
		}
		return "redirect:/board";
	}
	
}
