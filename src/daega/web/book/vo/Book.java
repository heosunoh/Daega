package daega.web.book.vo;

import java.util.Date;

public class Book {
	private int book_num;
	private String book_name;
	private Date book_publish;
	private String book_subject;
	private int book_price;
	private int book_cost;
	private String book_select;
	private String book_content;
	private Date book_date;
	private String book_password;
	private String book_writer;
	private String userinfo_id;
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public Date getBook_publish() {
		return book_publish;
	}
	public void setBook_publish(Date book_publish) {
		this.book_publish = book_publish;
	}
	public String getBook_subject() {
		return book_subject;
	}
	public void setBook_subject(String book_subject) {
		this.book_subject = book_subject;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public int getBook_cost() {
		return book_cost;
	}
	public void setBook_cost(int book_cost) {
		this.book_cost = book_cost;
	}
	public String getBook_select() {
		return book_select;
	}
	public void setBook_select(String book_select) {
		this.book_select = book_select;
	}
	public String getBook_content() {
		return book_content;
	}
	public void setBook_content(String book_content) {
		this.book_content = book_content;
	}
	public Date getBook_date() {
		return book_date;
	}
	public void setBook_date(Date book_date) {
		this.book_date = book_date;
	}
	public String getBook_password() {
		return book_password;
	}
	public void setBook_password(String book_password) {
		this.book_password = book_password;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public String getUserinfo_id() {
		return userinfo_id;
	}
	public void setUserinfo_id(String userinfo_id) {
		this.userinfo_id = userinfo_id;
	}
}