package daega.web.community.svc;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import daega.web.community.vo.Community;
import daega.web.community.vo.CommunityComment;
import daega.web.page.CommunityCriteria;

public interface CommunityService {
	public void addCommunity(Community community);
	public ArrayList<Community> getCommunityList(CommunityCriteria cri);
	public void removeCommunity(int num);
	public void modifyCommunity(Community community);
	public Community getCommunity(int num);
	public int countBoardList();
	public boolean checkPw(String community_num, String community_password);
	public void addComment(CommunityComment communityComment);
	public ArrayList<CommunityComment> getCommentList(int num);
}
