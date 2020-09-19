package daega.web.user.svc;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import daega.web.user.vo.User;

public interface UserService {
	public void addUser(User user) throws Exception;
	public ArrayList<User> getUsers();
	public void removeMember(String id);
	public User getModifyUser(String id);
	public void modifyUser(User user);
	public boolean loginCheck(User user, HttpSession session);
	public User viewUser(User user);
	public void logout(HttpSession session);
}
