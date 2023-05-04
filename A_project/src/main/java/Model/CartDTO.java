package Model;

import java.io.Serializable;

public class CartDTO implements Serializable {

	String img;		// 이미지 경로 
	String name;	// 과일명
	 int price;		// 가격
	 int cnt;		// 수량
	 int totalSum; // 총 가격
	 
	public int getTotalSum() {
		return totalSum;
	}




	public CartDTO(String name, int price) {
		super();
		this.name = name;
		this.price = price;
	}




	public void setTotalSum(int totalSum) {
		this.totalSum = totalSum;
	}




	public CartDTO() {
		super();
	}


	
	
	public CartDTO(String img, String name, int price, int cnt) {
		super();
		this.img = img;
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}

	public CartDTO( String name, int price, int cnt) {
		super();
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	
	
	public String getImg() {
		return img;
	}
	
	
	
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	 
	 
	 
	
	
	
	
}
