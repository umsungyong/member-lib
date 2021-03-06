<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서목록</title>
</head>
<body>
<table border="1">
	<tr>
		<th>도서번호</th>
		<th>도서명</th>
		<th>저자명</th>
		<th>출판일</th>
	</tr>
<c:forEach items="${bookList}" var="book">
	<tr>
		<td>${book.b_num}</td>
		<td><a href="/book/view?b_num=${book.b_num}">${book.b_title}</a></td>
		<td>${book.b_author}</td>
		<td>${book.b_credat}</td>
	</tr>
</c:forEach>
</table>
<a href="/views/book/book-insert"><button>회원추가</button></a>
</body>
</html>



