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
	width: 80%;
	height: 50%
}
img{
	width: 200px;
	height: 200px;
}
tr, td {
	padding : 5px;
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
		<h1>스터디 리스트</h1>
		<select name="head" id="head" align="right">
			<option value="toeic">토익</option>
			<option value="sell">팝니다</option>
		</select> <input type="text" name="search"> <input type="submit" value="검색">
		<br/>
		<table align="center">
			<tr>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
			</tr>
			<tr>
				<td>스터디</td>
				<td>스터디</td>
				<td>스터디</td>
			</tr>
			<tr>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
				<td width="33%"><a href=""><img src="<%=request.getContextPath()%>/images/study.jpg" alt=""></a></td>
			</tr>
			<tr>
				<td>스터디</td>
				<td>스터디</td>
				<td>스터디</td>
			</tr>
			
		</table>
		<br>
		<br> <label align="center"><a href="" align="center">(첫페이지)</a>
		</label> <a href="" align="center">(끝 페이지)</a> 
		<input type="submit" value="글쓰기">
	</center>
	<jsp:include page="/Tail.jsp" />
</body>
</html>