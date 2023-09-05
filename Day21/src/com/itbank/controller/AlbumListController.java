package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.repository.AlbumDAO;

public class AlbumListController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<AlbumDTO> list = dao.selectAll();
		request.setAttribute("list", list);
		return "/album/list";
	}
}
