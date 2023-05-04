package Model;

public class CommentDTO {
	
	int cmt_num;
	String content;
	String date;
	String writer;
	
	
	
	
	public CommentDTO(String content, String writer) {
		super();
		this.content = content;
		this.writer = writer;
	}
	
	


	public CommentDTO(String content, String date, String writer) {
		super();
		this.content = content;
		this.date = date;
		this.writer = writer;
	}




	public CommentDTO(int cmt_num, String content, String date, String writer) {
		super();
		this.cmt_num = cmt_num;
		this.content = content;
		this.date = date;
		this.writer = writer;
	}
	
	
	public int getCmt_num() {
		return cmt_num;
	}
	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	
	
	
	
	
	

}
