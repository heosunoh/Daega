<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	height: 50%
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
		<h1>커뮤니티 콘텐트 수정</h1>
		<form action="updateCommunity?num=${detail.community_num }" method="POST">
			<input type="hidden" name="community_num" value="${detail.community_num }">
			<input type="hidden" name="userinfo_id" value="${sessionScope.userId }">
			<table align="center">
				<tr>
					<td width="100">제목</td>
					<td colspan="3"><input type="text" name="community_subject"
						id="name" value="${detail.community_subject }"></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td>${detail.community_writer}</td>
					<td>작성일</td>
					<td>${detail.community_date }</td>
				</tr>
				<tr>
					<td width="100">내용</td>
					<td colspan="3"><textarea rows="20" cols="50" name="community_content">${detail.community_content }</textarea></td>
				</tr>
				<tr>
					<td width="100">비밀번호</td>
					<td colspan="3"><p style="color:red;"><c:if test="${msg1=='fail' }">비밀번호가 올바르지 않습니다</c:if></p><input type="password"
						name="community_password" id="password"></td>
				</tr>
			</table>
			<br/>
			<input type="submit" value="수정">
		</form>
		<br>
		<br>
	</center>
	
	<jsp:include page="/Tail.jsp" />
</body>
</html>