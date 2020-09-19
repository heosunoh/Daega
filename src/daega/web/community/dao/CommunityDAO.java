package daega.web.community.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import daega.web.community.vo.Community;
import daega.web.community.vo.CommunityComment;
import daega.web.page.CommunityCriteria;

public interface CommunityDAO {
	public ArrayList<Community> getCommunityList(CommunityCriteria cri);
	public void addCommunity(Community community);
	public void updateCommunity(Community community);
	public void deleteCommunity(int num);
	public Community getCommunity(int num);
	public void updateCountCommunity(int num);
	public int countBoardList();
	public boolean checkPw(String community_num, String community_password);
	public void insertComment(CommunityComment communityComment);
	public ArrayList<CommunityComment> getCommentList(int num);
}
