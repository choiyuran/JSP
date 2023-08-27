package members;
/*
	USERID   NOT NULL VARCHAR2(100) 
	USERPW   NOT NULL VARCHAR2(100) 
	USERNAME NOT NULL VARCHAR2(100) 
	EMAIL    NOT NULL VARCHAR2(100) 
	BIRTH             DATE  
*/

import java.sql.Date;

public class MemberDTO {
	private String userid;
	private String userpw;
	private String username;
	private String email;
	private Date birth;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	
	
}
