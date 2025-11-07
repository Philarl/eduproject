<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table, td, th {
	border: 1px solid;
	text-align: center;
	}

	table {
	width: 100%;
	border-collapse: collapse;
	}
</style>
</head>
<body>
	<button onclick="location.href='schoolmatchtestGD.do';">학교 추천 테스트 시작하기</button>
	<div class="printlist">
		학교 추천 테스트 목록
		<table style="width: 40%;">
			<tr>
				<th style="width: 30%;">이름</th>
				<th style="width: 30%;">학교/학년</th>
				<th style="width: 40%;">테스트일시</th>
			</tr>
			<c:forEach var="list" items="${SchoolmatchList}" varStatus="status">
				<tr>
					<td onclick="location.href='schoolmatchresultGD.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<c:out value="${list.schoolmatch_name}" />
					</td>
					<td onclick="location.href='schoolmatchresultGD.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<c:out value="${list.schoolmatch_school}" />&nbsp;/&nbsp;<c:out value="${list.schoolmatch_grade}" />
					</td>
					<td onclick="location.href='schoolmatchresultGD.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<fmt:formatDate value="${list.test_date}" pattern="yyyy-MM-dd HH:mm" />
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>