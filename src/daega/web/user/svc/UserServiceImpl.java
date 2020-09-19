package daega.web.user.svc;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import daega.web.exception.AlreadyExistingEmailException;
import daega.web.exception.AlreadyExistingIdException;
import daega.web.exception.AlreadyExistingNicknameException;
import daega.web.user.dao.UserDAO;
import daega.web.user.vo.User;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	public void addUser(User user) throws Exception{
		// TODO Auto-generated method stub
		User email = userDAO.selectByEmail(user.getUserinfo_email());
		if(email!=null) {
			throw new AlreadyExistingEmailException(user.getUserinfo_email()+"is duplicate email.");
		}
		User id = userDAO.selectById(user.getUserinfo_id());
		if(id!=null) {
			throw new AlreadyExistingIdException(user.getUserinfo_id()+"is duplicate id.");
		}
		User nickname = userDAO.selectByNickname(user.getUserinfo_nickname());
		if(nickname!=null) {
			throw new AlreadyExistingNicknameException(user.getUserinfo_nickname()+"is duplicate nickname.");
		}
		userDAO.insertUser(user);
	}
	@Override
	public User viewUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.viewUser(user);
	}
	@Override
	public boolean loginCheck(User user, HttpSession session) {
		// TODO Auto-generated method stub
		boolean result = userDAO.loginCheck(user);
		if(result) {
			User user2 = viewUser(user);
			session.setAttribute("userId", user2.getUserinfo_id());
			session.setAttribute("userNickname", user2.getUserinfo_nickname());
		}
		return result;
	}
	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		session.invalidate(); // 세션 영역 초기화
	}
	@Override
	public User getModifyUser(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public ArrayList<User> getUsers() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public void modifyUser(User user) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void removeMember(String id) {
		// TODO Auto-generated method stub
		
	}

}
