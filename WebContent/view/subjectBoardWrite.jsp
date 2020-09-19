<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
		width : 60%;
	}

	tr, td {
		align : center;
		border : 1px solid black;
		text-align : center;
		border-collapse: collapse;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<jsp:include page="/Header.jsp" />
<br>
	<h1>글쓰기</h1>
<br>
<table>
	<tr>
		<td width = "25%" height = "20%">닉네임</td>
		<td colspan = "2" width = "30">ddd</td>
	</tr>
	<tr>
		<td width = "25%">내용</td>
		<td colspan = "2">
			<textarea rows="20" cols="50"></textarea>
		</td>
	</tr>
	<tr>
		<td width = "25%" height = "20%">비밀번호</td>
		<td colspan = "2">
			<input type = "password" name = "passwd">
		</td>
	</tr>
</table><br><br>
<input type = "submit" value = "글쓰기" align = "center">
<input type = "submit" value = "목록보기" align = "center">

<jsp:include page="/Tail.jsp" />
</center>
</body>
</html>