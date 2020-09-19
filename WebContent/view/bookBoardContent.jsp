<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
		<h1>중고거래 콘텐트</h1>
		<input type="submit" value="목록보기"> <input type="submit"
			value="수정"> <input type="submit" value="삭제">
		<br/><br/>
		<table align="center">
			<tr>
				<td rowspan="4"><img
					src="<%=request.getContextPath()%>/images/book.jpg" alt=""></td>
				<td width="20%">책이름</td>
				<td width="80%">책</td>
			</tr>
			<tr>
				<td width="20%">출간일</td>
				<td width="80%"></td>
			</tr>
			<tr>
				<td width="20%">과목</td>
				<td width="80%"></td>
			</tr>
			<tr>
				<td width="20%">내용</td>
				<td width="80%"></td>
			</tr>

		</table>
		<br>
		<br>
<a href="Javascript:tableView();">댓글쓰기</a> 
<form  method="post" action="update">
<table id="tableID" style="visibility:hidden;" align = "center";>
		<tr>
			<td>닉네임</td>
			<td>머릿말</td>
			<td>내용</td>
			<td>가격</td>
			<td>작성날짜</td>
			<td>비밀번호</td>
			<td></td>
		</tr>

		<tr>
			<td><input type="text" name="name" id="name" size="4"></td>
			<td><select name="head" id="head" align="right">
			<option value="buy">삽니다</option>
			<option value="sell">팝니다</option>
		</select></td>
			<td><input type="text" name="content" id="content"></td>
			<td><input type="text" name="price" id="price" size="4"></td>
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
				<td></td>
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