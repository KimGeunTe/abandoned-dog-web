package Model;

public class AdtListDTO {
	
	private int SerialNum;
	private int RgstDate;
	private String name;
	private String kind;
	
	public AdtListDTO(int serialNum, int rgstDate, String name, String kind) {
		super();
		SerialNum = serialNum;
		RgstDate = rgstDate;
		this.name = name;
		this.kind = kind;
	}

	public AdtListDTO() {
		super();
	}

	public int getSerialNum() {
		return SerialNum;
	}

	public void setSerialNum(int serialNum) {
		SerialNum = serialNum;
	}

	public int getRgstDate() {
		return RgstDate;
	}

	public void setRgstDate(int rgstDate) {
		RgstDate = rgstDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}
	
	

}
