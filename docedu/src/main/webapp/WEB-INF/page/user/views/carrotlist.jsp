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
			<th>CARROT library</th>
		</tr>
		<c:forEach var="list" items="${CarrotList}" varStatus="status">
			<tr>
				<td onclick="location.href='carrotview.do?carrot_seq=${list.carrot_seq}'">
					<c:out value="${list.carrot_name}" />
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>