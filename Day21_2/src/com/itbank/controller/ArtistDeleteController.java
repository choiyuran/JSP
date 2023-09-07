package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.ArtistDAO;

public class ArtistDeleteController extends Controller{
	private ArtistDAO dao = ArtistDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			dao.delete(Integer.parseInt(id));
		}
		return "redirect:/artist/list";
	}
	
}
