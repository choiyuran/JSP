package board_file;
/*
	IDX      NOT NULL NUMBER        
	WRITER   NOT NULL VARCHAR2(100) 
	TITLE    NOT NULL VARCHAR2(100) 
	CONTENT  NOT NULL CLOB          
	FILEPATH NOT NULL VARCHAR2(500) 
	WDATE             DATE  
*/

import java.sql.Date;

public class BoardDTO {
	private int idx;
	private String writer;
	private String title;
	private String content;
	private String filePath;
	private Date wdate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
	
}
