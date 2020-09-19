<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style-signup.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}
</style>

<!-- 
<div class="navbar">
	<a href="main.do">대가</a>
	<div class="dropdown">
		<button class="dropbtn">
			성적관리 <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-substance">
			<a href="gradeCal.do">학점계산</a> 
			<a href="performGrade.do">목표학점</a>
		</div>
	</div>
	<a href="communityBoardList">커뮤니티</a>
	<div class="dropdown">
		<button class="dropbtn">
			평가 <i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-substance">
			<a href="professor.do">교수</a> <a href="subject.do">과목</a>
		</div>
	</div>
	<a href="study.do">스터디</a> <a href="book.do">중고거래</a>
	-->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">대가</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">성적관리 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">학점계산</a></li>
          <li><a href="#">목표학점</a></li>
        </ul>
      </li>
      <li><a href="communityBoardList">커뮤니티</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">평가<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">교수</a></li>
          <li><a href="#">과목</a></li>
        </ul>
      </li>      
      <li><a href="#">스터디</a></li>
      <li><a href="#">중고거래</a></li>
    </ul>
    <ul class="nav nav-pills pull-right">
				<c:choose>
					<c:when test="${msg=='success' }">
						<li role="presentation">
							<a>${sessionScope.userNickname }(${sessionScope.userId })님 환영합니다.</a></li>
						<li  role="presentation"> <a href="logout">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li role="presentation"><a href="loginForm" style="color:white;">로그인</a></li>
						<li role="presentation"><a href="signupForm" style="color:white;">회원가입</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
    </div>
</nav>
