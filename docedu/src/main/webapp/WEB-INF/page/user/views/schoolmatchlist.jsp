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
	<button onclick="location.href='schoolmatchtest.do';">학교 추천 테스트 시작하기</button>
	<div class="printlist">
		학교 추천 테스트 목록
		<table style="width: 40%;">
			<tr>
				<th style="width: 20%;">이름</th>
				<th style="width: 30%;">학교/학년</th>
				<th style="width: 40%;">테스트일시</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="list" items="${SchoolmatchList}" varStatus="status">
				<tr>
					<td onclick="location.href='schoolmatchresult.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<c:out value="${list.schoolmatch_name}" />
					</td>
					<td onclick="location.href='schoolmatchresult.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<c:out value="${list.schoolmatch_school}" />&nbsp;/&nbsp;<c:out value="${list.schoolmatch_grade}" />
					</td>
					<td onclick="location.href='schoolmatchresult.do?schoolmatch_seq=${list.schoolmatch_seq}'">
						<fmt:formatDate value="${list.test_date}" pattern="yyyy-MM-dd HH:mm" />
					</td>
					<td>
						<button class="deletebtn" value="${list.schoolmatch_seq}">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function(){
	$('.deletebtn').click(function(){
		const seq = $(this).val();
		console.log(seq);
		if(!confirm('선택하신 결과지를 삭제하시겠습니까?')) {
			return false;
		}
		location.href='schoolmatchdelete.do?schoolmatch_seq=' + seq;
	});
});
</script>