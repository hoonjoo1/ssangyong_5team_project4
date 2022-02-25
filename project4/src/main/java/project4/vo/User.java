package project4.vo;

public class User {
	private int userkey;
	private String name;
	private String nickname;
	private String id;
	private String password;
	private String phonenum;
	private String birthdat;
	private String loc;
	private int grade;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userkey, String name, String nickname, String id, String password, String phonenum,
			String birthdat, String loc, int grade) {
		super();
		this.userkey = userkey;
		this.name = name;
		this.nickname = nickname;
		this.id = id;
		this.password = password;
		this.phonenum = phonenum;
		this.birthdat = birthdat;
		this.loc = loc;
		this.grade = grade;
	}
	public int getUserkey() {
		return userkey;
	}
	public void setUserkey(int userkey) {
		this.userkey = userkey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getBirthdat() {
		return birthdat;
	}
	public void setBirthdat(String birthdat) {
		this.birthdat = birthdat;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
	
}
