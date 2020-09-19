<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,daega.web.mybatis.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#loginFormArea{
		width : 500px;
		height : 300px;
		margin : auto;
		text-align : center;
		border : 1px solid black;
	}
	h1{
		text-align : center;
	}
</style>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<section id= "loginFormArea">
<!-- 
<a href="loginForm">로그인하러가기</a>
<a href="communityBoardWrite">글쓰기</a>
 -->
 <h1>대학생활 가이드</h1>
</section>
<jsp:include page="/Tail.jsp"/>
</body>
</html>