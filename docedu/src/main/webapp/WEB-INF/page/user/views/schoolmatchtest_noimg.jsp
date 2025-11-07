<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고교선택 매칭테스트</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</head>
<style>
* {
	margin: 0;
    padding: 0;
    font-family: sans-serif;
    box-sizing: border-box;
}
body{
    font-size:0.8333vw;
}
.bodydiv{
	margin:auto;
	width:65%;
}
div{
	margin-top:0.5208vw;
	margin-bottom:0.5208vw;
}
p{
	font-size:1.05vw;
	margin-bottom:0.5208vw;
}
.secondp{
	font-size:0.8333vw;
	color:#848484 !important;
}
table{
	font-size:1.05vw;
}
tr td:first-child{
	padding-left:0.7813vw;
	font-size:1.0417vw;
	width:22.9167vw;
}
tr td:last-child{
	display: flex;
    justify-content: space-around;
    width:37.7604vw;
}
.headertdspan{
	width:7.5521vw;
	text-align:center;
}
tr td{
	height:1.875vw;
	border: 1px solid black;
}
div.bogi {
	border: 1px solid black;
	padding: 5px;
	width: 52%;
}
div.bodydiv {
	width: 100%;
}
div.imgarea {
	width: 100%;
	position: relative;
}

div.name {
	border: none;
}
div.school {
	border: none;
}
div.phone {
	border: none;
}
div.parentphone {
	border: none;
}
.info_input {
	background: transparent;
}

@media (min-width:320px)  { /* smartphones, iPhone, portrait 480x320 phones */ 
	.t_info {
		position: absolute;
		bottom: 20rem;
		left: 10rem;
		font-size: 2rem;
	}
	.info_input {
		width: 10rem;
	}
}
@media (min-width:481px)  { /* portrait e-readers (Nook/Kindle), smaller tablets @ 600 or @ 640 wide. */ }
@media (min-width:641px)  { /* portrait tablets, portrait iPad, landscape e-readers, landscape 800x480 or 854x480 phones */ }
@media (min-width:961px)  { /* tablet, landscape iPad, lo-res laptops ands desktops */ }
@media (min-width:1025px) { /* big landscape tablets, laptops, and desktops */ }
@media (min-width:1281px) { /* hi-res laptops and desktops */ }


