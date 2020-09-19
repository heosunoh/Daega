package daega.web.mybatis;

import java.util.ArrayList;
import java.util.Map;

import daega.web.community.vo.CommunityComment;
import daega.web.page.CommunityCriteria;

public interface CommunityCommentMapper {
	ArrayList<CommunityComment> getCommunityCommentList(int num);
	void insertCommunityComment(CommunityComment communityComment);
	void updateCommunityComment(CommunityComment communityComment);
	void deleteCommunityComment(int num);
	CommunityComment getCommunityComment(int num);
	void updateCountCommunityComment(int num);
}
