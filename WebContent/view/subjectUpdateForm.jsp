<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	border : 1px solid black;
	text-align: center;
	align: center;
	border-collapse: collapse;
	width : 60%;
	height: 50%;
}

tr, td {
	text-align: center;
	border : 1px solid black;
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
		<h1>교수님 정보 수정</h1>
<br>
	<table>
	<tr>
		<td width = "25%" >과목 이름</td>
		<td colspan = "2" width = "30"><input type = "text" id="subject_name"></td>
	</tr>
	<tr>
		<td width = "25%">사진</td>
		<td colspan = "2">
			<input type="file" name="subject_picture">
		</td>
	</tr>
	<tr>
		<td width = "25%">담당 교수님</td>
		<td colspan = "2">
			<textarea rows="10" cols="50" text-align="center"></textarea>
		</td>
	</tr>
	<tr>
		<td width = "25%" >비밀번호</td>
		<td colspan = "2" width = "30"><input type = "password" id="subject_passwd"></td>
	</tr>
	</table>
</center>
<br><br>
<jsp:include page="/Tail.jsp" />
</body>
</html>