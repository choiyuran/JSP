package com.itbank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.repository.AlbumDAO;
import com.itbank.repository.AlbumFileUtil;

public class AlbumDeleteController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			int row = dao.delete(Integer.parseInt(id));
			System.out.println(row + "행이 삭제되었습니다");
		}
		return "redirect:/album/list";
	}
}
