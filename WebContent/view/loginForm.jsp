<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#loginFormArea {
	width: 500px;
	height: 300px;
	margin: auto;
	text-align: center;
	border: 1px solid black;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="/Header.jsp" />
	<section id="loginFormArea">
		<h1>로그인</h1>
		<form action="login" method="POST">
			<input type="text" name="userinfo_id" id="id" placeholder="ID" /><br>
			<br /> <input type="password" name="userinfo_password" id="password" placeholder="PASSWORD" /><br> <br />
			<c:if test="${msg=='failure' }">
				<div style="color:red">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<c:if test="${msg=='logout' }">
			<div style="color:red">
					로그아웃되었습니다.
				</div>
			</c:if>
			<input type="submit" value="로그인" /><br/>
			 <a href="signupForm">회원가입</a>
		</form>
	</section>
	<jsp:include page="/Tail.jsp" />
</body>
</html>