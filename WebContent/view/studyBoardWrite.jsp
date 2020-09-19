<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<h1>스터디 글쓰기</h1>
		<table align="center">
			<tr>
				<td width="100">닉네임</td>
				<td colspan="2" width="30">ddd</td>
			</tr>
			<tr>
				<td width="100">사진</td>
				<td colspan="2"><input type="file" name="book_picture">
				</td>
			</tr>
			<tr>
				<td width="100">인원</td>
				<td><input type="text" name="people" id="people"></td>
			</tr>
			<tr>
				<td width="100">날짜</td>
				<td><input type="date" name="date" id="date">~<input
					type="date" name="date" id="date"></td>
			</tr>
			<tr>
				<td width="100">과목</td>
				<td><input type="text" name="subject" id="subject"></td>
			</tr>
			<tr>
				<td width="100">제목</td>
				<td><input type="text" name="subject" id="subject"></td>
			</tr>
			<tr>
				<td width="100">내용</td>
				<td colspan="3"><textarea rows="20" cols="50"><input
							type="text" name="name" id="name"></textarea></td>
			</tr>
			<tr>
				<td width="100">비밀번호</td>
				<td><input type="password" name="password" id="password"></td>
			</tr>
		</table>
		<br> <br> <input type="submit" value="글쓰기" align="center">
		<input type="submit" value="목록보기" align="center">
	</center>
	<jsp:include page="/Tail.jsp" />
</body>
</html>