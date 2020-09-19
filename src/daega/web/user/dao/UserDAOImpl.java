package daega.web.user.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import daega.web.mybatis.UserMapper;
import daega.web.user.vo.User;

@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SqlSession sqlSession;

	public void insertUser(User user) {
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		userMapper.insertUser(user);
	};
	@Override
	public User selectByEmail(String userinfo_email) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User email = userMapper.selectByEmail(userinfo_email);
		return email;
	}
	@Override
	public User selectById(String userinfo_id) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User id = userMapper.selectById(userinfo_id);
		return id;
	}
	@Override
	public User selectByNickname(String userinfo_nickname) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User nickname = userMapper.selectByNickname(userinfo_nickname);
		return nickname;
	}
	@Override
	public boolean loginCheck(User user) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		String name = userMapper.loginCheck(user);
		return (name==null)? false:true;
	}
	@Override
	public User viewUser(User user) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User user1 = userMapper.viewUser(user);
		return user1;
	}
	@Override
	public void deleteUser(String id) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		userMapper.deleteUser(id);
	}@Override
	public ArrayList<User> getUsers() {
		// TODO Auto-generated method stub
		ArrayList<User> result = new ArrayList<User>();
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		result = userMapper.getUsers();
		return result;
	}@Override
	public User selectUpdateUser(String id) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		User user = userMapper.getUpdateUser(id);
		return user;
	}@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		userMapper.updateUser(user);
		
	}
}
