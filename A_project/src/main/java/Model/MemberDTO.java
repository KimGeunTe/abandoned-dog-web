package Model;

public class MemberDTO {

	private String id;
	private String pw;
	private String name;
	private String rrn;
	private String gender;
	private String email;
	private String tel;
	private String address;
	

	
	public MemberDTO() {}


	public MemberDTO(String id, String pw, String name, String rrn, String gender, String email, String tel,
			String address) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.rrn = rrn;
		this.gender = gender;
		this.email = email;
		this.tel = tel;
		this.address = address;
	}


	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRrn() {
		return rrn;
	}


	public void setRrn(String rrn) {
		this.rrn = rrn;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}

}
