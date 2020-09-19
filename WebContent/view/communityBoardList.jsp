<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,daega.web.mybatis.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table {
		border : 1px solid black;
		text-align : center;
		align : center;
		border-collapse: collapse;
		width : 60%;
		height : 50%
	}

	tr, td {
		border : 1px solid black;
		text-align : center;
		border-collapse: collapse;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/Header.jsp"/>
<form action="getCommunity" method="POST">
<center>
<h1>커뮤티니 게시판 리스트</h1>

<select name="head" id="head" align = "right">
    <option value="question">질문</option>
    <option value="tip">꿀팁</option>
    <option value="advice">상담</option>
  </select>
  <input type = "text" name = "search">
  <input type = "submit" value = "검색">
<br><br>
<table align = "center">
	<tr>
		<td width = "30">번호</td>
		<td width = "80">제목</td>
		<td width = "50">작성자</td>
		<td width = "50">날짜</td>
		<td width = "30">조회수</td>
	</tr>
	<c:forEach items="${communityList }" var="community">
	<tr>
		<td>${community.community_num}</td>
		<td><a href="detailCommunity?num=${community.community_num }">${community.community_subject }</a></td>
		<td>${community.community_writer }</td>
		<td>${community.community_date }</td>
		<td>${community.community_readcount }</td>
	</tr>
	</c:forEach>
</table><br><br>
<ul class="btn-group pagination">
    <c:if test="${pageMaker.prev }">
    <li>
        <a href="communityBoardList?page=${pageMaker.startPage-1 }"><i class="fa fa-chevron-left"></i></a>
    </li>
    </c:if>
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
    <li>
        <a href="communityBoardList?page=${pageNum }"><i class="fa">${pageNum }</i></a>
    </li>
    </c:forEach>
    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
    <li>
        <a href="communityBoardList?page=${pageMaker.endPage+1 }"><i class="fa fa-chevron-right"></i></a>
    </li>
    </c:if>
</ul>

<a href="communityBoardWrite"><input type = "button" value = "글쓰기"></a>
</center>
</form>
<jsp:include page="/Tail.jsp"/>
</body>
</html>