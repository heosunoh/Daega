package daega.web.community.svc;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import daega.web.community.dao.CommunityDAO;
import daega.web.community.vo.Community;
import daega.web.community.vo.CommunityComment;
import daega.web.page.CommunityCriteria;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityDAO communityDAO;

	@Override
	public void addCommunity(Community community) {
		// TODO Auto-generated method stub
		communityDAO.addCommunity(community);
	}

	@Override
	public ArrayList<Community> getCommunityList(CommunityCriteria cri) {
		// TODO Auto-generated method stub
		ArrayList<Community> communityList = communityDAO.getCommunityList(cri);
		return communityList;
	}

	@Override
	public Community getCommunity(int num) {
		// TODO Auto-generated method stub
		communityDAO.updateCountCommunity(num);
		Community detail = communityDAO.getCommunity(num);

		return detail;
	}

	@Override
	public int countBoardList() {
		// TODO Auto-generated method stub
		return communityDAO.countBoardList();
	}

	@Override
	public void removeCommunity(int num) {
		// TODO Auto-generated method stub
		communityDAO.deleteCommunity(num);
	}

	@Override
	public void modifyCommunity(Community community) {
		// TODO Auto-generated method stub
		communityDAO.updateCommunity(community);
	}

	@Override
	public boolean checkPw(String community_num, String community_password) {
		// TODO Auto-generated method stub
		return communityDAO.checkPw(community_num, community_password);
	}

	@Override
	public ArrayList<CommunityComment> getCommentList(int num) {
		// TODO Auto-generated method stub
		ArrayList<CommunityComment> commentList = communityDAO.getCommentList(num);
		return commentList;
	}
	
	@Override
	public void addComment(CommunityComment communityComment) {
		// TODO Auto-generated method stub
		communityDAO.insertComment(communityComment);
	}
}
