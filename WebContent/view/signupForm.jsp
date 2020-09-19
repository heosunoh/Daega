<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#memberRegistFormArea {
	width: 800px;
	margin: auto;
	border: 1px solid black;
}

table {
	text-align: center;
	width: 780px;
	margin: auto;
}

h1 {
	text-align: center;
	border-bottom: 3px double #cccccc;
}

.td_left {
	text-align: right;
	width: 300px;
}

.td_right {
	text-align: left;
	width: 480px;
}
</style>
<script>
	function idCheck() {
		//var id = document.myForm.id; // document. --> html문서 전체에서 하나하나 찾아가기
		var id = document.getElementById("id"); // id로 접근하기
		window
				.open("idCheck?id=" + id.value, "window1",
						"width=400,height=300"); //띄어줄 url id값을 던지면서 id 체크 , 새로 뜨는 윈도우 팝업창이름, 팝업창 모양

	}

	function checkPasswd() {
		var passwd1 = document.getElementById("passwd"); // id로 접근해서 값 받아오기	
		var passwd2 = document.getElementById("passwd2"); // id로 접근해서 값 받아오기
		var errorMessage = document.getElementById("errorMessage"); // id로 접근해서 값 받아오기

		if (passwd1.value != passwd2.value) { // 입력 양식의 값
			errorMessage.innerHTML = "<font color = 'red'>비밀번호가 일치하지 않습니다.</font>";//innerHTML 은 그 엘리먼트 안에 HTML태그를 삽입하는 것이다
		} else {
			errorMessage.innerHTML = "";
		}
	}
</script>
</head>
<body>
	<jsp:include page="/Header.jsp" />
	<section id="memberRegistFormArea">
	<h1>회원등록</h1>

	<div class="panel-body">
    <div class="row">
        <div class="col-lg-6">
            <form:form role="form" modelAttribute="user" action="insertUser" method="post">
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-check"></i></span>
                    <form:input type="text" class="form-control" placeholder="ID" path="userinfo_id"/>
                    <form:errors path="userinfo_id" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <form:password class="form-control" placeholder="Password" path="userinfo_password"/>
                    <form:errors path="userinfo_password" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                    <form:password class="form-control" placeholder="Password Check" path="checkPw"/>
                    <form:errors path="checkPw" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                    <form:input type="text" class="form-control" placeholder="Email" path="userinfo_email"/>
                    <form:errors path="userinfo_email" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <form:input type="text" class="form-control" placeholder="Name" path="userinfo_name"/>
                    <form:errors path="userinfo_name" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <form:input type="text" class="form-control" placeholder="Nickname" path="userinfo_nickname"/>
                    <form:errors path="userinfo_nickname" class="signup-errors"/>
                </div>
                <div class="form-group input-group">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <form:select path="userinfo_grade" id="grade">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
					</form:select>
                </div>
                
                <button type="submit" class="btn btn-default">가입하기</button>
                <button type="reset" class="btn btn-default">취소하기</button>
            </form:form>
        </div>
    </div>
</div>
	<jsp:include page="/Tail.jsp" />
</body>
</html>