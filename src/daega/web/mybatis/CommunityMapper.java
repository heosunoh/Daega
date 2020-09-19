package daega.web.mybatis;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import daega.web.community.vo.Community;
import daega.web.page.CommunityCriteria;

public interface CommunityMapper {
	ArrayList<Community> getCommunityList(CommunityCriteria cri);
	void insertCommunity(Community community);
	void updateCommunity(Community community);
	void deleteCommunity(int num);
	Community getCommunity(int num);
	void updateCountCommunity(int num);
	int countBoardList();
	int checkPassword(Map<String, String> map);
}
