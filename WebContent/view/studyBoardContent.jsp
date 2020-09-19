<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script language="javascript"> 
<!-- 
function tableView() { 
  tableID.style.visibility="visible"; 
  } 
  function tableHiding()  { 
  tableID.style.visibility="hidden";; 
  } 
//--> 
</script> 
<style>
table {
	border: 1px solid black;
	text-align: center;
	align: center;
	border-collapse: collapse;
	width: 60%;
	height: 50%
}

img {
	width: 200px;
	height: 200px;
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
<body>
	<jsp:include page="/Header.jsp" />
	<center>
		<h1>스터디 콘텐트</h1>
		<input type="submit" value="목록보기"> <input type="submit"
			value="수정"> <input type="submit" value="삭제">
		<br/><br/>
		<table align="center">
			<tr>
				<td rowspan="4"><img
					src="<%=request.getContextPath()%>/images/study.jpg" alt=""></td>
				<td width="10%">스터디</td>
				<td width="60%" colspan="3">스터디</td>
			</tr>
			<tr>
				<td width="10%">날짜</td>
				<td width="40%"></td>
				<td width="10%">닉네임</td>
				<td width="10%">닉네임</td>
			</tr>
			<tr>
				<td width="20%">과목</td>
				<td width="40%"></td>
				<td width="10%">인원</td>
				<td width="10%">인원</td>
			</tr>
			<tr>
				<td width="20%">내용</td>
				<td width="80%" colspan="3"></td>
			</tr>

		</table>
		<br>
		<br>
<a href="Javascript:tableView();">댓글쓰기</a> 
<form  method="post" action="update">
<table id="tableID" style="visibility:hidden;" align = "center";>
		<tr>
			<td>닉네임</td>
			<td>내용</td>
			<td>작성날짜</td>
			<td>비밀번호</td>
			<td></td>
		</tr>

		<tr>
			<td><input type="text" name="name" id="name" size="4"></td>
			<td><input type="text" name="content" id="content"></td>
			<td><input type="text" name="date" id="date" size="5"></td>
			<td><input type="password" name="password" id="password"  size="4"></td>
			<td colspan="2" align="center">
			<input type="submit" value="추가">
			</td>

		</tr>
		<c:forEach items="${result}" var="member">
			<tr>
				<td>${member.name}</td>
				<td>${member.content}</td>
				<td></td>
				<td><input type="password" name="password" id="password" size="4"></td>
				<td><a href = "delete?id=${member.id}">삭제</a>
				<a href = "updateForm?id=${member.id}">수정</a></td>
			</tr>
		</c:forEach>
	</table>
	</form>
	</center>
	<jsp:include page="/Tail.jsp" />
</body>
</html>