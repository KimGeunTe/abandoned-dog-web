package Model;

public class BoardDTO {
	
	private int number;
	private String title;
	private String writer;
	private String time;
	private String content;
	
	public BoardDTO() {}
	
	public BoardDTO(String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
	}
	
	public BoardDTO(int number, String title, String writer, String content) {
		this.number = number;
		this.title = title;
		this.writer = writer;
		this.content = content;
	}



	public BoardDTO(int number, String title, String writer, String time, String content) {
		this.number = number;
		this.title = title;
		this.writer = writer;
		this.time = time;
		this.content = content;
	}



	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
