package com.itbank.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.MusicDAO;

public class MusicAddController extends Controller {
	private MusicDAO dao = MusicDAO.getInstance();
	
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "music/add";
	}
	
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		int row = dao.insert(dao.getDTO(request));
		System.out.println(row + "행이 삽입되었습니다");
		return "redirect:/music/list";
	}
}
