package Model;

public class ProductDTO {
	
	private int pro_seq;
	private String pro_name;
	private int pro_price;
	private String pro_desc;
	private String pro_img;
	
	public ProductDTO(int pro_seq, String pro_name, int pro_price, String pro_desc, String pro_img) {
		this.pro_seq = pro_seq;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_desc = pro_desc;
		this.pro_img = pro_img;
	}
	
	public ProductDTO(int pro_seq, String pro_name, int pro_price, String pro_desc) {
		this.pro_seq = pro_seq;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_desc = pro_desc;
	}

	
	public ProductDTO(String pro_name, int pro_price, String pro_desc) {
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_desc = pro_desc;
	}

	public ProductDTO() {
	}

	public int getPro_seq() {
		return pro_seq;
	}

	public void setPro_seq(int pro_seq) {
		this.pro_seq = pro_seq;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public int getPro_price() {
		return pro_price;
	}

	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}

	public String getPro_desc() {
		return pro_desc;
	}

	public void setPro_desc(String pro_desc) {
		this.pro_desc = pro_desc;
	}

	public String getPro_img() {
		return pro_img;
	}

	public void setPro_img(String pro_img) {
		this.pro_img = pro_img;
	}
}
