<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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
<body>
	<button onclick="location.href='tendencytest.do';">성향 검사 시작하기</button>
	<div class="printlist">
		작성 테스트 목록
		<table style="width: 50%;">
			<tr>
				<th style="width: 15%;">이름</th>
				<th style="width: 20%;">학교</th>
				<th style="width: 15%;">학년</th>
				<th style="width: 40%;">테스트일</th>
				<th>삭제</th>
			</tr>
			<c:forEach var="list" items="${TendencyList}" varStatus="status">
				<tr>
					<td onclick="location.href='tendencyresult.do?tendency_seq=${list.tendency_seq}'">
						<c:out value="${list.tendency_name}" />
					</td>
					<td>
						<c:out value="${list.tendency_school}" />
					</td>
					<td>
						<c:out value="${list.tendency_grade}" />
					</td>
					<td>
						<fmt:formatDate value="${list.test_date}" pattern="yyyy-MM-dd HH:mm" />
					</td>
					<td>
						<button class="deletebtn" value="${list.tendency_seq}">삭제</button>
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
		location.href='tendencydelete.do?tendency_seq=' + seq;
	});
});
</script>