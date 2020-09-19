<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="daega" class="daega.web.grade.vo.Grade"/>
<jsp:setProperty property="*" name="daega" />
<%daega.Calculator(); %>
<html>
<head>
<meta charset="UTF-8">
<title>목표학점계산기</title>
<style>
	div {
	width: 500px;
	margin: auto;
	border: 1px solid black;
	}
</style>
</head>
<body>

<h4>
	<form>
		<INPUT type="button" value="학점계산" onclick="gradeCalculator">
	</form>
</h4>
<form name=form method = "POST">
<div>

	이수학점 :  <INPUT type="text" name="num1"><br>
	전체점수 :  <INPUT type="text" name="num2"><br>
	남은학점 :  <INPUT type="text" name="num3"><br>
	목표점수 :  <INPUT type="text" name="num4"><br><br>
	</form>
	<div align="right">

	
		<INPUT type="submit" value="계산">

	</div>

	<div>
	목표점수를 위한 평균점수는 : <%=daega.getResult() %> 입니다.
	</div>
</div>

</body>
</html>