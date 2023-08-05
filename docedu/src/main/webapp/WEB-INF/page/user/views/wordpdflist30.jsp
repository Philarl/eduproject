<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>단어 구구단</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="list" items="${WordpdfList}" varStatus="status">
			<tr>
				<td onclick="location.href='wordpdf30.do?wpdf_header=${list.wpdf_header}'">
					<c:out value="${list.wpdf_header}" />
				</td>
				<td onclick="location.href='wordpdfdelete.do?wpdf_header=${list.wpdf_header}'">삭제</td>
			</tr>
		</c:forEach>
	</table>
	<form method="post" action="/wordpdfdelete.do">
	<table>
		<tr>
			<th>단어 구구단 시험지</th>
		</tr>
		<c:forEach var="list" items="${WordpdfList}" varStatus="status">
			<tr>
				<td onclick="location.href='wordpdftest.do?wpdf_header=${list.wpdf_header}'">
					<c:out value="${list.wpdf_header}" />
				</td>
			</tr>
		</c:forEach>
	</table>
	</form>
</body>
</html>