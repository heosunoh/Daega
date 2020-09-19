package daega.web.community.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import daega.web.community.vo.Community;
import daega.web.community.vo.CommunityComment;
import daega.web.mybatis.CommunityCommentMapper;
import daega.web.mybatis.CommunityMapper;
import daega.web.page.CommunityCriteria;

@Repository
public class CommunityDAOImpl implements CommunityDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public ArrayList<Community> getCommunityList(CommunityCriteria cri) {
		// TODO Auto-generated method stub
		ArrayList<Community> result = new ArrayList<Community>();
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		result = communityMapper.getCommunityList(cri);
		
		return result;
	}

	@Override
	public void addCommunity(Community community) {
		// TODO Auto-generated method stub
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		communityMapper.insertCommunity(community);
	}

	@Override
	public void updateCommunity(Community community) {
		// TODO Auto-generated method stub
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		communityMapper.updateCommunity(community);
	}

	@Override
	public void updateCountCommunity(int num) {
		// TODO Auto-generated method stub
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		communityMapper.updateCountCommunity(num);
	}
	
	@Override
	public Community getCommunity(int num) {
		// TODO Auto-generated method stub
		Community result = new Community();
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		result = communityMapper.getCommunity(num);
		
		return result;
	}
	@Override
	public int countBoardList() {
		// TODO Auto-generated method stub
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		int count = communityMapper.countBoardList();
		return count;
	}
	
	@Override
	public void deleteCommunity(int num) {
		// TODO Auto-generated method stub
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		communityMapper.deleteCommunity(num);
	}
	@Override
	public boolean checkPw(String community_num, String community_password) {
		// TODO Auto-generated method stub
		boolean result = false;
		Map<String, String> map= new HashMap<String, String>();
		map.put("community_num",community_num);
		map.put("community_password",community_password);
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		int count = communityMapper.checkPassword(map);
		if(count==1) result=true;
		return result;
	}
	@Override
	public ArrayList<CommunityComment> getCommentList(int num) {
		// TODO Auto-generated method stub
		ArrayList<CommunityComment> result = new ArrayList<CommunityComment>();
		CommunityCommentMapper communityCommentMapper = sqlSession.getMapper(CommunityCommentMapper.class);
		result = communityCommentMapper.getCommunityCommentList(num);
		return result;
	}
	
	@Override
	public void insertComment(CommunityComment communityComment) {
		// TODO Auto-generated method stub
		CommunityCommentMapper communityCommentMapper = sqlSession.getMapper(CommunityCommentMapper.class);
		communityCommentMapper.insertCommunityComment(communityComment);
	}
}
