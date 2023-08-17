package shopping;
/*
IDX    NOT NULL NUMBER        
NAME            VARCHAR2(50)  
PHONE           VACHAR2(100)       
USERID          VARCHAR2(50)  
BUY             VARCHAR2(100) 
PRICE           NUMBER  
*/
public class ShoppingDTO {
	private int idx;
	private String name;
	private String phone;
	private String userid;
	private String buy;
	private int price;
	
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
	public String getBuy() {
		return buy;
	}
	public void setBuy(String buy) {
		this.buy = buy;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
