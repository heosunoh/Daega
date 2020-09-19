<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="Calculator" class="daega.web.grade.vo.Calculator"/>
<jsp:setProperty property="*" name="Calculator" />
<%Calculator.aCalculator(); %>
<%Calculator.bCalculator(); %>
<%Calculator.cCalculator(); %>
<%Calculator.dCalculator(); %>
<%Calculator.eCalculator(); %>
<%Calculator.fCalculator(); %>
<%Calculator.gCalculator(); %>
<%Calculator.hCalculator(); %>
<%Calculator.iCalculator(); %>
<%Calculator.jCalculator(); %>
<%Calculator.getcredit(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  text-align:center;
}
table{
	text-align:center;
	margin : auto;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<br/>
<button type="button" class="btn btn-default" onclick="performanceCalculator">목표학점</button>



	<form name=form method = "POST">
<table id ="myTable" class="table" style="margin-top:20px;">
<thead>
	<tr class="active">	
		<td class="text-center"><strong>항목</strong></td>
		<td class="text-center"><strong>과목</strong></td>
		<td class="text-center"><strong>점수</strong></td>
		<td class="text-center"><strong>학점</strong></td>
		<td class="text-center"><strong>전공</strong></td>
	</tr>
</thead>
	<tr style="font-size:12px; font-weight:600;">
		<td>1</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a id="a">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade1" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		<tr>
		<td>2</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a1 id="a1">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade2" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>3</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a2 id="a2">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade3" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>4</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a3 id="a3">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade4" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>5</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a4 id="a4">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade5" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>6</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a5 id="a5">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade6" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>7</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a6 id="a6">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade7" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>8</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a7 id="a7">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade8" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>9</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a8 id="a8">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade9" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		<tr>
		<td>10</td>
		<td><input type="text" name="subject"  placeholder="과목"/></td>
	
		<td>
		<select name=a9 id="a9">
							<option selected>선택</option>
							<option>A+</option>
							<option>A</option>
							<option>B+</option>
							<option>B</option>
							<option>C+</option>
							<option>C</option>
							<option>D</option>
							<option>F</option>
					</select></td>
		
		<td><input type="text" name="grade10" size="1" placeholder="학점"/></td>
	
		<td>
			<input type="checkbox" name="major" value="major">
		</td>
		</tr>
		
</tbody>
</table>
<br/>
<input type="submit" value="계산">

<h1>당신의 평균 학점은 : <%=Calculator.getResult() %> 입니다.</h1>
</form>
<jsp:include page="/Tail.jsp"/>
</body>
</html>