<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	text-align: center;
	align: center;
	border-collapse: collapse;
	height: 50%;
}
img{
	width: 200px;
	height: 200px;
}
tr, td {
	text-align: center;
	border-collapse: collapse;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/Header.jsp" />
<center>
<br>
	<table width = "60%">
		<tr>
			<td rowspan = "2" width = "5%"><img src = "/images/dog.jpg"></td>
			<td width = "10%"><h3>담당 교수</h3></td>
		</tr>
		<tr>
			<td rowspan = "2">ㅇㅇㅇ교수님</td>
		</tr>
		<tr>
			<td><h3>ㅇㅇ과목</h3></td>
		</tr>
	</table><br><br><br>
	
	<table border = "1px" width = "80%">
	<tr>
		<td>닉네임</td>
		<td>내용</td>
		<td widht = "10%">평점</td>
		<td>작성일</td>
		<td>비밀번호</td>
		<td></td>
	</tr>
	<tr>
			<td><input type="text" name="name" id="name" size = "4"></td>
			<td><input type="text" name="content" id="email"></td>
			<td>★★★★★</td>
			<td>2020-07-15</td>
			<td><input type = "password" name ="passwd" id="passwd" size = "4"></td>
			<td align="center">
			<input type="submit" value="추가">
			</td>
		</tr>
		<c:forEach items="${result}" var="member">
			<tr>
				<td>${member.name}</td>
				<td>${member.content}</td>
				<td>★★★★★</td>
				<td>2020-07-15</td>
				<td><input type = "password" name ="passwd" id="passwd" size = "4"></td>
				<td><a href = "delete?id=${member.id}">삭제</a>
				<a href = "updateForm?id=${member.id}">수정</a></td>
			</tr>
		</c:forEach>
</table>
</center>
<jsp:include page="/Tail.jsp" />
</body>
</html>