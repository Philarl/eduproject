<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.docedu.web.admin.vo.CarrotVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body{
	margin:0;
}
img{
	width:100%;
	vertical-align:middle;
}
.card-body{
	position:relative !important;
	padding:0 !important;
}
.dayarea{
	position: absolute;
    top: 3.6%;
    right: 6.7%;
    width: 15%;
    text-align:center;
    font-size: 2.6783vw;
}
.classarea{
    position: absolute;
    top: 13.8%;
    right: 22%;
    width: 20%;
    height: 3.4vw;
    text-align:center;
    font-size:2.6783vw;
}
.namearea{
    position: absolute;
    top: 30%;
    left: 24.5%;
    width: 15.5%;
    font-size: 2.6783vw;
    text-align: center;
    height: 3.2vw;
}
.booksarea{
    position: absolute;
    top: 30%;
    right: 14%;
    width: 27%;
    height: 3vw;
    text-align: center;
    font-size: 2.6783vw;
}
.memorization{
    position: absolute;
    top: 52.7%;
    left: 29%;
    width: 18.8%;
    height: 6vw;
    text-align: center;
    font-size: 3.5vw;
}
.speechcheck{
    position: absolute;
    top: 52.7%;
    left: 67.8%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.readcheck{
    position: absolute;
    top: 58.8%;
    left: 29%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.transcheck{
    position: absolute;
    top: 58.8%;
    left: 67.8%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.solvingcheck{
    position: absolute;
    top: 64.6%;
    left: 29%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.listencheck{
    position: absolute;
    top: 65%;
    left: 67.8%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.gettingcheck{
    position: absolute;
    top: 70.4%;
    left: 29%;
    width: 18.8%;
    height: 6.1vw;
    text-align:center;
    font-size:1.5vw;
}
.gettingbox{
	width: 100%;
    border: 0;
    resize: none;
    background-color: rgba(255,255,255,0);
    height: 100%;
    padding: 0;
    font-size:1.75vw;
    text-align:center;
}
.showdowncheck{
    position: absolute;
    top: 70.9%;
    left: 67.8%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.reportcheck{
    position: absolute;
    top: 76.4%;
    left: 29%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.perfectioncheck{
    position: absolute;
    top: 76.7%;
    left: 67.8%;
    width: 18.8%;
    height: 6vw;
    text-align:center;
    font-size:3.5vw;
}
.resultarea{
    position: absolute;
    top: 84%;
    left: 20%;
    width: 66.7%;
    height: 12.6vw;
}
.resultbox{
    width: 100%;
    height: 100%;
  	resize: none;
    font-size: 2.6783vw;
    border:0;
    background-color: rgba( 255, 255, 255, 0);
}
</style>
<body>
	<div class="card-body">
		<img class="mainheaderimg1" alt="img1" src="/resources/img/admin/carrot1.png">
        <div class="dayarea">${carrot_view.carrot_date}</div>
        <div class="classarea">${carrot_view.carrot_class}</div>
        <div class="namearea">${carrot_view.carrot_name}</div>
        <div class="booksarea">${carrot_view.carrot_books}</div>
        <div class="memorization">${carrot_view.carrot_memorization}</div>
        <div class="speechcheck">${carrot_view.carrot_speech}</div>
        <div class="readcheck">${carrot_view.carrot_read}</div>
        <div class="transcheck">${carrot_view.carrot_trans}</div>
        <div class="solvingcheck">${carrot_view.carrot_solving}</div>
        <div class="listencheck">${carrot_view.carrot_listen}P</div>
       	<div class="gettingcheck"><textarea class="gettingbox">${carrot_view.carrot_getting}</textarea></div>
        <div class="showdowncheck">${carrot_view.carrot_showdown}P</div>
        <div class="reportcheck">${carrot_view.carrot_report}</div>
        <div class="perfectioncheck">${carrot_view.carrot_perfection}</div>
        <div class="resultarea"><textarea class="resultbox">${carrot_view.carrot_result}</textarea></div>
    </div>
</body>
</html>