img.page1 {
	width: 100%;
	object-fit: contain;
}
div.mainpage {
	background-image: url(../../../../resources/img/user/schoolmatchtest.png);
	background-size: 100%;
	background-repeat: no-repeat;
	padding-top: 100px;
	padding-left: 10px;
	height: 2700px;
}
</style>
<body>
	<div class="bodydiv">
		<div class="imgarea">
			<img class="page1" src="../../../../resources/img/user/schoolmatchtest1.png">
			<table class="t_info">
				<tbody>
					<tr>
						<th class="info_head" scope="row">이름</th>
						<td>
							<div class="name">
								<input class="info_input" id="schoolmatch_name">
							</div>
						</td>
					</tr>
					<tr>
						<th class="info_head" scope="row">학교/학년</th>
						<td>
							<div class="school">
								<input class="info_input" id="schoolmatch_school">
								<span>&nbsp;/&nbsp;</span>
								<input class="info_input" id="schoolmatch_grade">
							</div>
						</td>
					</tr>
					<tr>
						<th class="info_head" scope="row">학부모 연락처</th>
						<td>
							<div class="parentphone">
								<input class="info_input" id="schoolmatch_parentphone1">
								<span>&nbsp;-&nbsp;</span>
								<input class="info_input" id="schoolmatch_parentphone2">
								<span>&nbsp;-&nbsp;</span>
								<input class="info_input" id="schoolmatch_parentphone3">
							</div>
						</td>
					</tr>
					<tr>
						<th class="info_head" scope="row">학생 연락처</th>
						<td>	
							<div class="phone">
								<input class="info_input" id="schoolmatch_phone1">
								<span>&nbsp;-&nbsp;</span>
								<input class="info_input" id="schoolmatch_phone2">
								<span>&nbsp;-&nbsp;</span>
								<input class="info_input" id="schoolmatch_phone3">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="mainpage">
			<div class="agree">
				<p>▶ 위 내용은 정확한 결과물 제공을 위해 김지민영어 소속 본사인 (주) 헤듀컴퍼니와 리더스가 관련 정보를 활용함에 동의합니다.</p>
				<input type="radio" name="agreeradio" value="동의"> 동의
			</div>
			<div class="interestgirl">
				<p>2-1. (여학생만 체크) 관심있는 학교 체크</p>
				<p class="secondp">(복수체크가능)</p>
				<input type="checkbox" class="girlcheck" name="girlcheck" value="외고"> 외고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="영재과고"> 영재과고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="자사고"> 자사고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="불암고"> 불암고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="상명고"> 상명고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="대진여고"> 대진여고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="청원여고"> 청원여고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="영신여고"> 영신여고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="용화여고"> 용화여고 
				<input type="checkbox" class="girlcheck" name="girlcheck" value="없음"> 없음
			</div>
			<br>
			<div class="interestboy">
				<p>2-2. (남학생만 체크) 관심있는 학교 체크</p>
				<p class="secondp">(복수체크가능)</p>
				<input type="checkbox" class="boycheck" name="boycheck" value="외고"> 외고 
				<input type="checkbox" class="boycheck" name="boycheck" value="영재과고"> 영재과고 
				<input type="checkbox" class="boycheck" name="boycheck" value="자사고"> 자사고 
				<input type="checkbox" class="boycheck" name="boycheck" value="불암고"> 불암고 
				<input type="checkbox" class="boycheck" name="boycheck" value="상명고"> 상명고 
				<input type="checkbox" class="boycheck" name="boycheck" value="대진고"> 대진고 
				<input type="checkbox" class="boycheck" name="boycheck" value="서라벌고"> 서라벌고 
				<input type="checkbox" class="boycheck" name="boycheck" value="재현고"> 재현고 
				<input type="checkbox" class="boycheck" name="boycheck" value="청원고"> 청원고 
				<input type="checkbox" class="boycheck" name="boycheck" value="없음"> 없음
			</div>
			<br>
			<div class="mominfor">
				<p>3. 어머님의 직장 맘 여부</p>
				<input type="radio" name="momradio" value="yes"> 예 <input type="radio" name="momradio" value="no"> 아니오
			</div>
			<br>
			<div class="consultingtime">
				<p>4. 상담 가능한 시간대 체크</p>
				<p class="secondp">(복수체크가능)</p>
				<input type="checkbox" class="consultingcheck" name="consultingcheck" value="평일낮시간대"> 평일 낮 시간대 
				<input type="checkbox" class="consultingcheck" name="consultingcheck" value="평일오후시간대"> 평일 오후 시간대 
				<input type="checkbox" class="consultingcheck" name="consultingcheck" value="주말낮시간대"> 주말 낮 시간대 
				<input type="checkbox" class="consultingcheck" name="consultingcheck" value="주말오후시간대"> 주말 오후 시간대 
			</div>
			<br>
			<div class="test1">
				<p>5. 고등교육과정 선택과목 선호도 조사</p>
				<p class="secondp">아래 관심이 많은 쪽에 체크해주세요</p>
				<table>
					<thead>
						<tr>
							<td></td>
							<td>
								<span class="headertdspan">전혀없음</span>
								<span class="headertdspan">관심약간있음</span>
								<span class="headertdspan">관심많음</span>
								<span class="headertdspan">관심매우많음</span>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>음악</td>
							<td>
								<input type="radio" name="test1-1" value="0">
								<input type="radio" name="test1-1" value="0.1">
								<input type="radio" name="test1-1" value="0.5">
								<input type="radio" name="test1-1" value="1">
							</td>
						</tr>
						<tr>
							<td>체육활동</td>
							<td>
								<input type="radio" name="test1-2" value="0">
								<input type="radio" name="test1-2" value="0.1">
								<input type="radio" name="test1-2" value="0.5">
								<input type="radio" name="test1-2" value="1">
							</td>
						</tr>
						<tr>
							<td>미술창작</td>
							<td>
								<input type="radio" name="test1-3" value="0">
								<input type="radio" name="test1-3" value="0.1">
								<input type="radio" name="test1-3" value="0.5">
								<input type="radio" name="test1-3" value="1">
							</td>
						</tr>
						<tr>
							<td>IT 코딩</td>
							<td>
								<input type="radio" name="test1-4" value="0">
								<input type="radio" name="test1-4" value="0.1">
								<input type="radio" name="test1-4" value="0.5">
								<input type="radio" name="test1-4" value="1">
							</td>
						</tr>
						<tr>
							<td>AI 인공지능</td>
							<td>
								<input type="radio" name="test1-5" value="0">
								<input type="radio" name="test1-5" value="0.1">
								<input type="radio" name="test1-5" value="0.5">
								<input type="radio" name="test1-5" value="1">
							</td>
						</tr>
						<tr>
							<td>기계공학</td>
							<td>
								<input type="radio" name="test1-6" value="0">
								<input type="radio" name="test1-6" value="0.1">
								<input type="radio" name="test1-6" value="0.5">
								<input type="radio" name="test1-6" value="1">
							</td>
						</tr>
						<tr>
							<td>경영분야</td>
							<td>
								<input type="radio" name="test1-7" value="0">
								<input type="radio" name="test1-7" value="0.1">
								<input type="radio" name="test1-7" value="0.5">
								<input type="radio" name="test1-7" value="1">
							</td>
						</tr>
						<tr>
							<td>일본어</td>
							<td>
								<input type="radio" name="test1-8" value="0">
								<input type="radio" name="test1-8" value="0.1">
								<input type="radio" name="test1-8" value="0.5">
								<input type="radio" name="test1-8" value="1">
							</td>
						</tr>
						<tr>
							<td>중국어</td>
							<td>
								<input type="radio" name="test1-9" value="0">
								<input type="radio" name="test1-9" value="0.1">
								<input type="radio" name="test1-9" value="0.5">
								<input type="radio" name="test1-9" value="1">
							</td>
						</tr>
						<tr>
							<td>교육학</td>
							<td>
								<input type="radio" name="test1-10" value="0">
								<input type="radio" name="test1-10" value="0.1">
								<input type="radio" name="test1-10" value="0.5">
								<input type="radio" name="test1-10" value="1">
							</td>
						</tr>
						<tr>
							<td>심리학, 철학</td>
							<td>
								<input type="radio" name="test1-11" value="0">
								<input type="radio" name="test1-11" value="0.1">
								<input type="radio" name="test1-11" value="0.5">
								<input type="radio" name="test1-11" value="1">
							</td>
						</tr>
						<tr>
							<td>논술</td>
							<td>
								<input type="radio" name="test1-12" value="0">
								<input type="radio" name="test1-12" value="0.1">
								<input type="radio" name="test1-12" value="0.5">
								<input type="radio" name="test1-12" value="1">
							</td>
						</tr>
						<tr>
							<td>실용경제</td>
							<td>
								<input type="radio" name="test1-13" value="0">
								<input type="radio" name="test1-13" value="0.1">
								<input type="radio" name="test1-13" value="0.5">
								<input type="radio" name="test1-13" value="1">
							</td>
						</tr>
						<tr>
							<td>환경</td>
							<td>
								<input type="radio" name="test1-14" value="0">
								<input type="radio" name="test1-14" value="0.1">
								<input type="radio" name="test1-14" value="0.5">
								<input type="radio" name="test1-14" value="1">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br>
			<div class="test2">
				<p>6. 나의 학업상황에 대해 정확히 체크해주세요</p>
				<p class="secondp">평소 느끼던 바를 빠르게 체크해주세요</p>
				<table>
					<thead>
						<tr>
							<td></td>
							<td>
								<span class="headertdspan">매우아니다</span>
								<span class="headertdspan">아니다</span>
								<span class="headertdspan">보통이다</span>
								<span class="headertdspan">그렇다</span>
								<span class="headertdspan">매우그렇다</span>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>고3수능영어 2등급이상</td>
							<td>
								<input type="radio" name="test2-1" value="2">
								<input type="radio" name="test2-1" value="4">
								<input type="radio" name="test2-1" value="6">
								<input type="radio" name="test2-1" value="8">
								<input type="radio" name="test2-1" value="10">
							</td>
						</tr>
						<tr>
							<td>고등수능영단어 2권이상 마스터</td>
							<td>
								<input type="radio" name="test2-2" value="2">
								<input type="radio" name="test2-2" value="4">
								<input type="radio" name="test2-2" value="6">
								<input type="radio" name="test2-2" value="8">
								<input type="radio" name="test2-2" value="10">
							</td>
						</tr>
						<tr>
							<td>고1과정의 수학 모두 선행</td>
							<td>
								<input type="radio" name="test2-3" value="2">
								<input type="radio" name="test2-3" value="4">
								<input type="radio" name="test2-3" value="6">
								<input type="radio" name="test2-3" value="8">
								<input type="radio" name="test2-3" value="10">
							</td>
						</tr>
						<tr>
							<td>고3수능수리영역 2등급이상</td>
							<td>
								<input type="radio" name="test2-4" value="2">
								<input type="radio" name="test2-4" value="4">
								<input type="radio" name="test2-4" value="6">
								<input type="radio" name="test2-4" value="8">
								<input type="radio" name="test2-4" value="10">
							</td>
						</tr>
						<tr>
							<td>수능언어영역 1회독</td>
							<td>
								<input type="radio" name="test2-5" value="2">
								<input type="radio" name="test2-5" value="4">
								<input type="radio" name="test2-5" value="6">
								<input type="radio" name="test2-5" value="8">
								<input type="radio" name="test2-5" value="10">
							</td>
						</tr>
						<tr>
							<td>고1 국어 비문학파트 2회독</td>
							<td>
								<input type="radio" name="test2-6" value="2">
								<input type="radio" name="test2-6" value="4">
								<input type="radio" name="test2-6" value="6">
								<input type="radio" name="test2-6" value="8">
								<input type="radio" name="test2-6" value="10">
							</td>
						</tr>
						<tr>
							<td>고1 국어 문학파트 2회독</td>
							<td>
								<input type="radio" name="test2-7" value="2">
								<input type="radio" name="test2-7" value="4">
								<input type="radio" name="test2-7" value="6">
								<input type="radio" name="test2-7" value="8">
								<input type="radio" name="test2-7" value="10">
							</td>
						</tr>
						<tr>
							<td>사탐 1회독</td>
							<td>
								<input type="radio" name="test2-8" value="2">
								<input type="radio" name="test2-8" value="4">
								<input type="radio" name="test2-8" value="6">
								<input type="radio" name="test2-8" value="8">
								<input type="radio" name="test2-8" value="10">
							</td>
						</tr>
						<tr>
							<td>과탐 1회독</td>
							<td>
								<input type="radio" name="test2-9" value="2">
								<input type="radio" name="test2-9" value="4">
								<input type="radio" name="test2-9" value="6">
								<input type="radio" name="test2-9" value="8">
								<input type="radio" name="test2-9" value="10">
							</td>
						</tr>
						<tr>
							<td>음악전공자</td>
							<td>
								<input type="radio" name="test2-10" value="40">
								<input type="radio" name="test2-10" value="60">
								<input type="radio" name="test2-10" value="70">
								<input type="radio" name="test2-10" value="80">
								<input type="radio" name="test2-10" value="90">
							</td>
						</tr>
						<tr>
							<td>체육전공자</td>
							<td>
								<input type="radio" name="test2-11" value="40">
								<input type="radio" name="test2-11" value="60">
								<input type="radio" name="test2-11" value="70">
								<input type="radio" name="test2-11" value="80">
								<input type="radio" name="test2-11" value="90">
							</td>
						</tr>
						<tr>
							<td>미술전공자</td>
							<td>
								<input type="radio" name="test2-12" value="40">
								<input type="radio" name="test2-12" value="60">
								<input type="radio" name="test2-12" value="70">
								<input type="radio" name="test2-12" value="80">
								<input type="radio" name="test2-12" value="90">
							</td>
						</tr>
						<tr>
							<td>초등고학년부터 선행시작</td>
							<td>
								<input type="radio" name="test2-13" value="40">
								<input type="radio" name="test2-13" value="60">
								<input type="radio" name="test2-13" value="70">
								<input type="radio" name="test2-13" value="80">
								<input type="radio" name="test2-13" value="90">
							</td>
						</tr>
						<tr>
							<td>국영수등 주요과목 학원, 과외 진행중</td>
							<td>
								<input type="radio" name="test2-14" value="40">
								<input type="radio" name="test2-14" value="60">
								<input type="radio" name="test2-14" value="70">
								<input type="radio" name="test2-14" value="80">
								<input type="radio" name="test2-14" value="90">
							</td>
						</tr>
						<tr>
							<td>3개월이상 독학한 적 있음</td>
							<td>
								<input type="radio" name="test2-15" value="40">
								<input type="radio" name="test2-15" value="60">
								<input type="radio" name="test2-15" value="70">
								<input type="radio" name="test2-15" value="80">
								<input type="radio" name="test2-15" value="90">
							</td>
						</tr>
						<tr>
							<td>주요과목 고1과정 2회독</td>
							<td>
								<input type="radio" name="test2-16" value="1">
								<input type="radio" name="test2-16" value="2">
								<input type="radio" name="test2-16" value="3">
								<input type="radio" name="test2-16" value="4">
								<input type="radio" name="test2-16" value="5">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="mainpage">
			<div class="test3">
				<p>7. 나의 성향에 대한 부분을 솔직하게 답해주세요</p>
				<p class="secondp">평소 느끼던 바를 빠르게 체크해주세요</p>
				<table>
					<thead>
						<tr>
							<td></td>
							<td>
								<span class="headertdspan">매우아니다</span>
								<span class="headertdspan">아니다</span>
								<span class="headertdspan">보통이다</span>
								<span class="headertdspan">그렇다</span>
								<span class="headertdspan">매우그렇다</span>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>어른들에게 공손함</td>
							<td>
								<input type="radio" name="test3-1" value="40">
								<input type="radio" name="test3-1" value="60">
								<input type="radio" name="test3-1" value="70">
								<input type="radio" name="test3-1" value="80">
								<input type="radio" name="test3-1" value="90">
							</td>
						</tr>
						<tr>
							<td>매사에 주도적이다</td>
							<td>
								<input type="radio" name="test3-2" value="40">
								<input type="radio" name="test3-2" value="60">
								<input type="radio" name="test3-2" value="70">
								<input type="radio" name="test3-2" value="80">
								<input type="radio" name="test3-2" value="90">
							</td>
						</tr>
						<tr>
							<td>SNS를 잘 활용함</td>
							<td>
								<input type="radio" name="test3-3" value="40">
								<input type="radio" name="test3-3" value="60">
								<input type="radio" name="test3-3" value="70">
								<input type="radio" name="test3-3" value="80">
								<input type="radio" name="test3-3" value="90">
							</td>
						</tr>
						<tr>
							<td>창의성이 뛰어나다</td>
							<td>
								<input type="radio" name="test3-4" value="40">
								<input type="radio" name="test3-4" value="60">
								<input type="radio" name="test3-4" value="70">
								<input type="radio" name="test3-4" value="80">
								<input type="radio" name="test3-4" value="90">
							</td>
						</tr>
						<tr>
							<td>남에게 싫은소리 들으면 잠을 못잠</td>
							<td>
								<input type="radio" name="test3-5" value="40">
								<input type="radio" name="test3-5" value="60">
								<input type="radio" name="test3-5" value="70">
								<input type="radio" name="test3-5" value="80">
								<input type="radio" name="test3-5" value="90">
							</td>
						</tr>
						<tr>
							<td>침착하고 차분하다</td>
							<td>
								<input type="radio" name="test3-6" value="40">
								<input type="radio" name="test3-6" value="60">
								<input type="radio" name="test3-6" value="70">
								<input type="radio" name="test3-6" value="80">
								<input type="radio" name="test3-6" value="90">
							</td>
						</tr>
						<tr>
							<td>모르는 문제는 끝까지 해결한다</td>
							<td>
								<input type="radio" name="test3-7" value="40">
								<input type="radio" name="test3-7" value="60">
								<input type="radio" name="test3-7" value="70">
								<input type="radio" name="test3-7" value="80">
								<input type="radio" name="test3-7" value="90">
							</td>
						</tr>
						<tr>
							<td>문제생길 일은 끼어들지 않는다</td>
							<td>
								<input type="radio" name="test3-8" value="40">
								<input type="radio" name="test3-8" value="60">
								<input type="radio" name="test3-8" value="70">
								<input type="radio" name="test3-8" value="80">
								<input type="radio" name="test3-8" value="90">
							</td>
						</tr>
						<tr>
							<td>선행이 매우 잘 되어있다</td>
							<td>
								<input type="radio" name="test3-9" value="1">
								<input type="radio" name="test3-9" value="2">
								<input type="radio" name="test3-9" value="3">
								<input type="radio" name="test3-9" value="4">
								<input type="radio" name="test3-9" value="5">
							</td>
						</tr>
						<tr>
							<td>어렸을 때부터 학원을 많이 다님</td>
							<td>
								<input type="radio" name="test3-10" value="1">
								<input type="radio" name="test3-10" value="2">
								<input type="radio" name="test3-10" value="3">
								<input type="radio" name="test3-10" value="4">
								<input type="radio" name="test3-10" value="5">
							</td>
						</tr>
						<tr>
							<td>성적이 매우 좋다</td>
							<td>
								<input type="radio" name="test3-11" value="1">
								<input type="radio" name="test3-11" value="2">
								<input type="radio" name="test3-11" value="3">
								<input type="radio" name="test3-11" value="4">
								<input type="radio" name="test3-11" value="5">
							</td>
						</tr>
						<tr>
							<td>공부를 많이 시켜서 대학에 잘 들어가면 좋겠다</td>
							<td>
								<input type="radio" name="test3-12" value="40">
								<input type="radio" name="test3-12" value="60">
								<input type="radio" name="test3-12" value="70">
								<input type="radio" name="test3-12" value="80">
								<input type="radio" name="test3-12" value="90">
							</td>
						</tr>
						<tr>
							<td>공부보다는 다른 활동도 많이 하고 싶다</td>
							<td>
								<input type="radio" name="test3-13" value="40">
								<input type="radio" name="test3-13" value="60"> <!--  -->
								<input type="radio" name="test3-13" value="70">
								<input type="radio" name="test3-13" value="80">
								<input type="radio" name="test3-13" value="90">
							</td>
						</tr>
						<tr>
							<td>정적인것보다 동적인것이 좋다</td>
							<td>
								<input type="radio" name="test3-14" value="40">
								<input type="radio" name="test3-14" value="60"> <!--  -->
								<input type="radio" name="test3-14" value="70">
								<input type="radio" name="test3-14" value="80">
								<input type="radio" name="test3-14" value="90">
							</td>
						</tr>
						<tr>
							<td>하나를 끝내야 다음 과목으로 넘어간다</td>
							<td>
								<input type="radio" name="test3-15" value="40">
								<input type="radio" name="test3-15" value="60">
								<input type="radio" name="test3-15" value="70">
								<input type="radio" name="test3-15" value="80">
								<input type="radio" name="test3-15" value="90">
							</td>
						</tr>
						<tr>
							<td>자투리시간을 잘 활용한다</td>
							<td>
								<input type="radio" name="test3-16" value="40">
								<input type="radio" name="test3-16" value="60">
								<input type="radio" name="test3-16" value="70">
								<input type="radio" name="test3-16" value="80">
								<input type="radio" name="test3-16" value="90">
							</td>
						</tr>
						<tr>
							<td>숙제를 다해야 맘이 편하다</td>
							<td>
								<input type="radio" name="test3-17" value="40">
								<input type="radio" name="test3-17" value="60">
								<input type="radio" name="test3-17" value="70">
								<input type="radio" name="test3-17" value="80">
								<input type="radio" name="test3-17" value="90">
							</td>
						</tr>
						<tr>
							<td>혼자있을 때 공부가 더 잘 된다</td>
							<td>
								<input type="radio" name="test3-18" value="40">
								<input type="radio" name="test3-18" value="60">
								<input type="radio" name="test3-18" value="70">
								<input type="radio" name="test3-18" value="80">
								<input type="radio" name="test3-18" value="90">
							</td>
						</tr>
						<tr>
							<td>봉사 등의 창체활동을 좋아한다</td>
							<td>
								<input type="radio" name="test3-19" value="40">
								<input type="radio" name="test3-19" value="60">
								<input type="radio" name="test3-19" value="70"><!--  -->
								<input type="radio" name="test3-19" value="80">
								<input type="radio" name="test3-19" value="90">
							</td>
						</tr>
						<tr>
							<td>월 2번은 스스로 독서한다</td>
							<td>
								<input type="radio" name="test3-20" value="40">
								<input type="radio" name="test3-20" value="60">
								<input type="radio" name="test3-20" value="70">
								<input type="radio" name="test3-20" value="80">
								<input type="radio" name="test3-20" value="90">
							</td>
						</tr>
						<tr>
							<td>자기주도학습이 잘 되어 있다</td>
							<td>
								<input type="radio" name="test3-21" value="40">
								<input type="radio" name="test3-21" value="60">
								<input type="radio" name="test3-21" value="70">
								<input type="radio" name="test3-21" value="80">
								<input type="radio" name="test3-21" value="90">
							</td>
						</tr>
						<tr>
							<td>가정에서 학습써포트가 잘 되어있다</td>
							<td>
								<input type="radio" name="test3-22" value="40">
								<input type="radio" name="test3-22" value="60">
								<input type="radio" name="test3-22" value="70">
								<input type="radio" name="test3-22" value="80">
								<input type="radio" name="test3-22" value="90">
							</td>
						</tr>
						<tr>
							<td>집안에서 비교되는 형제자매가 있다</td>
							<td>
								<input type="radio" name="test3-23" value="40">
								<input type="radio" name="test3-23" value="60">
								<input type="radio" name="test3-23" value="70">
								<input type="radio" name="test3-23" value="80">
								<input type="radio" name="test3-23" value="90">
							</td>
						</tr>
						<tr>
							<td>주변에 친구가 많다</td>
							<td>
								<input type="radio" name="test3-24" value="40">
								<input type="radio" name="test3-24" value="60">
								<input type="radio" name="test3-24" value="70">
								<input type="radio" name="test3-24" value="80">
								<input type="radio" name="test3-24" value="90">
							</td>
						</tr>
						<tr>
							<td>운동을 매우 좋아한다</td>
							<td>
								<input type="radio" name="test3-25" value="40">
								<input type="radio" name="test3-25" value="60"> <!--  -->
								<input type="radio" name="test3-25" value="70">
								<input type="radio" name="test3-25" value="80">
								<input type="radio" name="test3-25" value="90">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		
	<div class="mainpage">
		<h5><span style="padding: 2px; border: 1px solid black;">국어 진단 평가</span></h5>
		- 각 문제당 50초입니다. 시간안에 집중해서 풀어주세요 - <br>
		※ 다음 글을 읽고 물음에 답하시오. <br>
		용언은 문장에서 다양한 형태로 활용하면서 주로 서술어의 역할을 하는 단어로, 동사와 형용사가 있다. 용언이 활용할 때 형태가 변하지 않는 부분을 어간이라고 하고, 형태가 변하는 부분을 어미라고 한다.<br>
		어간이나 어미는 문장에서 홀로 쓰일 수 없고, 어간 뒤에 어미가 결합하여 용언을 이룬다. 가령 ‘먹다’는 어간 ‘먹-’의 뒤에 어미 ‘-고’, ‘-어’가 각각 결합하여 ‘먹고’, ‘먹어’와 같이 활용한다. 그런데 일부 용언에서는 활용할 때 어간의 일부가 탈락하기도 한다. ‘노는’은 어간 ‘놀-’과 어미 ‘-는’이 결합하면서 ‘ㄹ’이 탈락한 경우이고, ‘커’는 어간 ‘크-’와 어미 ‘-어’가 결합하면서 ‘ㅡ’가 탈락한 경우이다.<br>
		어미는 크게 어말 어미와 선어말 어미로 구분된다. 어말 어미는 단어의 끝에 오는 어미이며, 선어말 어미는 어말 어미 앞에 오는 어미이다. ‘가다’의 활용형인 ‘가신다’, ‘가겠고’, ‘가셨던’을 어간, 선어말 어미, 어말 어미로 분석하면 아래와 같다.<br>
		<table style="text-align: center;">
			<tr>
				<th style="width: 0.1%;"></th>
				<th style="width: 19.9%;"></th>
				<th style="width: 20%;"></th>
				<th style="width: 20%;"></th>
				<th style="width: 20%;"></th>
				<th style="width: 19.9%;"></th>
				<th style="width: 0.1%;"></th>
			</tr>
			<tr>
				<td style="border: none;"></td>
				<td rowspan="2">활용형</td>
				<td rowspan="2">어간</td>
				<td colspan="2">어미</td>
				<td>어미</td>
				<td style="border: none;"></td>
			</tr>
			<tr>
				<td style="border: none;"></td>
				<td colspan="2">선어말 어미</td>
				<td>어말 어미</td>
				<td style="border: none;"></td>
			</tr>
			<tr>
				<td style="border: none;"></td>
				<td style="padding: 0px;">가신다</td>
				<td>가-</td>
				<td>-시-</td>
				<td>-</td>
				<td>-다-</td>
				<td style="border: none;"></td>
			</tr>
			<tr>
				<td style="border: none;"></td>
				<td style="padding: 0px;">가겠고</td>
				<td>가-</td>
				<td>-시-</td>
				<td>-겠-</td>
				<td>-고-</td>
				<td style="border: none;"></td>
			</tr>
			<tr>
				<td style="border: none;"></td>
				<td style="padding: 0px;">가셨던</td>
				<td>가-</td>
				<td>-시-</td>
				<td>-었-</td>
				<td>-언-</td>
				<td style="border: none;"></td>
			</tr>
		</table>
		어말 어미는 기능에 따라 종결 어미, 연결 어미, 전성 어미로 구분된다. 종결 어미는 ‘가신다’의 ‘-다’와 같이 문장을 종결하는 어미이고, 연결 어미는 ‘가겠고’의 ‘-고’와 같이 앞뒤의 말을 연결하는 어미이다. 그리고 전성 어미는 ‘가셨던’의 ‘-던’과 같이 용언이 다른 품사처럼 쓰이게 하는 어미이다. ‘-던’이나 ‘-(으)ㄴ’, ‘-는’, ‘-(으)ㄹ’ 등은 용언이 관형사처럼, ‘-게’, ‘-도록’ 등은 용언이 부사처럼, ‘-(으)ㅁ’, ‘-기’ 등은 용언이 명사처럼 쓰이게 한다.<br>
		선어말 어미는 높임이나 시제 등을 나타낼 때 쓰인다. 활용할 때 어말 어미처럼 반드시 나타나지는 않지만, 한 용언에서 서로 다른 선어말 어미가 동시에 쓰이기도 한다. 위에서 ‘가신다’, ‘가셨던’의 ‘-시-’는 높임을 나타내는 선어말 어미로, 문장의 주체를 높이는 기능을 한다. 그리고 ‘가신다’, ‘가겠고’, ‘가셨던’의 ‘-ㄴ-’, ‘-겠-’, ‘-었-’은 시제를 나타내는 선어말 어미로, 각각 현재, 미래, 과거 시제를 나타내는 기능을 한다.<br><br>
		1. 윗글의 내용으로 가장 적절한 것은?<br>
		<input type="radio" name="korean_1" value="1">① 어말 어미는 높임과 시제를 나타낸다. <br>
		<input type="radio" name="korean_1" value="2">② 어간은 어미와 달리 문장에서 홀로 쓰일 수 있다.<br>
		<input type="radio" name="korean_1" value="3">③ 선어말 어미는 용언의 활용 시 나타나지 않기도 한다. <br>
		<input type="radio" name="korean_1" value="4">④ 용언의 활용 시 형태가 변하지 않는 부분을 어미라고 한다.<br>
		<input type="radio" name="korean_1" value="5">⑤ 선어말 어미는 종결 어미, 연결 어미, 전성 어미로 구분된다.<br><br>
		2. 윗글을 바탕으로 <보기>의 ㄱ~ㅁ의 부분을 탐구한 내용으로 적절하지 않은 것은?<br>
		<div class="bogi">
			<보기><br>
			ㄱ. 어쩜 이럴 수 있니?<br>
			ㄴ. 저 꽃은 참 작지만 예쁘구나.<br>
			ㄷ. 어제는 온천에 다녀왔습니다.<br>
			ㄹ. 이제 극장으로 입장하겠어요.<br>
			ㅁ. 오늘 집 앞에서 지나가는 민수를 봤어.<br>
		</div>
		<input type="radio" name="korean_2" value="1">① ㄱ: 어간 ‘있-’에 종결 어미 ‘-니’가 결합하면서 문장을 종결하고 있다.<br>
		<input type="radio" name="korean_2" value="2">② ㄴ: 어간 ‘작-’에 연결 어미 ‘-지만’이 결합하여 앞뒤의 말을 연결하고 있다.<br>
		<input type="radio" name="korean_2" value="3">③ ㄷ: 어간 ‘다녀오-’에 선어말 어미 ‘-았-’과 ‘-습니다’가 결합하고 있다.<br>
		<input type="radio" name="korean_2" value="4">④ ㄹ: 어간 ‘입장하-’에 선어말 어미 ‘-겠-’이 결합하여 미래 시제를 나타내고 있다.<br>
		<input type="radio" name="korean_2" value="5">⑤ ㅁ: 어간 ‘지나가-’에 전성 어미 ‘-는’이 결합하여 용언이 관형사처럼 쓰이고 있다.<br><br><br>
		3. <보기>의 ‘학습 과제’를 바르게 수행하였다고 할 때, ㉠에 들어갈 단어로 적절한 것은?<br>
		<div class="bogi">
			<보기><br>
			[학습 자료]<br>
			2. 음운은 단어의 뜻을 구별해 주는 소리의 가장 작은 단위이다. 특정 언어에서 어떤 소리가 음운인지 아닌지는 최소 대립쌍을 통해 확인할 수 있다. 최소 대립쌍이란, 다른 모든 소리는 같고 단 하나의 소리 차이로 의미가 구별되는 단어의 쌍을 말한다. 예를 들어, 최소 대립쌍 ‘감’과 ‘잠’은 [ㄱ]과 [ㅈ]의 차이로 인해 의미가 구별되므로 ‘ㄱ’과 ‘ㅈ’은 서로 다른 음운이다.<br>
			<br>
			[학습 과제]<br>
			앞사람이 말한 단어와 최소 대립쌍인 단어를 말해 보자.<br>
			수영: 물  →  경수: 불  →  지영: 발 → <br>
			철수: ㉠  →  태연: 팥<br>
		</div>
		<input type="radio" name="korean_3" value="1">① 벌<br>
		<input type="radio" name="korean_3" value="2">② 밖<br>
		<input type="radio" name="korean_3" value="3">③ 쌀<br>
		<input type="radio" name="korean_3" value="4">④ 밭<br>
		<input type="radio" name="korean_3" value="5">⑤ 달<br><br><br>
		4. 다음 ‘탐구 학습지’ 활동의 결과로 적절하지 않은 것은?<br>
		<div class="bogi">
			[탐구 학습지]<br>
			1. 문장의 중의성<br>
			◦ 하나의 문장이 둘 이상의 의미로 해석되는 것<br>
			<br>
			2. 중의성 해소 방법<br>
			◦ 어순이나 서술어 변경, 쉼표나 조사 추가 등<br>
			<br>
			3. 중의성 해소하기<br>
			- 과제 : 빈칸에 적절한 말 넣기<br>
			ㄱ. 쉼표 추가 <br>
			◦ 중의적 문장: 사람을 좋아하는 친구의 강아지가 새끼를 낳았다.<br>
			◦ 전달 의도: (친구의 강아지가 사람을 좋아하는데 그 강아지가 새끼를 낳았다.) ··· a<br>
			◦ 수정 문장: (사람을 좋아하는 친구의 강아지가, 새끼를 낳았다.) ··············· b<br>
			<br>
			ㄴ. (서술어의 동작상 변경) ·················································· c <br>
			◦ 중의적 문장: 오빠가 교복을 입고 있다.<br>
			◦ 전달 의도: 오빠가 교복을 입는 동작을 진행 중이다.<br>
			◦ 수정 문장: (오빠가 교복을 입고 있었다.) ·································· d<br>
			<br>
			ㄷ. 어순 변경<br>
			◦ 중의적 문장: 나는 웃으면서 매장에 들어오는 손님에게 인사했다.<br>
			◦ 전달 의도: 내가 웃으면서 손님에게 인사를 했다. <br>
			◦ 수정 문장: (나는 매장에 들어오는 손님에게 웃으면서 인사했다.) ·············· e<br>
		</div>
		<input type="radio" name="korean_4" value="1">① a<br>
		<input type="radio" name="korean_4" value="2">② b<br>
		<input type="radio" name="korean_4" value="3">③ c<br>
		<input type="radio" name="korean_4" value="4">④ d<br>
		<input type="radio" name="korean_4" value="5">⑤ e<br><br><br>
	</div>
	<div class="mainpage">
		5. <보기>의 ㉠에 해당하는 예로 적절하지 않은 것은?<br>
		<div class="bogi">
			<보기><br>
		㉠방향 반의어는 두 단어가 공간, 이동 관계, 인간관계 등에서 상대적 관계를 형성하고 있으면서 의미상 대칭을 이루고 있는 반의어다. 일정한 방향성이 있고 한쪽이 있으면 다른 쪽도 있다는 특징이 있다. 예를 들어 ‘형’과 ‘아우’, ‘출발선’과 ‘결승선’이 방향 반의어에 해당한다.<br>
		</div>
		<input type="radio" name="korean_5" value="1">① 위, 아래 <br>
		<input type="radio" name="korean_5" value="2">② 오답, 정답<br>
		<input type="radio" name="korean_5" value="3">③ 가다, 오다<br>
		<input type="radio" name="korean_5" value="4">④ 부모, 자식<br>
		<input type="radio" name="korean_5" value="5">⑤ 왼쪽, 오른쪽<br><br><br>
		※ 다음은 학생의 발표이다. 물음에 답하시오. <br>
		안녕하세요? ‘생활 속 전통문화’에 대한 발표를 맡은 ○○○ 입니다. 저는 지난주에 매듭 팔찌를 만들며 우리 전통 매듭이 참 아름답다고 생각하여 전통 매듭에 대해 조사해 보았습니다. 그래서 오늘은 제가 △△전통문화 연구소 누리집의 자료를 통해 알게 된 내용을 여러분과 나누고 싶어서 발표를 준비했습니다. 우리나라에서는 옛날부터 매듭을 생활 속에서 장식의 용도로 많이 사용했습니다. 고구려 벽화의 초상화 속 실내 장식에서도, 조선 시대 여성들이 사용하던 노리개의 장식에서도 매듭을 발견할 수 있습니다. 그렇다면 우리나라의 전통 매듭에는 어떤 것들이 있을까요? (㉠자료1을 제시하며) 먼저 이 자료를 보시죠. 옷을 여미는 부분에 매듭이 보이시나요? 이것이 연봉매듭입니다. 연봉은 연꽃 봉오리라는 뜻으로, 자료의 아래에 있는 그림처럼 매듭의 생김새가 연봉을 닮았다고 해서 붙은 이름이에요. 연꽃은 번영의 상징으로 여겨져 온 만큼, 연봉매듭에는 자손의 번창과 풍년을 기원하는 의미가 담겨 있습니다. 매듭은 보통 장식을 위해 사용되었는데 이 매듭은 단추와 같은 역할을 하여 실용적인 목적으로 사용되었기에 단추매듭이라 부르기도 합니다. <br>
		다음으로는 가지방석매듭을 소개하겠습니다. 이 매듭은 주머니나 선추를 장식하기 위한 목적으로 많이 사용되었는데요, (㉡자료2를 제시하며) 선추는 이렇게 부채의 고리나 자루에 매다는 장식품을 이르는 말입니다. 잠시 자료의 왼쪽 아래에 있는 매듭을 보시죠. 이 매듭의 이름은 생쪽매듭이에요. 작은 원이 세 개 있는 모양이 생강과 비슷해서 붙은 이름입니다. 생쪽매듭은 많은 매듭법의 기본이 되는데요, 가지방석매듭도 이 생쪽매듭을 중심으로 하여 원 모양으로 줄줄이 이어 나가 방석 모양처럼 크게 엮어 만든 매듭입니다. 그래서 이 매듭에는 좋은 일을 줄줄이 이어 간다는 의미가 있고, 그것이 열매가 잘 맺히는 가지를 연상시킨다고 해서 가지방석매듭이라는 이름이 붙게 되었습니다. <br>
		지금까지 우리나라의 전통 매듭에 대해 알아보았습니다. 조사를 하며 주변을 살펴보니 팔찌뿐 아니라 다양한 장신구에도 전통 매듭이 활용된 것을 발견할 수 있었습니다. 여러분도 전통 매듭의 의미를 떠올리며, 우리 주변의 전통 매듭에 관심을 가져 보면 어떨까요? 이상으로 발표를 마치겠습니다.  <br><br>
		6. 위 발표자의 말하기 방식으로 적절한 것은?<br>
		<input type="radio" name="korean_6" value="1">① 청중의 공통된 경험을 환기하며 화제를 이끌어내고 있다. <br>
		<input type="radio" name="korean_6" value="2">② 발표 순서를 미리 제시하여 청중이 발표 내용을 예측하며 들을 수 있도록 한다. <br>
		<input type="radio" name="korean_6" value="3">③ 전문가의 견해를 인용하여 발표 내용의 신뢰성을 높이고 있다. <br>
		<input type="radio" name="korean_6" value="4">④ 발표 대상이 역사 속에서 변천해 온 과정을 밝혀 청중의 이해를 돕고 있다. <br>
		<input type="radio" name="korean_6" value="5">⑤ 질문하는 방식을 통해 발표 대상에 대한 청중의 관심을 당부하고 있다. <br><br>
		7. 발표자의 자료 활용 계획 중 위 발표에 반영된 것은? <br>
		<input type="radio" name="korean_7" value="1">① 조선 시대 의복에 매듭이 활용된 다양한 사례를 제시하는 데 ㉠을 활용해야겠어. <br>
		<input type="radio" name="korean_7" value="2">② 전통 매듭의 장식적 기능을 강조할 때 ㉠을 활용하면 효과적일 거야.<br>
		<input type="radio" name="korean_7" value="3">③ 청중에게 ㉡을 보여주며 가지방석매듭의 별칭도 소개해야지. <br>
		<input type="radio" name="korean_7" value="4">④ ㉠과 ㉡을 활용하여 매듭 이름의 유래를 제시하는 것이 좋겠어.<br>
		<input type="radio" name="korean_7" value="5">⑤ ㉠과 ㉡을 통해 전통 매듭의 현대적 가치를 제시해야겠어. <br><br><br>
		※ 다음 글을 읽고 물음에 답하시오. <br>
		녀석에게 고향을 배워 주겠노라 약속해 놓고도 막상 그것을 생각해 보려 하니 막연하기만 했다. 생각의 실마리가 쉽게 잡히지 않았다. 어머니가 돌아가신 후로 20년 가까운 세월 동안 한 번도 발걸음을 한 일이 없는 동백골이었다. 하나 같이 기억이 희미했다. 제법 감동 같은 걸 싣고 떠오르는 일이 없었다. 생각난 것은 내 배앓이의 시초가 됐던 학교 잡부금과 꾀배에 관한 것뿐이었다. 그러나 그것은 다시 기억을 더듬어 낼 필요가 없는 것이었다. 그것은 간밤에 이미 확인이 끝난 일이었다. 다른 것을 찾아내야 했다. 훈이 녀석을 위해서도 좀 더 행복스런 고향을 찾아내야 했다. 나는 ㉠바다를 내려다보며 그 바다와 상관하여 기억을 더듬기 시작했다.<br>
		동백골에서도 바다는 멀지 않았다. 바닷가 산비탈에 밭농사를 짓고 있어 그곳 사람들도 바다에는 무척들 익숙했다. 그러나 나는 아직도 그 바다가 어떤 식으로 내 어린 시절과 상관되고 있었는지, 또 그것에 대해 무슨 말을 할 수 있을지 마땅한 생각이 떠오르지 않았다. 모든 게 뿌옇게 멀기만 했다. 아름아름 어떤 기억이 떠오를 듯하다가도 화산 마을 앞 넓은 바다가 눈앞으로 다가오면 그것에 가려 기억 속의 것은 금세 희미하게 멀어져 버리곤 했다.<br>
		그럭저럭하다가 나는 결국 방으로 들어가 몸을 기대고 누워 버렸다. 하지만 누워서도 다시 생각을 계속했다. 다행히 눈앞에서 나를 간섭해 오는 바다가 없으니 이젠 생각이 훨씬 쉬운 것 같았다. 동백골 앞바다가 좀 더 선명하게 떠올랐다. 이윽고 한 가지 행복스런 정경이 멀리서부터 천천히 뇌리 속으로 비춰 들어왔다. 그것은 참으로 행복스런 추억이었다.<br>
		㉡바다가 있었다. 여름의 바다는 유난히 넓고 푸르게 반짝거렸다. 바다에 발뿌리를 내려 뻗은 산줄기는 어디라 할 것 없이 울창한 녹음으로 푸르게 뒤덮여 있었다. 산비탈은 대부분 밭갈이가 되어 있고, 고구마나 수수나 콩이나 목화 같은 것을 심은 여름 밭가리 가운데는 다섯 마지기 남짓한 우리 집밭뙈기도 끼여 있었다. 어머니는 여름 한철을 대개 그 다섯 마지기 여름 밭갈이로 보냈다. 아침만 되면 어머니는 김매기를 나가면서 밭머리로 나를 데려다 놓았다. 밭머리에는 푸나무꾼들이 산을 오르내리며 쉬어 가는 지게터가 있었다. 그리고 그곳엔 옛날부터 주인 없는 무덤이 하나 누워 있었다. 나는 언제나 그 인적에 씻겨 윤이 돋을 만큼 반들거리는 무덤가의 잔디밭 지게터에서 어머니를 기다리며 지냈다. 나중에 마을 사람들의 이야기를 들어 안 일이지만, 나는 내 기억의 한참 전부터도 여름이면 늘상 그 밭머리의 지게터에서 하루해를 지내곤 했댔다. 그리고 그 시기엔 어머니가 나를 업어다 쇠고삐처럼 허리에 띠를 감아 매어 놓곤 했댔다. 걸핏하면 아무 데나 기어가 흙덩이를 집어 먹고 나무 가시 같은 데에 얼굴을 자주 할퀴여 댔기 때문이라고. 어떤 때 사람들이 지게터를 지나가다 보면 나는 온몸에 오줌과 똥을 짓이겨 바른 채 배가 고파 울고 있거나, 울음을 울다울다 제풀에 지쳐 더운 뙤약볕 아래 잠이 들어 있는 것을 볼 때가 많았다고.<br>
		<br>
		[중략 줄거리] ‘나’의 고향 이야기를 들은 훈이는 ‘나’에게 고향을 찾아가지 않는 이유를 묻는다. 당황한 ‘나’는 그날 밤 심한 배앓이를 한다. 다음날 ‘나’는 차분하게 가라앉은 기분을 느끼며 기태에게 이제 화산 마을에서 떠나 서울로 가겠다고 말한다.<br>
		<br>
		“악마구리 속이라도 할 수 없지. 나를 그토록 폐허로 만든 곳이 서울이라면 내 병도 아마 그 서울 쪽에 뿌리가 있을 테니까. 뿌리를 뽑고 싶으면 싫더라도 그 뿌리가 내려진 곳으로 돌아가는 게 정직한 태돌 테구.”<br>
		“아서…… 자네 생각이 어떤 건지 모르지만, 난 아무래도 자넬 다시 서울로는 돌아가게 하고 싶지 않아. 내 집이 혹 불편해져서 그런다면 더 할 말이 없지만, 그렇더라도 서울보단 차라리 동백골이나 한번 들어가 지내보는 게 어떨까도 싶고……” <br>
		“동백골 쪽도 생각해 보지 않은 건 아니었어. 그것도 뭐 새삼스런 기대가 생겨서 그랬던 건 아니구. 기대 같은 걸로 말한다면 그건 오히려 정반대의 생각에서였다고 할까. 난 사실 지금도 그 동백골이 어떤 곳이었던가를 깡그리 잊고 있던 건 아니거든. 그런데 거기 너무 오래 발을 끊고 지내다 보니 어릴 적 일들이 터무니없는 요술을 부리려 들더구만. 그럴듯한 요술로 나를 마구 속이려 든단 말일세. 내 눈으로 다시 가서 사실을 확인해 두고 싶기도 했어. 더 이상 내게 요술을 부릴 수 없도록. 하지만 아직도 내게는 용기가 훨씬 모자란 것 같아. 고향이 어떻게 나를 두렵게 하더라도 그 현실을 현실대로 정직하게 맞부딪쳐 들어갈 수 있는 내 용기가 말일세. 당분간은 그 동백골 한 곳이라도 나를 속이게 놔두는 것이 나을 듯싶더구만. 그래야 또 자네 말대로 그 악마구리 속 같은 서울 살이를 버텨 나가기가 나을 듯싶기도 하고……” <br>
		“서울이란 할 수가 없군. 자넨 이제 진짜 서울 사람이 다되어 버린 것 같다니까……” 기태는 아직도 곧이들리지 않는 듯 허허 웃었다.<br>
		그러나 나는 이제 아무 새로운 느낌도 없었다. 어이없어하는 기태를 향해 담담하게 대답했다.<br>
		“하지만 뭐 서울에 무슨 새삼스런 기대가 있어선 물론 아니야. 그게 이를테면 유일하게 정직한 나의 삶이라는 것이겠고, 서울은 실상 그런 내 하나밖에 없는 소중한 삶의 터전인 셈이니까……” <br>
		“병은 고칠 작정이 아니군.”<br>
		기태는 그제서야 겨우 기가 꺾이기 시작했다. 그가 비로소 정색을 하며 혼잣말처럼 중얼거렸다. 그러자 나는 마지막으로 좀 더 지껄였다.<br>
		“할 수 없는 일이지. 이제 와서 알게 된 일이지만, 그건 맘대로 되는 일이 아닌 것 같거든. 살아오느라고 이 몰골로 폐허가 다 되었는데 좀 어려운 일이 아니지 않아. 이런 식으로는 어림도 없는 일이야. 난 단념했어. 그리고 이제부턴 그런 걸 불편스럽게 여기거나 부끄러워하지도 않을 것 같애. 나에겐 그 밖에 남은 게 없거든. 어떻게 보면 나는 그 많은 증세들 때문에, 그것을 건강 삼아 지금까지 살아왔던 것 같기도 하구. 고칠 수도 없고 굳이 고치려고 하지도 않겠어. 마음에 들진 않지만 이게 살아 있는 내 진짜 얼굴이거든. 그렇다면 난 다시 서울을 찾아 들어가는 것이 새삼스럽게 두려워질 일도 아니겠고, 자 그럼……” <br>
		- 이청준, ｢귀향 연습｣ -<br><br>
		8. 윗글에 대한 이해로 적절하지 않은 것은?<br>
		<input type="radio" name="korean_8" value="1">① 기태는 ‘나’가 서울에 간다고 말하자 처음에는 만류했다.<br>
		<input type="radio" name="korean_8" value="2">② ‘나’는 기태의 집에 오기 전에 동백골에 들를 생각이었다.<br>
		<input type="radio" name="korean_8" value="3">③ ‘나’의 배앓이는 과거 고향에서 겪은 일로부터 비롯되었다.<br>
		<input type="radio" name="korean_8" value="4">④ 어린 시절 ‘나’는 지게터에서 어머니를 기다리며 시간을 보냈다.<br>
		<input type="radio" name="korean_8" value="5">⑤ ‘나’는 바다를 바라볼 때는 동백골 앞바다에 대한 기억이 잘 떠오르지 않았다.<br><br>
		9. ㉠과 ㉡에 대한 설명으로 가장 적절한 것은?<br>
		<input type="radio" name="korean_9" value="1">① ㉠과 ㉡은 모두 인물의 위기감을 고조하는 공간이다.<br>
		<input type="radio" name="korean_9" value="2">② ㉠과 ㉡은 모두 인물이 자신의 허위의식을 인식하는 공간이다.<br>
		<input type="radio" name="korean_9" value="3">③ ㉠은 인물이 현재 마주하는 공간이고, ㉡은 인물이 과거에 경험했던 공간이다.<br>
		<input type="radio" name="korean_9" value="4">④ ㉠은 인물이 절망감을 느끼는 공간이고, ㉡은 인물에게 희망을 주는 공간이다.<br>
		<input type="radio" name="korean_9" value="5">⑤ ㉠은 인물이 현실과 이상의 괴리를 느끼는 공간이고, ㉡은 인물이 생각하는 이상적인 공간이다. <br><br>
		10. <보기>를 참고하여 윗글을 감상한 내용으로 적절하지 않은 것은?<br>
		<div class="bogi">
		<보기><br>
		서울을 떠나 시골에 온 ‘나’는 자신이 고향에 대해 실제적인 기억은 별로 하지 못하면서, 그 공백을 아름다운 환상으로 채우려고 한다는 것을 알게 된다. 그러나 그러한 자신의 왜곡된 인식에 대한 이유를 고민하거나 그 기저에 있는 트라우마를 극복할 준비가 아직 되어 있지 않다는 것도 깨닫게 되고, 있는 그대로의 자기 자신을 받아들이기 위해 다시 서울로 돌아가기로 결심한다.
		</div>
		<input type="radio" name="korean_10" value="1">① ‘생각의 실마리가 쉽게 잡히지 않았다’는 말을 통해서, ‘나’의 고향에 대한 기억이 선명하지 않음을 알 수 있군.<br>
		<input type="radio" name="korean_10" value="2">② ‘나’가 떠올린 ‘한 가지 행복스런 정경’은 고향과 연관된 실제적인 이미지가 아니라 왜곡되어 생성된 이미지겠군.<br>
		<input type="radio" name="korean_10" value="3">③ ‘내 눈으로 다시 가서 사실을 확인해 두고 싶’었다는 말을 통해서, ‘나’가 자기 자신이 고향을 좋은 기억으로만 채우려는 이유를 확인하고자 했음을 알 수 있군.<br>
		<input type="radio" name="korean_10" value="4">④ ‘현실을 현실대로 정직하게 맞부딪쳐 들어갈 수 있는 내 용기’가 부족하다는 것을 인정하는 데에서, ‘나’가 자신의 트라우마를 극복할 준비가 되어 있지 않음을 알 수 있군.<br>
		<input type="radio" name="korean_10" value="5">⑤ ‘그런 걸 불편스럽게 여기거나 부끄러워하지도 않을 것 같’다는 말을 통해서, ‘나’는 자신의 뒤틀린 인식에 대한 극복보다는 수용을 선택했음을 알 수 있군.<br>
	</div>
	<div class="mainpage">
		<h5><span style="padding: 2px; border: 1px solid black;">영어 진단 평가</span></h5>
		- 각 문제당 50초입니다. 시간안에 집중해서 풀어주세요 - <br>
		1. Gary Becker에 관한 다음 글의 내용과 일치하지 않는 것은?<br><br>
		Gary Becker was born in Pottsville, Pennsylvania in 1930 and grew up in Brooklyn, New York City. His father, who was not well educated, had a deep interest in financial and political issues. After graduating from high school, Becker went to Princeton University, where he majored in economics. He was dissatisfied with his economic education at Princeton University because “it didn’t seem to be handling real problems.” He earned a doctor’s degree in economics from the University of Chicago in 1955. His doctoral paper on the economics of discrimination was mentioned by the Nobel Prize Committee as an important contribution to economics. Since 1985, Becker had written a regular economics column in Business Week, explaining economic analysis and ideas to the general public. In 1992, he was awarded the Nobel Prize in economic science.<br><br>
		<input type="radio" name="english_1" value="1">① New York City의 Brooklyn에서 자랐다.<br>
		<input type="radio" name="english_1" value="2">② 아버지는 금융과 정치 문제에 깊은 관심이 있었다.<br>
		<input type="radio" name="english_1" value="3">③ Princeton University에서의 경제학 교육에 만족했다.<br>
		<input type="radio" name="english_1" value="4">④ 1955년에 경제학 박사 학위를 취득했다.<br>
		<input type="radio" name="english_1" value="5">⑤ Business Week에 경제학 칼럼을 기고했다.<br><br><br>
		2. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br><br>
		Individuals who perform at a high level in their profession often have instant credibility with others. People admire them, they want to be like them, and they feel connected to them. When they speak, others listen—even if the area of their skill has nothing to do with the advice they give. Think about a world-famous basketball player. He has made more money from endorsements than he ever did playing basketball. Is it because of his knowledge of the products he endorses? No. It’s because of what he can do with a basketball. The same can be said of an Olympic medalist swimmer. People listen to him because of what he can do in the pool. And when an actor tells us we should drive a certain car, we don’t listen because of his expertise on engines. We listen because we admire his talent. ______________ connects. If you possess a high level of ability in an area, others may desire to connect with you because of it.<br><br>
		<input type="radio" name="english_2" value="1">① Patience<br>
		<input type="radio" name="english_2" value="2">② Sacrifice<br>
		<input type="radio" name="english_2" value="3">③ Honesty<br>
		<input type="radio" name="english_2" value="4">④ Excellence<br>
		<input type="radio" name="english_2" value="5">⑤ Creativity<br><br><br>
		3. 다음 글에서 전체 흐름과 관계 없는 문장은?<br><br>
		Although technology has the potential to increase productivity, it can also have a negative impact on productivity. For example, in many office environments workers sit at desks with computers and have access to the internet. <input type="radio" name="english_3" value="1">①They are able to check their personal e-mails and use social media whenever they want to. <input type="radio" name="english_3" value="2">②This can stop them from doing their work and make them less productive. <input type="radio" name="english_3" value="3">③Introducing new technology can also have a negative impact on production when it causes a change to the production process or requires workers to learn a new system. <input type="radio" name="english_3" value="4">④Using technology can enable businesses to produce more goods and to get more out of the other factors of production. <input type="radio" name="english_3" value="5">⑤Learning to use new technology can be time consuming and stressful for workers and this can cause a decline in productivity.<br><br>
		4. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br><br>
		Managers are always looking for ways to increase productivity, which is the ratio of costs to output in production. Adam Smith, writing when the manufacturing industry was new, described a way that production could be made more efficient, known as the “division of labor.”<br><br>
		(A) Because each worker specializes in one job, he or she can work much faster without changing from one task to another. Now 10 workers can produce thousands of pins in a day—a huge increase in productivity from the 200 they would have produced before.<br>
		(B) One worker could do all these tasks, and make 20 pins in a day. But this work can be divided into its separate processes, with a number of workers each performing one task.<br>
		(C) Making most manufactured goods involves several different processes using different skills. Smith’s example was the manufacture of pins: the wire is straightened, sharpened, a head is put on, and then it is polished.<br><br>
		<input type="radio" name="english_4" value="1">① (A)-(C)-(B)<br>
		<input type="radio" name="english_4" value="2">② (B)-(A)-(C)<br>
		<input type="radio" name="english_4" value="3">③ (B)-(C)-(A)<br>
		<input type="radio" name="english_4" value="4">④ (C)-(A)-(B)<br>
		<input type="radio" name="english_4" value="5">⑤ (C)-(B)-(A)<br><br><br>
		5. 다음 글의 내용을 한 문장으로 요약하고자 한다. 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은?<br><br>
		Nearly eight of ten U.S. adults believe there are “good foods” and “bad foods.” Unless we’re talking about spoiled stew, poison mushrooms, or something similar, however, no foods can be labeled as either good or bad. There are, however, combinations of foods that add up to a healthful or unhealthful diet. Consider the case of an adult who eats only foods thought of as “good”―for example, raw broccoli, apples, orange juice, boiled tofu, and carrots. Although all these foods are nutrient-dense, they do not add up to a healthy diet because they don’t supply a wide enough variety of the nutrients we need. Or take the case of the teenager who occasionally eats fried chicken, but otherwise stays away from fried foods. The occasional fried chicken isn’t going to knock his or her diet off track. But the person who eats fried foods every day, with few vegetables or fruits, and loads up on supersized soft drinks, candy, and chips for snacks has a bad diet.<br><br>
		=><br><br>
		Unlike the common belief, defining foods as good or bad is not (A)______________; in fact, a healthy diet is determined largely by what the diet is (B)______________.<br><br>
		<table>
			<tr>
				<th style="width: 10%;"></th>
				<th style="width: 45%; text-align: center;">(A)</th>
				<th style="width: 45%; text-align: center;">(B)</th>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_5" value="1">①</td>
				<td style="border: none; text-align: center;">incorrect</td>
				<td style="border: none; text-align: center;">limited to</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_5" value="2">②</td>
				<td style="border: none; text-align: center;">appropriate</td>
				<td style="border: none; text-align: center;">composed of</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_5" value="3">③</td>
				<td style="border: none; text-align: center;">wrong</td>
				<td style="border: none; text-align: center;">aimed at</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_5" value="4">④</td>
				<td style="border: none; text-align: center;">appropriate</td>
				<td style="border: none; text-align: center;">tested on</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_5" value="5">⑤</td>
				<td style="border: none; text-align: center;">incorrect</td>
				<td style="border: none; text-align: center;">adjusted to</td>
			</tr>
		</table><br><br><br>
		6. 다음 글의 주제로 가장 적절한 것은?<br><br>
		Education must focus on the trunk of the tree of knowledge, revealing the ways in which the branches, twigs, and leaves all emerge from a common core. Tools for thinking stem from this core, providing a common language with which practitioners in different fields may share their experience of the process of innovation and discover links between their creative activities. When the same terms are employed across the curriculum, students begin to link different subjects and classes. If they practice abstracting in writing class, if they work on abstracting in painting or drawing class, and if, in all cases, they call it abstracting, they begin to understand how to think beyond disciplinary boundaries. They see how to transform their thoughts from one mode of conception and expression to another. Linking the disciplines comes naturally when the terms and tools are presented as part of a universal imagination.<br><br>
		<input type="radio" name="english_6" value="1">① difficulties in finding meaningful links between disciplines<br>
		<input type="radio" name="english_6" value="2">② drawbacks of applying a common language to various fields<br>
		<input type="radio" name="english_6" value="3">③ effects of diversifying the curriculum on students’ creativity<br>
		<input type="radio" name="english_6" value="4">④ necessity of using a common language to integrate the curriculum<br>
		<input type="radio" name="english_6" value="5">⑤ usefulness of turning abstract thoughts into concrete expressions<br><br><br>
	</div>
	<div class="mainpage">
		7. 다음 빈칸에 들어갈 말로 가장 적절한 것을 고르시오.<br><br>
		It’s hard to pay more for the speedy but highly skilled person, simply because there’s less effort being observed. Two researchers once did a study in which they asked people how much they would pay for data recovery. They found that people would pay a little more for a greater quantity of rescued data, but what they were most sensitive to was the number of hours the technician worked. When the data recovery took only a few minutes, willingness to pay was low, but when it took more than a week to recover the same amount of data, people were willing to pay much more. Think about it: They were willing to pay more for the slower service with the same outcome. Fundamentally, when we ______________________, we’re paying for incompetence. Although it is actually irrational, we feel more rational, and more comfortable, paying for incompetence.<br><br>
		<input type="radio" name="english_7" value="1">① prefer money to time<br>
		<input type="radio" name="english_7" value="2">② ignore the hours put in<br>
		<input type="radio" name="english_7" value="3">③ value effort over outcome<br>
		<input type="radio" name="english_7" value="4">④ can’t stand any malfunction<br>
		<input type="radio" name="english_7" value="5">⑤ are biased toward the quality<br><br><br>
		8. 주어진 글 다음에 이어질 글의 순서로 가장 적절한 것을 고르시오.<br><br>
		When evaluating a policy, people tend to concentrate on how the policy will fix some particular problem while ignoring or downplaying other effects it may have. Economists often refer to this situation as The Law of Unintended Consequences.<br><br>
		(A) But an unintended consequence is that the jobs of some autoworkers will be lost to foreign competition. Why? The tariff that protects steelworkers raises the price of the steel that domestic automobile makers need to build their cars.<br>
		(B) For instance, suppose that you impose a tariff on imported steel in order to protect the jobs of domestic steelworkers. If you impose a high enough tariff, their jobs will indeed be protected from competition by foreign steel companies.<br>
		(C) As a result, domestic automobile manufacturers have to raise the prices of their cars, making them relatively less attractive than foreign cars. Raising prices tends to reduce domestic car sales, so some domestic autoworkers lose their jobs.<br>
		<input type="radio" name="english_8" value="1">① (A)-(C)-(B)<br>
		<input type="radio" name="english_8" value="2">② (B)-(A)-(C)<br>
		<input type="radio" name="english_8" value="3">③ (B)-(C)-(A)<br>
		<input type="radio" name="english_8" value="4">④ (C)-(A)-(B)<br>
		<input type="radio" name="english_8" value="5">⑤ (C)-(B)-(A)<br><br><br>
		9. 글의 흐름으로 보아, 주어진 문장이 들어가기에 가장 적절한 곳을 고르시오.<br><br>
		These healthful, non‑nutritive compounds in plants provide color and function to the plant and add to the health of the human body.<br><br>
		Why do people in the Mediterranean live longer and have a lower incidence of disease? Some people say it’s because of what they eat. Their diet is full of fresh fruits, fish, vegetables, whole grains, and nuts. Individuals in these cultures drink red wine and use great amounts of olive oil. Why is that food pattern healthy? ( <input type="radio" name="english_9" value="1">① ) One reason is that they are eating a palette of colors. ( <input type="radio" name="english_9" value="2">② ) More and more research is surfacing that shows us the benefits of the thousands of colorful “phytochemicals” (phyto=plant) that exist in foods. ( <input type="radio" name="english_9" value="3">③ ) Each color connects to a particular compound that serves a specific function in the body. ( <input type="radio" name="english_9" value="4">④ ) For example, if you don’t eat purple foods, you are probably missing out on anthocyanins, important brain protection compounds. ( <input type="radio" name="english_9" value="5">⑤ ) Similarly, if you avoid green-colored foods, you may be lacking chlorophyll, a plant antioxidant that guards your cells from damage.
		<br><br><br>
		10 . 다음 글의 내용을 한 문장으로 요약하고자 한다. 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은?<br><br>
		People behave in highly predictable ways when they experience certain thoughts. When they agree, they nod their heads. So far, no surprise, but according to an area of research known as “proprioceptive psychology,” the process also works in reverse. Get people to behave in a certain way and you cause them to have certain thoughts. The idea was initially controversial, but fortunately it was supported by a compelling experiment. Participants in a study were asked to fixate on various products moving across a large computer screen and then indicate whether the items appealed to them. Some of the items moved vertically (causing the participants to nod their heads while watching), and others moved horizontally (resulting in a side-to-side head movement). Participants preferred vertically moving products without being aware that their “yes” and “no” head movements had played a key role in their decisions.<br>
		=><br>
		In one study, participants responded (A)______________ to products on a computer screen when they moved their heads up and down, which showed that their decisions were unconsciously influenced by their (B)______________.<br><br>
		<table>
			<tr>
				<th style="width: 10%;"></th>
				<th style="width: 45%; text-align: center;">(A)</th>
				<th style="width: 45%; text-align: center;">(B)</th>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_10" value="1">①</td>
				<td style="border: none; text-align: center;">favorably</td>
				<td style="border: none; text-align: center;">behavior</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_10" value="2">②</td>
				<td style="border: none; text-align: center;">favorably</td>
				<td style="border: none; text-align: center;">instinct</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_10" value="3">③</td>
				<td style="border: none; text-align: center;">unfavorably</td>
				<td style="border: none; text-align: center;">feeling</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_10" value="4">④</td>
				<td style="border: none; text-align: center;">unfavorably</td>
				<td style="border: none; text-align: center;">gesture</td>
			</tr>
			<tr>
				<td style="border: none; text-align: center;"><input type="radio" name="english_10" value="5">⑤</td>
				<td style="border: none; text-align: center;">irrationally</td>
				<td style="border: none; text-align: center;">prejudice</td>
			</tr>
		</table><br><br><br>
	</div>
	<div class="mainpage">
			<h5><span style="padding: 2px; border: 1px solid black;">수학 진단 평가</span></h5>
			- 각 문제당 50초입니다. 시간안에 집중해서 풀어주세요 - <br>
			<img src="/resources/img/user/tendencyimg/math_1.png"><br>
			<input type="radio" name="math_1" value="1">①25/6<br>
			<input type="radio" name="math_1" value="2">②13/3<br>
			<input type="radio" name="math_1" value="3">③9/2<br>
			<input type="radio" name="math_1" value="4">④14/3<br>
			<input type="radio" name="math_1" value="5">⑤29/6<br><br><br>
			<img src="/resources/img/user/tendencyimg/math_2.png"><br>
			<input type="radio" name="math_2" value="1">①39º<br>
			<input type="radio" name="math_2" value="2">②40º<br>
			<input type="radio" name="math_2" value="3">③41º<br>
			<input type="radio" name="math_2" value="4">④42º<br>
			<input type="radio" name="math_2" value="5">⑤43º<br><br><br>
			<img src="/resources/img/user/tendencyimg/math_3.png"><br>
			<input type="radio" name="math_3" value="1">①-24<br>
			<input type="radio" name="math_3" value="2">②-22<br>
			<input type="radio" name="math_3" value="3">③-20<br>
			<input type="radio" name="math_3" value="4">④-18<br>
			<input type="radio" name="math_3" value="5">⑤-16<br><br><br>
			<img src="/resources/img/user/tendencyimg/math_4.png"><br>
			<input type="radio" name="math_4" value="1">①4<br>
			<input type="radio" name="math_4" value="2">②6<br>
			<input type="radio" name="math_4" value="3">③8<br>
			<input type="radio" name="math_4" value="4">④10<br>
			<input type="radio" name="math_4" value="5">⑤12<br><br><br>
			<img src="/resources/img/user/tendencyimg/math_5.png"><br>
			<input type="radio" name="math_5" value="1">①ㄱ<br>
			<input type="radio" name="math_5" value="2">②ㄱ, ㄴ<br>
			<input type="radio" name="math_5" value="3">③ㄱ, ㄷ<br>
			<input type="radio" name="math_5" value="4">④ㄴ, ㄷ<br>
			<input type="radio" name="math_5" value="5">⑤ㄱ, ㄴ, ㄷ<br><br><br>
	</div>
	<div class="mainpage">
		<img src="/resources/img/user/tendencyimg/math_6.png"><br>
		<input type="radio" name="math_6" value="1">①1-3i<br>
		<input type="radio" name="math_6" value="2">②1+i<br>
		<input type="radio" name="math_6" value="3">③1+3i<br>
		<input type="radio" name="math_6" value="4">④3-i<br>
		<input type="radio" name="math_6" value="5">⑤3+3i<br><br><br>
		<img src="/resources/img/user/tendencyimg/math_7.png"><br>
		<input type="radio" name="math_7" value="1">①1/3<br>
		<input type="radio" name="math_7" value="2">②2/3<br>
		<input type="radio" name="math_7" value="3">③1
		<br>
		<input type="radio" name="math_7" value="4">④4/3
		<br>
		<input type="radio" name="math_7" value="5">⑤5/3
		<br><br><br>
		<img src="/resources/img/user/tendencyimg/math_8.png"><br>
		<input type="radio" name="math_8" value="1">①5<br>
		<input type="radio" name="math_8" value="2">②6
		<br>
		<input type="radio" name="math_8" value="3">③7
		<br>
		<input type="radio" name="math_8" value="4">④8
		<br>
		<input type="radio" name="math_8" value="5">⑤9
		<br><br><br>
		<img src="/resources/img/user/tendencyimg/math_9.png"><br>
		<input type="radio" name="math_9" value="1">①-12
		<br>
		<input type="radio" name="math_9" value="2">②-10
		<br>
		<input type="radio" name="math_9" value="3">③-8
		<br>
		<input type="radio" name="math_9" value="4">④-6
		<br>
		<input type="radio" name="math_9" value="5">⑤-4
		<br><br><br>
		<img src="/resources/img/user/tendencyimg/math_10.png"><br>
		<input type="radio" name="math_10" value="1">①3
		<br>
		<input type="radio" name="math_10" value="2">②4
		<br>
		<input type="radio" name="math_10" value="3">③5
		<br>
		<input type="radio" name="math_10" value="4">④6
		<br>
		<input type="radio" name="math_10" value="5">⑤7<br><br><br>
		<button class="finishbtn">제출하기</button>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		$('.finishbtn').click(function(){
			if($('input:radio[name=agreeradio]').is(":checked") == false){
				alert("관련 정보 활용 동의는 필수입니다.");
				setTimeout(function(){$('input[name="agreeradio"]').focus();},1);
				return;
			}
			var agree = $('input[name=agreeradio]:checked').val();
			var name = $("#schoolmatch_name").val();
			if(name == ""){
				alert("이름을 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_name").focus();},1);
				return;
			}
			var school = $("#schoolmatch_school").val();
			if(school == ""){
				alert("학교를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_school").focus();},1);
				return;
			}
			var grade = $("#schoolmatch_grade").val();
			if(grade == ""){
				alert("학년을 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_grade").focus();},1);
				return;
			}
			var phone1 = $("#schoolmatch_phone1").val();
			if(phone1 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone1").focus();},1);
				return;
			}
			var phone2 = $("#schoolmatch_phone2").val();
			if(phone2 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone2").focus();},1);
				return;
			}
			var phone3 = $("#schoolmatch_phone3").val();
			if(phone3 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_phone3").focus();},1);
				return;
			}
			var parentphone1 = $("#schoolmatch_parentphone1").val();
			if(parentphone1 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone1").focus();},1);
				return;
			}
			var parentphone2 = $("#schoolmatch_parentphone2").val();
			if(parentphone2 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone2").focus();},1);
				return;
			}
			var parentphone3 = $("#schoolmatch_parentphone3").val();
			if(parentphone3 == ""){
				alert("번호를 입력해주세요.");
				setTimeout(function(){$("#schoolmatch_parentphone3").focus();},1);
				return;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == false && $('input:checkbox[name=boycheck]').is(":checked") == false){
				alert("항목을 선택해주세요.");
				setTimeout(function(){$('input[name="girlcheck"]').focus();},1);
				return;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == true && $('input:checkbox[name=boycheck]').is(":checked") == true){
				alert("6번 항목끼리 중복선택은 불가합니다.");
				setTimeout(function(){$('input[name="girlcheck"]').focus();},1);
				return;
			}
			var girlcheck = [];
			$('input[name=girlcheck]:checked').each(function(){
				var girlcheck_item = $(this).val();
				girlcheck.push(girlcheck_item);
			});
			var boycheck = [];
			$('input[name=boycheck]:checked').each(function(){
				var boycheck_item = $(this).val();
				boycheck.push(boycheck_item);
			});
			if($('input:radio[name=momradio]').is(":checked") == false){
				alert("항목을 선택해주세요.");
				setTimeout(function(){$('input[name="momradio"]').focus();},1);
				return;
			}
			var momradio = $('input[name=momradio]:checked').val();
			if($('input:checkbox[name=consultingcheck]').is(":checked") == false){
				alert("상담가능 시간을 선택해주세요.");
				setTimeout(function(){$('input[name="consultingcheck"]').focus();},1);
				return;
			}
			var consultingcheck = [];
			$('input[name=consultingcheck]:checked').each(function(){
				var consultingcheck_item = $(this).val();
				consultingcheck.push(consultingcheck_item);
			});
			if($('input:radio[name=test1-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test1-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test1-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-15]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-15"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test2-16]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test2-16"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-1]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-1"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-2]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-2"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-3]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-3"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-4]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-4"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-5]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-5"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-6]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-6"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-7]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-7"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-8]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-8"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-9]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-9"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-10]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-10"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-11]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-11"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-12]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-12"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-13]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-13"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-14]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-14"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-15]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-15"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-16]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-16"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-17]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-17"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-18]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-18"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-19]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-19"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-20]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-20"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-21]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-21"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-22]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-22"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-23]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-23"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-24]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-24"]').focus();},1);
			    return;
			}
			if($('input:radio[name=test3-25]').is(":checked") == false){
			    alert("항목을 선택해주세요.");
			    setTimeout(function(){$('input[name="test3-25"]').focus();},1);
			    return;
			}
			var test1_1 = parseFloat($('input[name=test1-1]:checked').val());
			var test1_2 = parseFloat($('input[name=test1-2]:checked').val());
			var test1_3 = parseFloat($('input[name=test1-3]:checked').val());
			var test1_4 = parseFloat($('input[name=test1-4]:checked').val());
			var test1_5 = parseFloat($('input[name=test1-5]:checked').val());
			var test1_6 = parseFloat($('input[name=test1-6]:checked').val());
			var test1_7 = parseFloat($('input[name=test1-7]:checked').val());
			var test1_8 = parseFloat($('input[name=test1-8]:checked').val());
			var test1_9 = parseFloat($('input[name=test1-9]:checked').val());
			var test1_10 = parseFloat($('input[name=test1-10]:checked').val());
			var test1_11 = parseFloat($('input[name=test1-11]:checked').val());
			var test1_12 = parseFloat($('input[name=test1-12]:checked').val());
			var test1_13 = parseFloat($('input[name=test1-13]:checked').val());
			var test1_14 = parseFloat($('input[name=test1-14]:checked').val());
			var test2_1 = parseFloat($('input[name=test2-1]:checked').val());
			var test2_2 = parseFloat($('input[name=test2-2]:checked').val());
			var test2_3 = parseFloat($('input[name=test2-3]:checked').val());
			var test2_4 = parseFloat($('input[name=test2-4]:checked').val());
			var test2_5 = parseFloat($('input[name=test2-5]:checked').val());
			var test2_6 = parseFloat($('input[name=test2-6]:checked').val());
			var test2_7 = parseFloat($('input[name=test2-7]:checked').val());
			var test2_8 = parseFloat($('input[name=test2-8]:checked').val());
			var test2_9 = parseFloat($('input[name=test2-9]:checked').val());
			var test2_10 = parseFloat($('input[name=test2-10]:checked').val());
			var test2_11 = parseFloat($('input[name=test2-11]:checked').val());
			var test2_12 = parseFloat($('input[name=test2-12]:checked').val());
			var test2_13 = parseFloat($('input[name=test2-13]:checked').val());
			var test2_14 = parseFloat($('input[name=test2-14]:checked').val());
			var test2_15 = parseFloat($('input[name=test2-15]:checked').val());
			var test2_16 = parseFloat($('input[name=test2-16]:checked').val());
			var test3_1 = parseFloat($('input[name=test3-1]:checked').val());
			var test3_2 = parseFloat($('input[name=test3-2]:checked').val());
			var test3_3 = parseFloat($('input[name=test3-3]:checked').val());
			var test3_4 = parseFloat($('input[name=test3-4]:checked').val());
			var test3_5 = parseFloat($('input[name=test3-5]:checked').val());
			var test3_6 = parseFloat($('input[name=test3-6]:checked').val());
			var test3_7 = parseFloat($('input[name=test3-7]:checked').val());
			var test3_8 = parseFloat($('input[name=test3-8]:checked').val());
			var test3_9 = parseFloat($('input[name=test3-9]:checked').val());
			var test3_10 = parseFloat($('input[name=test3-10]:checked').val());
			var test3_11 = parseFloat($('input[name=test3-11]:checked').val());
			var test3_12 = parseFloat($('input[name=test3-12]:checked').val());
			var test3_13 = parseFloat($('input[name=test3-13]:checked').val());
			var test3_14 = parseFloat($('input[name=test3-14]:checked').val());
			var test3_15 = parseFloat($('input[name=test3-15]:checked').val());
			var test3_16 = parseFloat($('input[name=test3-16]:checked').val());
			var test3_17 = parseFloat($('input[name=test3-17]:checked').val());
			var test3_18 = parseFloat($('input[name=test3-18]:checked').val());
			var test3_19 = parseFloat($('input[name=test3-19]:checked').val());
			var test3_20 = parseFloat($('input[name=test3-20]:checked').val());
			var test3_21 = parseFloat($('input[name=test3-21]:checked').val());
			var test3_22 = parseFloat($('input[name=test3-22]:checked').val());
			var test3_23 = parseFloat($('input[name=test3-23]:checked').val());
			var test3_24 = parseFloat($('input[name=test3-24]:checked').val());
			var test3_25 = parseFloat($('input[name=test3-25]:checked').val());
			var transtest3_13 = 0;
			var transtest3_14 = 0;
			var transtest3_19 = 0;
			var transtest3_25 = 0;
			if(test3_13 == 60){transtest3_13 = 0.3};
			if(test3_13 == 70){transtest3_13 = 0.5};
			if(test3_13 == 80){transtest3_13 = 0.7};
			if(test3_13 == 90){transtest3_13 = 1};
			if(test3_14 == 60){transtest3_14 = 0.3};
			if(test3_14 == 70){transtest3_14 = 0.5};
			if(test3_14 == 80){transtest3_14 = 0.7};
			if(test3_14 == 90){transtest3_14 = 1};
			if(test3_19 == 60){transtest3_19 = 0.3};
			if(test3_19 == 70){transtest3_19 = 0.5};
			if(test3_19 == 80){transtest3_19 = 0.7};
			if(test3_19 == 90){transtest3_19 = 1};
			if(test3_25 == 60){transtest3_25 = 0.3};
			if(test3_25 == 70){transtest3_25 = 0.5};
			if(test3_25 == 80){transtest3_25 = 0.7};
			if(test3_25 == 90){transtest3_25 = 1};
			
			// var prior1 = (test2_5 + test2_6 + test2_7 + test2_16 + test3_9 + test3_10 + test3_11)/10*20; //국어
			// var prior2 = (test2_3 + test2_4 + test2_16 + test3_9 + test3_10 + test3_11)/8*20;//수학
			// var prior3 = (test2_1 + test2_2 + test2_16 + test3_9 + test3_10 + test3_11)/8*20;//영어
			var prior1 = 0;
			var prior2 = 0;
			var prior3 = 0;
			var prior4 = (test2_8 + test2_16 + test3_9 + test3_10 + test3_11)/6*20;//사탐
			var prior5 = (test2_9 + test2_16 + test3_9 + test3_10 + test3_11)/6*20;//과탐
			
			var prior = 0;

			var buramplus = 0;
			var sangmyungplus = 0;
			var youngsinplus = 0;
			var daejingirlsplus = 0;
			var yonghwaplus = 0;
			var cheongwongirlsplus = 0;
			var cheongwonplus = 0;
			var daejinplus = 0;
			var jaehyunplus = 0;
			var sorabolplus = 0;
			if(girlcheck.includes('불암고')){buramplus = 10};
			if(girlcheck.includes('상명고')){sangmyungplus = 10};
			if(boycheck.includes('불암고')){buramplus = 10};
			if(boycheck.includes('상명고')){sangmyungplus = 10};
			if(girlcheck.includes('영신여고')){youngsinplus = 10};
			if(girlcheck.includes('대진여고')){daejingirlsplus = 10};
			if(girlcheck.includes('용화여고')){yonghwaplus = 10};
			if(girlcheck.includes('청원여고')){cheongwongirlsplus = 10};
			if(boycheck.includes('청원고')){cheongwonplus = 10};
			if(boycheck.includes('대진고')){daejinplus = 10};
			if(boycheck.includes('재현고')){jaehyunplus = 10};
			if(boycheck.includes('서라벌고')){sorabolplus = 10};

			let korean_1 = "";
			let korean_2 = "";
			let korean_3 = "";
			let korean_4 = "";
			let korean_5 = "";
			let korean_6 = "";
			let korean_7 = "";
			let korean_8 = "";
			let korean_9 = "";
			let korean_10 = "";
			let english_1 = "";
			let english_2 = "";
			let english_3 = "";
			let english_4 = "";
			let english_5 = "";
			let english_6 = "";
			let english_7 = "";
			let english_8 = "";
			let english_9 = "";
			let english_10 = "";
			let math_1 = "";
			let math_2 = "";
			let math_3 = "";
			let math_4 = "";
			let math_5 = "";
			let math_6 = "";
			let math_7 = "";
			let math_8 = "";
			let math_9 = "";
			let math_10 = "";
			// let test_answer = $('input:radio[name="english_1"]:checked').val();

			if($('input:radio[name="korean_1"]:checked').val() == 3) {
				korean_1 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_1 = 'X';
			}
			if($('input:radio[name="korean_2"]:checked').val() == 3) {
				korean_2 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_2 = 'X';
			}
			if($('input:radio[name="korean_3"]:checked').val() == 4) {
				korean_3 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_3 = 'X';
			}
			if($('input:radio[name="korean_4"]:checked').val() == 4) {
				korean_4 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_4 = 'X';
			}
			if($('input:radio[name="korean_5"]:checked').val() == 2) {
				korean_5 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_5 = 'X';
			}
			if($('input:radio[name="korean_6"]:checked').val() == 5) {
				korean_6 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_6 = 'X';
			}
			if($('input:radio[name="korean_7"]:checked').val() == 4) {
				korean_7 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_7 = 'X';
			}
			if($('input:radio[name="korean_8"]:checked').val() == 2) {
				korean_8 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_8 = 'X';
			}
			if($('input:radio[name="korean_9"]:checked').val() == 3) {
				korean_9 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_9 = 'X';
			}
			if($('input:radio[name="korean_10"]:checked').val() == 3) {
				korean_10 = 'O';
				prior = prior + 3.3;
				prior1 = prior1 + 10;
			} else {
				korean_10 = 'X';
			}
			if($('input:radio[name="english_1"]:checked').val() == 3) {
				english_1 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_1 = 'X';
			}
			if($('input:radio[name="english_2"]:checked').val() == 4) {
				english_2 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_2 = 'X';
			}
			if($('input:radio[name="english_3"]:checked').val() == 4) {
				english_3 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_3 = 'X';
			}
			if($('input:radio[name="english_4"]:checked').val() == 5) {
				english_4 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_4 = 'X';
			}
			if($('input:radio[name="english_5"]:checked').val() == 2) {
				english_5 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_5 = 'X';
			}
			if($('input:radio[name="english_6"]:checked').val() == 4) {
				english_6 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_6 = 'X';
			}
			if($('input:radio[name="english_7"]:checked').val() == 3) {
				english_7 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_7 = 'X';
			}
			if($('input:radio[name="english_8"]:checked').val() == 2) {
				english_8 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_8 = 'X';
			}
			if($('input:radio[name="english_9"]:checked').val() == 3) {
				english_9 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_9 = 'X';
			}
			if($('input:radio[name="english_10"]:checked').val() == 1) {
				english_10 = 'O';
				prior = prior + 5;
				prior3 = prior3 + 10;
			} else {
				english_10 = 'X';
			}
			if($('input:radio[name="math_1"]:checked').val() == 3) {
				math_1 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_1 = 'X';
			}
			if($('input:radio[name="math_2"]:checked').val() == 4) {
				math_2 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_2 = 'X';
			}
			if($('input:radio[name="math_3"]:checked').val() == 1) {
				math_3 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_3 = 'X';
			}
			if($('input:radio[name="math_4"]:checked').val() == 3) {
				math_4 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_4 = 'X';
			}
			if($('input:radio[name="math_5"]:checked').val() == 5) {
				math_5 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_5 = 'X';
			}
			if($('input:radio[name="math_6"]:checked').val() == 5) {
				math_6 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_6 = 'X';
			}
			if($('input:radio[name="math_7"]:checked').val() == 4) {
				math_7 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_7 = 'X';
			}
			if($('input:radio[name="math_8"]:checked').val() == 3) {
				math_8 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_8 = 'X';
			}
			if($('input:radio[name="math_9"]:checked').val() == 1) {
				math_9 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_9 = 'X';
			}
			if($('input:radio[name="math_10"]:checked').val() == 1) {
				math_10 = 'O';
				prior = prior + 5;
				prior2 = prior2 + 10;
			} else {
				math_10 = 'X';
			}
			/*
			var buramprior = ((prior * 0.1) + (prior * 0.7) + (prior * 0.1) + (prior * 0.3) + (prior * 0.1))/50; //13
			var sangmyungprior = ((prior * 0.1) + (prior * 0.3) + (prior * 0.4) + (prior * 0.6) + (prior * 0.8))/50; //22
			var youngsinprior = ((prior * 0.7) + (prior * 0.6) + (prior * 0.7) + (prior * 0.3) + (prior * 0.1))/50; //24
			var daejingirlsprior = ((prior * 0.3) + (prior * 0.1) + (prior * 0.1) + (prior * 0.2) + (prior * 0.1))/50; //8
			var yonghwaprior = ((prior * 0.1) + (prior * 0.3) + (prior * 0.1) + (prior * 0.1) + (prior * 0.2))/50; //8
			var cheongwongirlsprior = ((prior * 0.1) + (prior * 0.2) + (prior * 0.1) + (prior * 0.1) + (prior * 0.1))/50; //6
			var cheongwonprior = ((prior * 0.1) + (prior * 0.8) + (prior * 0.6) + (prior * 0.5) + (prior * 0.1))/50; //21
			var daejinprior = ((prior * 0.1) + (prior * 0.6) + (prior * 0.1) + (prior * 0.3) + (prior * 0.2))/50; //13
			var jaehyunprior = ((prior * 0.1) + (prior * 0.3) + (prior * 0.5) + (prior * 0.1) + (prior * 0.1))/50; //11
			var sorabolprior = ((prior * 0.2) + (prior * 0.7) + (prior * 1.1) + (prior * 0.6) + (prior * 0.6))/50; //32
			*/
			var buramprior;
			var sangmyungprior;
			var youngsinprior;
			var daejingirlsprior;
			var yonghwaprior;
			var cheongwongirlsprior;
			var cheongwonprior;
			var daejinprior;
			var jaehyunprior;
			var sorabolprior;

			if(prior >= 80) {
				daejinprior = 10;
				daejingirlsprior = 10;
				jaehyunprior = 10;
				
				youngsinprior = 5;
				yonghwaprior = 5;
				cheongwongirlsprior = 5;
				cheongwonprior = 5;
				sorabolprior = 5;

				buramprior = 1;
				sangmyungprior = 1;
			}else if(prior >= 70 && prior < 80) {
				daejinprior = 5;
				daejingirlsprior = 5;
				jaehyunprior = 5;
				
				youngsinprior = 10;
				yonghwaprior = 10;
				cheongwongirlsprior = 10;
				cheongwonprior = 10;
				sorabolprior = 10;

				buramprior = 5;
				sangmyungprior = 5;
			}else if(prior < 70) {
				daejinprior = 1;
				daejingirlsprior = 1;
				jaehyunprior = 1;
				
				youngsinprior = 5;
				yonghwaprior = 5;
				cheongwongirlsprior = 5;
				cheongwonprior = 5;
				sorabolprior = 5;

				buramprior = 10;
				sangmyungprior = 10;
			}
			
			var tendency1 = (test3_2 + test3_5 + test3_6 + test3_8 + test3_16 + test3_21)/6;//자기
			var tendency2 = (test3_4 + test3_20)/2;//창의
			var tendency3 = (test3_7 + test3_12 + test3_15 + test3_17 + test3_20 + test3_21)/6;//그릿
			var tendency4 = (test3_18 + test3_1 + test3_24)/3;//민감
			var tendency5 = (test3_3 + test3_13 + test3_14 + test3_19 + test3_24 + test3_25)/6;//활동
			var tendency6 = (test3_22 + test3_23)/2;//가정
			if($('input:checkbox[name=girlcheck]').is(":checked") == true && $('input:checkbox[name=boycheck]').is(":checked") == false){
				var buramsum = (test1_1 * 1) + (test1_2 * 0) + (test1_3 * 2) + (test1_4 * 2) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 2) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 1) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 0) + (test1_2 * 0.5) + (test1_3 * 0.5) + (test1_4 * 1) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 2) + (test1_9 * 2) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 0.5) + (test1_13 * 0) + (test1_14 * 1) + sangmyungprior + sangmyungplus;
				var youngsinsum = (test1_1 * 2) + (test1_2 * 0) + (test1_3 * 2) + (test1_4 * 0.5) + (test1_5 * 0.5) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 0.5) + (test1_12 * 2) + (test1_13 * 0) + (test1_14 * 0.5) + youngsinprior + youngsinplus;
				var daejingirlssum = (test1_1 * 0) + (test1_2 * 0) + (test1_3 * 0) + (test1_4 * 0.5) + (test1_5 * 0.5) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 0.5) + (test1_12 * 0.5) + (test1_13 * 0) + (test1_14 * 0.5) + daejingirlsprior + daejingirlsplus;
				var yonghwasum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 2) + (test1_9 * 2) + (test1_10 * 2) + (test1_11 * 2) + (test1_12 * 1) + (test1_13 * 2) + (test1_14 * 2) + yonghwaprior + yonghwaplus;
				var cheongwongirlssum = (test1_1 * 1) + (test1_2 * 0) + (test1_3 * 1) + (test1_4 * 2) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0.5) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 0) + cheongwongirlsprior + cheongwongirlsplus;
				var buram = buramsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var sangmyung = sangmyungsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var youngsin = youngsinsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var daejingirls = daejingirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var yonghwa = yonghwasum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
				var cheongwongirls = cheongwongirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum) * 100;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == false && $('input:checkbox[name=boycheck]').is(":checked") == true){
				var buramsum = (test1_1 * 1) + (test1_2 * 0) + (test1_3 * 2) + (test1_4 * 2) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 2) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 1) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 0) + (test1_2 * 0.5) + (test1_3 * 0.5) + (test1_4 * 1) + (test1_5 * 1) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 2) + (test1_9 * 2) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 0.5) + (test1_13 * 0) + (test1_14 * 1) + sangmyungprior + sangmyungplus;
				var cheongwonsum = (test1_1 * 0) + (test1_2 * 2) + (test1_3 * 0) + (test1_4 * 1) + (test1_5 * 2) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 1) + (test1_9 * 0.5) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0.5) + (test1_13 * 0) + (test1_14 * 1) + cheongwonprior + cheongwonplus;
				var daejinsum = (test1_1 * 0.5) + (test1_2 * 0.5) + (test1_3 * 0.5) + (test1_4 * 1) + (test1_5 * 0) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 0) + (test1_14 * 1) + daejinprior + daejinplus;
				var jaehyunsum = (test1_1 * 1) + (test1_2 * 0) + (test1_3 * 1) + (test1_4 * 2) + (test1_5 * 0.5) + (test1_6 * 1) + (test1_7 * 1) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 0.5) + (test1_12 * 1) + (test1_13 * 0) + (test1_14 * 1) + jaehyunprior + jaehyunplus;
				var sorabolsum = (test1_1 * 0.5) + (test1_2 * 0.5) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 2) + (test1_6 * 0) + (test1_7 * 0) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + (test1_13 * 1) + (test1_14 * 1) + sorabolprior + sorabolplus;
				var buram = buramsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var sangmyung = sangmyungsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var cheongwon = cheongwonsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var daejin = daejinsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var jaehyun = jaehyunsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
				var sorabol = sorabolsum / (buramsum + sangmyungsum + cheongwonsum + daejinsum + jaehyunsum + sorabolsum) * 100;
			}
			let today = new Date();
			let year = today.getFullYear();
			let month = today.getMonth()+1;
			let date = today.getDate();
			var insertdate = (year+'.'+month+'.'+date);
			$.ajax({
				url : "insertschoolmatch.do",
				type : "post",
				data : {
					schoolmatch_name : name,
					schoolmatch_school : school,
					schoolmatch_date : insertdate,
					schoolmatch_grade : grade,
					schoolmatch_phone1 : phone1,
					schoolmatch_phone2 : phone2,
					schoolmatch_phone3 : phone3,
					schoolmatch_parentphone1 : parentphone1,
					schoolmatch_parentphone2 : parentphone2,
					schoolmatch_parentphone3 : parentphone3,
					schoolmatch_agree : agree,
					schoolmatch_buram : buram,
					schoolmatch_sangmyung : sangmyung,
					schoolmatch_youngsin : youngsin,
					schoolmatch_daejingirls : daejingirls,
					schoolmatch_yonghwa : yonghwa,
					schoolmatch_cheongwongirls : cheongwongirls,
					schoolmatch_cheongwon : cheongwon,
					schoolmatch_daejin : daejin,
					schoolmatch_jaehyun : jaehyun,
					schoolmatch_sorabol : sorabol,
					schoolmatch_prior1 : prior1,
					schoolmatch_prior2 : prior2,
					schoolmatch_prior3 : prior3,
					schoolmatch_prior4 : prior4,
					schoolmatch_prior5 : prior5,
					schoolmatch_prior : prior,
					schoolmatch_tendency1 : tendency1,
					schoolmatch_tendency2 : tendency2,
					schoolmatch_tendency3 : tendency3,
					schoolmatch_tendency4 : tendency4,
					schoolmatch_tendency5 : tendency5,
					schoolmatch_tendency6 : tendency6,
					schoolmatch_korean1 : korean_1,
					schoolmatch_korean2 : korean_2,
					schoolmatch_korean3 : korean_3,
					schoolmatch_korean4 : korean_4,
					schoolmatch_korean5 : korean_5,
					schoolmatch_korean6 : korean_6,
					schoolmatch_korean7 : korean_7,
					schoolmatch_korean8 : korean_8,
					schoolmatch_korean9 : korean_9,
					schoolmatch_korean10 : korean_10,
					schoolmatch_english1 : english_1,
					schoolmatch_english2 : english_2,
					schoolmatch_english3 : english_3,
					schoolmatch_english4 : english_4,
					schoolmatch_english5 : english_5,
					schoolmatch_english6 : english_6,
					schoolmatch_english7 : english_7,
					schoolmatch_english8 : english_8,
					schoolmatch_english9 : english_9,
					schoolmatch_english10 : english_10,
					schoolmatch_math1 : math_1,
					schoolmatch_math2 : math_2,
					schoolmatch_math3 : math_3,
					schoolmatch_math4 : math_4,
					schoolmatch_math5 : math_5,
					schoolmatch_math6 : math_6,
					schoolmatch_math7 : math_7,
					schoolmatch_math8 : math_8,
					schoolmatch_math9 : math_9,
					schoolmatch_math10 : math_10
				},
				success : function(data) {
					alert("검사가 종료되었습니다! 참여해주셔서 감사합니다.");
					console.log(english_1);
					console.log(test_answer);
					location.href = "http://doctoredu.co.kr/";
					// window.location.href = "schoolmatchlist.do";
			     },
				error : function() {
					alert("에러가 발생했습니다.");
				}
			});
		});
	});
	</script>
</body>
</html>