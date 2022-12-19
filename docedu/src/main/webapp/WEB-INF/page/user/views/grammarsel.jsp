<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.docedu.web.admin.vo.GrammarVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
	integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<style>
img{
	width:100%;
	vertical-align:middle;
}
.bodyarea{
	width:100%;
	position:relative;
}
.contentarea1{
	position: absolute;
    top: 9%;
    left: 4%;
    height: 40%;
    width: 44%;
}
.contentbox{
	height: 100%;
    width: 100%;
    resize: none;
    font-size:1.6783vw;
    border: 0;
}
.categoryarea1{
	position: absolute;
    left: 37.5%;
    top: 6%;
}
.categorybox{
	width: 10.8392vw;
	border: 0;
	font-size:1.1189vw;
}
.viewmorearea1{
	position: absolute;
    display: grid;
    left: 52%;
    top: 33.5%;
    height: 15%;
    width: 44%;
    grid-template-rows: auto 1fr auto 1fr;
}
.viewmorebox{
    border: 0;
    font-size: 1.6783vw;
}
.contentarea2{
	position: absolute;
    top: 55.4%;
    left: 4%;
    height: 40%;
    width: 44%;
}
.categoryarea2{
	position: absolute;
    left: 37.5%;
    top: 52.4%;
}
.viewmorearea2{
	position: absolute;
    display: grid;
    left: 52%;
    top: 79.9%;
    height: 15%;
    width: 44%;
    grid-template-rows: auto 1fr auto 1fr;
}
</style>
</head>
<body>
	<c:forEach var="list" items="${showgrammar}" varStatus="status">
		<c:choose>
			<c:when test="${list.grammar_content2 == ''}">
				<div class="bodyarea">
					<img class="mainheaderimg2" alt="img2" src="/resources/img/user/grammar2.png">
					<div class="contentarea1">
						<textarea class="contentbox" readonly>${list.grammar_content1}</textarea>
					</div>
					<div class="categoryarea1">
						<input type="text" class="categorybox" value="${list.grammar_category1}" readonly>
					</div>
					<div class="viewmorearea1">
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext1}" readonly>
						<div></div>
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext2}" readonly>
						<div></div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="bodyarea">
					<img class="mainheaderimg1" alt="img1" src="/resources/img/user/grammar1.png">
					<div class="contentarea1">
						<textarea class="contentbox" readonly>${list.grammar_content1}</textarea>
					</div>
					<div class="categoryarea1">
						<input type="text" class="categorybox" value="${list.grammar_category1}" readonly>
					</div>
					<div class="viewmorearea1">
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext1}" readonly>
						<div></div>
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext2}" readonly>
						<div></div>
					</div>
					<div class="contentarea2">
						<textarea class="contentbox" readonly>${list.grammar_content2}</textarea>
					</div>
					<div class="categoryarea2">
						<input type="text" class="categorybox" value="${list.grammar_category2}" readonly>
					</div>
					<div class="viewmorearea2">
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext3}" readonly>
						<div></div>
						<input type="text" class="viewmorebox" value="${list.grammar_viewmoretext4}" readonly>
						<div></div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</c:forEach>
</body>
</html>