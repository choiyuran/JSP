package member;
/*
 	IDX    NOT NULL NUMBER        
	NAME   NOT NULL VARCHAR2(100) 
	PHONE  NOT NULL VARCHAR2(100) 
	USERID NOT NULL VARCHAR2(100) 
	USERPW NOT NULL VARCHAR2(100) 
*/
public class MemberDTO {
	private int idx;
	private String name;
	private String phone;
	private String userid;
	private String userpw;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
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
	
	
}
