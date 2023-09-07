package com.itbank.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.AlbumDTO;
import com.itbank.model.ArtistDTO;
import com.itbank.repository.AlbumDAO;
import com.itbank.repository.ArtistDAO;

public class AlbumListController extends Controller {
	private AlbumDAO dao = AlbumDAO.getInstance();
	private ArtistDAO artistdao = ArtistDAO.getInstance(); 
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<AlbumDTO> list = dao.selectAll();
		List<ArtistDTO> list2 = artistdao.selectAll();
//		List<ArtistDTO> list2 = artistdao.getArtistName();
		
		
		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		return "/album/list";
	}
}
