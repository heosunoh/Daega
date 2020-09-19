package daega.web.user.dao;

import java.util.ArrayList;

import daega.web.user.vo.User;

public interface UserDAO {

	public void insertUser(User user);
	public ArrayList<User> getUsers();
	public void updateUser(User user);
	public void deleteUser(String id);
	public User selectUpdateUser(String id);
	public boolean loginCheck(User user);
	public User viewUser(User user);
	public User selectByEmail(String userinfo_email);
	public User selectById(String userinfo_id);
	public User selectByNickname(String userinfo_nickname);
}
