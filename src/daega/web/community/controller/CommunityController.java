package daega.web.community.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import daega.web.community.svc.CommunityService;
import daega.web.community.vo.Community;
import daega.web.community.vo.CommunityComment;
import daega.web.page.CommunityCriteria;
import daega.web.page.PageMaker;

@Controller
public class CommunityController {

		@Autowired
		private CommunityService communityService;
		
		//커뮤니티 글쓰기
		@RequestMapping("/communityBoardWrite")
		public ModelAndView communityBoardWrite(CommunityCriteria cri) {
			ModelAndView result = new ModelAndView();
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(communityService.countBoardList());
			ArrayList<Community> communityList = communityService.getCommunityList(cri);
			result.addObject("result", communityList);
			result.addObject("pageMaker",pageMaker);
			result.addObject("msg", "success");
			result.setViewName("communityBoardWrite");
			
			return result;
		}
		
		//커뮤니티 리스트
		@RequestMapping("/communityBoardList")
		public ModelAndView communityBoardList(CommunityCriteria cri) {
			ModelAndView result = new ModelAndView();
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(communityService.countBoardList());
			ArrayList<Community> communityList = communityService.getCommunityList(cri);
			result.addObject("communityList", communityList);
			result.addObject("pageMaker",pageMaker);
			result.addObject("msg", "success");
			result.setViewName("communityBoardList");
			
			return result;
		}
		// 입력시
		@RequestMapping(value="/insertCommunity", method=RequestMethod.POST)
		public String addCommunity(Community community) {
			communityService.addCommunity(community);
			System.out.println("insert complete");
			return "redirect:/communityBoardList";
		}
		
		// 디테일
		@RequestMapping(value="/detailCommunity")
		public ModelAndView detailCommunity(@RequestParam("num") int num) {
			Community detail = communityService.getCommunity(num);
			ArrayList<CommunityComment> commentList = communityService.getCommentList(num);
			ModelAndView mv = new ModelAndView();
			mv.addObject("detail",detail);
			mv.addObject("commentList",commentList);
			mv.addObject("msg", "success");
			mv.setViewName("communityBoardContent");
			return mv;
		}
		
		// 삭제
		@RequestMapping(value="/removeCommunity")
		public String removeCommunity(@RequestParam("num") int num) {
			communityService.removeCommunity(num);
			return "redirect:/communityBoardList";
		}
		
		// 수정 버튼 누를시
		@RequestMapping(value="/communityBoardModify")
		public ModelAndView updateGetCommunity(@RequestParam("num") int num) {
			Community getcommunity = communityService.getCommunity(num);
			ModelAndView mv = new ModelAndView();
			mv.addObject("msg", "success");
			mv.addObject("detail",getcommunity);
			mv.setViewName("communityUpdateForm");
			return mv;
		}
		
		// 수정 폼에서 수정 요청시
		@RequestMapping(value="/updateCommunity", method=RequestMethod.POST)
		public ModelAndView updateCommunity(Community community, @RequestParam("num") int num) {
			boolean modifySuccess = communityService.checkPw(Integer.toString(num),community.getCommunity_password());
			ModelAndView mv = new ModelAndView();
			if(modifySuccess) {
				communityService.modifyCommunity(community);
				mv.addObject("msg", "success");
				mv.setViewName("redirect:/detailCommunity?num="+num);
				return mv;
			}else {
				Community getcommunity = communityService.getCommunity(num);
				mv.addObject("detail",getcommunity);
				mv.addObject("msg", "success");
				mv.addObject("msg1","fail");
				mv.setViewName("communityUpdateForm");
				return mv;
			}
		}
		
		@RequestMapping(value="/insertComment", method=RequestMethod.POST)
		public ModelAndView insertComment(CommunityComment communityComment, @RequestParam("num") int num) {
			communityService.addComment(communityComment);
			ArrayList<CommunityComment> commentList = communityService.getCommentList(num);
			ModelAndView mv = new ModelAndView();
			Community detail = communityService.getCommunity(num);
			mv.addObject("detail",detail);
			mv.addObject("commentList",commentList);
			mv.addObject("msg", "success");
			mv.setViewName("communityBoardContent");
			return mv;
		}
}
