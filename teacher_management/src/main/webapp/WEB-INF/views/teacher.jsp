<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>반 선택</title>
<style>
    a {
        text-decoration: none;
        color: black;
    }
    .teacher_table {
        width: 80%;
        height: 80%;
    }
    td {
        width: 20vh;
        padding-top: 9vh;
        padding-bottom: 9vh;
        text-align: center;
        font-size: 20px;
        border: 1px solid black;
    }
</style>
</head>
<body>
    <table class="teacher_table">
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="0" end="4">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="5" end="9">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="10" end="14">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="15" end="19">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="20" end="24">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
        <tr>
            <c:forEach items="${c_list}" var="classVO" begin="25" end="29">
            <td><a href="/teacherReport?teacher=${teacher}&c_name=<c:out value='${classVO.c_name}' />"><c:out value="${classVO.c_name}" /></a></td>
            </c:forEach>
        </tr>
    </table>
    <button onclick="location.href='/newReport'">새 클래스 등록</button>
</body>
</html>