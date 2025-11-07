<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그래머캐슬</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
  .bg_img {
    background-image: url("../../../../resources/img/user/grammarCastle.png");
    background-size: contain;
    background-repeat: no-repeat;
    width: 1417px;
    height: 1001px;
  }
  tr { display: block; float: left; }
  th, td { display: block; }
</style>
</head>
<body>
  <div class="bg_img">
    <table>
      <tbody>
        <tr>
            <!--
        <c:forEach var="list" items="${list}">
          <c:forEach var="category" items="${list.CATEGORY}">
            <c:if test="${list.CORRECT eq 'Y'}"><td style="color: black;"></c:if>
            <c:if test="${list.CORRECT eq 'N'}"><td style="color: red;"></c:if>
              <c:if test="${list.CORRECT eq 'X'}"><td style="color: transparent;"></c:if>
            ${category} : ${list.Q_NO} : ${list.CORRECT}</td>
          </c:forEach>
          <c:if test="${list.Q_NO == 1}"></tr><tr></c:if>
        </c:forEach>
        -->
        </tr>
      </tbody>
    </table>
  </div>

<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
<script>
  $(document).ready(function(){
    console.log("jQuery ready");
  });
</script>
</body>
</html>