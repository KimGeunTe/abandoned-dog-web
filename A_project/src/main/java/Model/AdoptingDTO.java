package Model;

public class AdoptingDTO {
	
	private String name;
	private String gender;
	private int age;
	private String tel;
	private String email;
	private String city;
	private String merry;
	private String job;
	private String serialNum;
	
	
	public AdoptingDTO(String name, String gender, int age, String tel, String email, String city, String merry,
			String job, String serialNum) {
		super();
		this.name = name;
		this.gender = gender;
		this.age = age;
		this.tel = tel;
		this.email = email;
		this.city = city;
		this.merry = merry;
		this.job = job;
		this.serialNum = serialNum;
	}


	public AdoptingDTO() {
		super();
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getMerry() {
		return merry;
	}


	public void setMerry(String merry) {
		this.merry = merry;
	}


	public String getJob() {
		return job;
	}


	public void setJob(String job) {
		this.job = job;
	}


	public String getSerialNum() {
		return serialNum;
	}


	public void setSerialNum(String serialNum) {
		this.serialNum = serialNum;
	}



	
	
	

}
