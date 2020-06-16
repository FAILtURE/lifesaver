package kr.co.lifesaver.board.service;

import java.util.Date;

public class LifeSaver_BoardVO {
	private int bno;
	private String category;
	private String writer;
	private String title;
	private String content;
	private Date regdate;
	
	public LifeSaver_BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public LifeSaver_BoardVO(int bno, String category, String writer, String title, String content, Date regdate) {
		super();
		this.bno = bno;
		this.category = category;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
