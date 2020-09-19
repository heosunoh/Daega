package daega.web.user.vo;

public class User {
	private String userinfo_id;
	private String userinfo_password;
	private String checkPw;
	private String userinfo_name;
	private String userinfo_nickname;
	private String userinfo_email;
	private int userinfo_grade;
	private String userinfo_auth;
	public String getUserinfo_id() {
		return userinfo_id;
	}
	public void setUserinfo_id(String userinfo_id) {
		this.userinfo_id = userinfo_id;
	}
	public String getUserinfo_password() {
		return userinfo_password;
	}
	public void setUserinfo_password(String userinfo_password) {
		this.userinfo_password = userinfo_password;
	}
	public String getCheckPw() {
		return checkPw;
	}
	public void setCheckPw(String checkPw) {
		this.checkPw = checkPw;
	}
	public String getUserinfo_name() {
		return userinfo_name;
	}
	public void setUserinfo_name(String userinfo_name) {
		this.userinfo_name = userinfo_name;
	}
	public String getUserinfo_nickname() {
		return userinfo_nickname;
	}
	public void setUserinfo_nickname(String userinfo_nickname) {
		this.userinfo_nickname = userinfo_nickname;
	}
	public String getUserinfo_email() {
		return userinfo_email;
	}
	public void setUserinfo_email(String userinfo_email) {
		this.userinfo_email = userinfo_email;
	}
	public int getUserinfo_grade() {
		return userinfo_grade;
	}
	public void setUserinfo_grade(int userinfo_grade) {
		this.userinfo_grade = userinfo_grade;
	}
	public String getUserinfo_auth() {
		return userinfo_auth;
	}
	public void setUserinfo_auth(String userinfo_auth) {
		this.userinfo_auth = userinfo_auth;
	}
	public boolean isPwEqualToCheckPw() {
		// TODO Auto-generated method stub
		return userinfo_password.equals(checkPw);
	}
}
	