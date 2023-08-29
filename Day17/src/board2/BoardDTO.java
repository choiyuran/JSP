package board2;
	/*
	create table board2(
		idx		number		default board2_seq.nextval primary key,
		title		varchar2(100) 	not null,
		writer		varchar2(100)	not null,
		content		clob		not null,
		uploadFile	varchar2(500)	,
		wdate		date		default sysdate,
	
		constraint borad2_member_fk
		foreign key(writer)
		references member(userid)
	);
*/

import java.sql.Date;

public class BoardDTO {
	private int idx;
	private String title;
	private String writer;
	private String content;
	private String uploadFile;	// DB 테이블에 저장된 파일의 이름
	private Date wdate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(String uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	
	
	
}
