package com.itbank.model;
/*
create table artist (
	    id          number          default artist_seq.nextval primary key,
	    name        varchar2(200)   not null,
	    company     varchar2(200)   ,
	    country     varchar2(100)   ,
	    member      varchar2(200)   not null,
	    debut       date            ,
	    type        varchar2(100)   not null,
	    profileImg  varchar2(500)   
	);
*/

import java.sql.Date;

public class ArtistDTO {
	private int id;
	private String name;
	private String company;
	private String country;
	private String member;
	private Date debut;
	private String type;
	private String profileImg;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getMember() {
		return member;
	}
	public void setMember(String member) {
		this.member = member;
	}
	public Date getDebut() {
		return debut;
	}
	public void setDebut(Date debut) {
		this.debut = debut;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	
	
	
}
