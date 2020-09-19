<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
		border : 1px solid black;
		text-align : center;
		align : center;
		border-collapse: collapse;
		width : 60%;
		height : 50%
	}

	tr, td {
		border : 1px solid black;
		text-align : center;
		border-collapse: collapse;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<h1>커뮤니티 글쓰기</h1>
<form action="insertCommunity" method="POST">
<table align = "center">
	<tr>
		<th colspan = "3">글쓰기</th>
	</tr>
	<tr>
		<td width = "100">닉네임</td>
		<td colspan = "2" width = "30">
		<input type = "text" name = "community_writer" width = "70" disabled="disabled" value="${sessionScope.userNickname }">
		<input type="hidden" name="community_writer" value="${sessionScope.userNickname }">
		</td>
	</tr>
	<tr>
		<td width = "100">머릿말</td>
		<td colspan = "2">
			<select name="community_select" id="head" align = "right">
    		<option value="question">질문</option>
    		<option value="tip">꿀팁</option>
    		<option value="advice">상담</option>
  		</select>
		</td>
	</tr>
	<tr>
		<td width = "100">제목</td>
		<td colspan = "2">
			<input type = "text" name = "community_subject" width = "70">
		</td>
	</tr>
	<tr>
		<td width = "100">내용</td>
		<td colspan = "2">
			<textarea rows="20" cols="50" name = "community_content"></textarea>
		</td>
	</tr>
	<tr>
		<td width = "100">비밀번호</td>
		<td colspan = "2">
			<input type = "password" name = "community_password">
		</td>
	</tr>
	<input type="hidden" name="userinfo_id" value="${sessionScope.userId }">
</table><br><br>
<input type = "submit" value = "글쓰기" align = "center">
<a href="communityBoardList"><input type = "submit" value = "목록보기" align = "center"></a>
</form>
<jsp:include page="/Tail.jsp"/>
</body>
</html>