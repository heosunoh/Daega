package daega.web.community.vo;

import java.sql.Date;

public class CommunityComment {
	private int community_num;
	private int communityComment_num;
	private String communityComment_writer;
	private Date communityComment_date;
	private String communityComment_content;
	private String userinfo_id;
	
	public int getCommunity_num() {
		return community_num;
	}
	public void setCommunity_num(int community_num) {
		this.community_num = community_num;
	}
	
	public int getCommunityComment_num() {
		return communityComment_num;
	}
	public void setCommunityComment_num(int communityComment_num) {
		this.communityComment_num = communityComment_num;
	}
	public String getCommunityComment_writer() {
		return communityComment_writer;
	}
	public void setCommunityComment_writer(String communityComment_writer) {
		this.communityComment_writer = communityComment_writer;
	}
	public Date getCommunityComment_date() {
		return communityComment_date;
	}
	public void setCommunityComment_date(Date communityComment_date) {
		this.communityComment_date = communityComment_date;
	}
	public String getCommunityComment_content() {
		return communityComment_content;
	}
	public void setCommunityComment_content(String communityComment_content) {
		this.communityComment_content = communityComment_content;
	}
	public String getUserinfo_id() {
		return userinfo_id;
	}
	public void setUserinfo_id(String userinfo_id) {
		this.userinfo_id = userinfo_id;
	}
}
