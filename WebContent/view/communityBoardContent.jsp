<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	border: 1px solid black;
	text-align: center;
	align: center;
	border-collapse: collapse;
	width: 60%;
	height: 50% margin: auto;
}

tr, td {
	border: 1px solid black;
	text-align: center;
	border-collapse: collapse;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/Header.jsp" />
<body>
	<center>
		<h1>커뮤니티 콘텐트</h1>
		<hr>
		<a href="communityBoardList" class="btn btn-info" role="button">목록보기</a>
		<a href="communityBoardModify?num=${detail.community_num }"
			class="btn btn-info" role="button">수정</a> <a
			href="removeCommunity?num=${detail.community_num }"
			class="btn btn-info" role="button">삭제</a>
		<table align="center">
			<tr>
				<td>제목</td>
				<td colspan="3">${detail.community_subject }</td>
				<td>머릿말</td>
				<td>${detail.community_select }</td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td>${detail.community_writer}</td>
				<td>작성일</td>
				<td>${detail.community_date }</td>
				<td>조회수</td>
				<td>${detail.community_readcount }</td>
			</tr>
			<tr>
				<td width="100">내용</td>
				<td colspan="5"><p>${detail.community_content }</p></td>
			</tr>
		</table>
		<br><br> 
		<h2>댓글</h2>
		<br>
		<!-- <a href="Javascript:tableView();" class="btn btn-info">댓글쓰기</a> -->
		<form method="post"
			action="insertComment?num=${detail.community_num }">
			<input type="hidden" name="community_num" value="${detail.community_num }"> 
			<input type="hidden" name="communityComment_writer" value="${sessionScope.userNickname }">
			<input type="hidden" name="userinfo_id" value="${sessionScope.userId }">
			<table id="tableID" align="center">
				<tr>
					<td>닉네임</td>
					<td>내용</td>
					<td>작성날짜</td>
					<td></td>
				</tr>
				<tr>
					<td>${sessionScope.userNickname }</td>
					<td><input type="text" name="communityComment_content" size="70"></td>
					<td></td>
					<td colspan="2" align="center"><input type="submit" value="추가">
					</td>
				</tr>
				<c:forEach items="${commentList }" var="comment">
					<tr>
						<td>${comment.communityComment_writer }</td>
						<td>${comment.communityComment_content }</td>
						<td>${comment.communityComment_date }</td>
						<td><a href="delete?id=${member.id}">삭제</a> <a
							href="updateForm?id=${member.id}">수정</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</center>
	<jsp:include page="/Tail.jsp" />
</body>
</html>