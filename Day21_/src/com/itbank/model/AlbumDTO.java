package com.itbank.model;
/*
	create table album (
		    id          number          default album_seq.nextval primary key,
		    artist_id   number          not null,
		    name        varchar2(200)   not null,
		    type        varchar2(100)   not null,
		    rDate       date            not null,
		    playTime    number          not null,
		    coverImg    varchar2(500),
		    
		    constraint album_artist_fk
		    foreign key (artist_id)
		    references artist(id)
		);
*/

import java.sql.Date;

public class AlbumDTO {
	private int id;
	private int artist_id;
	private String name;
	private String type;
	private Date rDate;
	private int playTime;
	private String coverImg;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getArtist_id() {
		return artist_id;
	}
	public void setArtist_id(int artist_id) {
		this.artist_id = artist_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
	}
	public int getPlayTime() {
		return playTime;
	}
	public void setPlayTime(int playTime) {
		this.playTime = playTime;
	}
	public String getCoverImg() {
		return coverImg;
	}
	public void setCoverImg(String coverImg) {
		this.coverImg = coverImg;
	}
	
	
}
