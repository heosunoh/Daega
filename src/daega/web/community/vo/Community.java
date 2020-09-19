package daega.web.community.vo;

import java.sql.Timestamp;

public class Community {
	private int community_num;
	private String community_writer;
	private String community_subject;
	private Timestamp community_date;
	private int community_readcount;
	private String community_select;
	private String community_content;
	private String community_password;
	private String userinfo_id;
	
	public int getCommunity_num() {
		return community_num;
	}
	public void setCommunity_num(int community_num) {
		this.community_num = community_num;
	}
	public String getCommunity_writer() {
		return community_writer;
	}
	public void setCommunity_writer(String community_writer) {
		this.community_writer = community_writer;
	}
	public String getCommunity_subject() {
		return community_subject;
	}
	public void setCommunity_subject(String community_subject) {
		this.community_subject = community_subject;
	}
	public Timestamp getCommunity_date() {
		return community_date;
	}
	public void setCommunity_date(Timestamp community_date) {
		this.community_date = community_date;
	}
	public int getCommunity_readcount() {
		return community_readcount;
	}
	public void setCommunity_readcount(int community_readcount) {
		this.community_readcount = community_readcount;
	}
	public String getCommunity_select() {
		return community_select;
	}
	public void setCommunity_select(String community_select) {
		this.community_select = community_select;
	}
	public String getCommunity_content() {
		return community_content;
	}
	public void setCommunity_content(String community_content) {
		this.community_content = community_content;
	}
	public String getCommunity_password() {
		return community_password;
	}
	public void setCommunity_password(String community_passwd) {
		this.community_password = community_passwd;
	}
	public String getUserinfo_id() {
		return userinfo_id;
	}
	public void setUserinfo_id(String userinfo_id) {
		this.userinfo_id = userinfo_id;
	}
	
	
}
