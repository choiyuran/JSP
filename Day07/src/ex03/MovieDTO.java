package ex03;

/*
 	MOVIE_RANK      NUMBER        
	TITLE           VARCHAR2(100) 
	OPENNINGDATE    VARCHAR2(100) 
	RESERVERATE     NUMBER(3,1)   
	RESERVECOUNT    NUMBER        
	WATCHCOUNT      NUMBER    
*/
public class MovieDTO {
	// 데이터베이스 컬럼과 같은 이름의 필드
	// getter/setter
	private int movie_rank;
	private String title;
	private String openningDate;
	private double reserveRate;
	private int reserveCount;
	private int watchCount;
	
	public int getMovie_rank() {
		return movie_rank;
	}
	public void setMovie_rank(int movie_rank) {
		this.movie_rank = movie_rank;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getOpenningDate() {
		return openningDate;
	}
	public void setOpenningDate(String openningDate) {
		this.openningDate = openningDate;
	}
	public double getReserveRate() {
		return reserveRate;
	}
	public void setReserveRate(double reserveRate) {
		this.reserveRate = reserveRate;
	}
	public int getReserveCount() {
		return reserveCount;
	}
	public void setReserveCount(int reserveCount) {
		this.reserveCount = reserveCount;
	}
	public int getWatchCount() {
		return watchCount;
	}
	public void setWatchCount(int watchCount) {
		this.watchCount = watchCount;
	}
	
	
	
}
