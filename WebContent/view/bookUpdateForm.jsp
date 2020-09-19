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
		<h1>중고거래 콘텐트 수정</h1>
		<input type="submit" value="수정">
		<table align="center">
			<tr>
				<td width="100">책이름</td>
				<td colspan="3"><input type="text" name="nickname" id="nickname"></td>
			</tr>
			<tr>
				<td width="100">출간일</td>
				<td><input type="text" name="date" id="date"></td>
			</tr>
			<tr>
				<td width="100">과목</td>
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
		<br>
		<br>
	</center>
	<jsp:include page="/Tail.jsp" />
</body>
</html>