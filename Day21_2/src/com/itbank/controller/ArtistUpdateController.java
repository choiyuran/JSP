package com.itbank.controller;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itbank.model.ArtistDTO;
import com.itbank.repository.ArtistDAO;
import com.itbank.repository.ArtistFileUtil;

public class ArtistUpdateController extends Controller{
	private ArtistDAO dao = ArtistDAO.getInstance();
	private ArtistFileUtil fileUtil = ArtistFileUtil.getInstance();
	
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		if(id != null) {
			ArtistDTO dto = dao.selectOne(Integer.parseInt(id));
			request.setAttribute("dto", dto);
		}
		return "artist/update";
	}
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ParseException {
		ArtistDTO dto = fileUtil.getArtistDTO(request);
		int row = dao.update(dto);
		System.out.println(row + "행이 수정되었습니다");
		return "redirect:/artist/list";
	}
}
