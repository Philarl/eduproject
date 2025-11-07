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
    margin: 0;
    overflow-x: hidden; /* 가로 스크롤 방지 */
    display: flex;
    justify-content: center;
    align-items: flex-start; /* 상단 정렬 */
    min-height: 100vh;
    background-color: #f0f0f0;
}

.exam-container {
    position: relative;
    width: 100vw; /* 화면 가로 전체 */
    max-width: 1920px; /* 원본 이미지의 최대 너비 */
    overflow: hidden;
}

.exam-image {
    width: 100%;
    height: auto;
    display: block;
}

.main-sections1 {
    position: absolute;
    display: flex;
    align-items: flex-start; /* 좌측 정렬 */
    /* border: 1px solid red; /* 답안 영역 확인용 */
}

.main-sections1 input {
    background-color: transparent;
    color: black;
}

.main-sections2 {
    position: absolute;
    top: 25%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 4%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 100%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 80%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
    font-size: 30px;
    color: white;
}

.main-sections2 input {
	border: 0px;
	width: 25px;
	height: 25px;
}

.main-sections3 {
    position: absolute;
    top: 20%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 6%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 100%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 80%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
	font-size: 35px;
	background: linear-gradient(to right, #D9DADB, #AFAFAF);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
}

.main-table1 {
    position: absolute;
    top: 15%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 40%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 60%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 80%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
}

.main-table1 table {
	background-color: white;
	text-align: center;
	font-size: 20px;
}

.main-table1 th {
	background-color: #d3d3d3;
	border-right: 1px solid;
	border-color: white;
	text-align: center;
	font-size: 20px;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 25px;
	padding-right: 25px;
}

.main-table1 td {
	border-bottom: 1px solid;
	border-color: gray;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 25px;
	padding-right: 25px;
}

.main-table2 {
    position: absolute;
    top: 15%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 40%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 60%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 80%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
}

.main-table2 table {
	background-color: white;
	text-align: center;
	font-size: 15px;
}

.main-table2 th {
	background-color: #d3d3d3;
	border-right: 1px solid;
	border-color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 40px;
	padding-right: 40px;
}

.main-table2 td {
	border-bottom: 1px solid;
	border-color: gray;
	padding-top: 10px;
	padding-bottom: 10px;
	padding-left: 40px;
	padding-right: 40px;
}

.main-table3 {
    position: absolute;
    top: 10%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 40%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 60%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 90%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
}

.main-table3 table {
	background-color: white;
	text-align: center;
	font-size: 12px;
}

.main-table3 th {
	background-color: #d3d3d3;
	border-right: 1px solid;
	border-color: white;
	text-align: center;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 50px;
	padding-right: 50px;
}

.main-table3 td {
	border-bottom: 1px solid;
	border-color: gray;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-left: 50px;
	padding-right: 50px;
}

.answer-sections {
    position: absolute;
    top: 27.1%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 3%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 10%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 26%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    display: flex;
    flex-direction: column;
    justify-content: space-around; /* 답안 옵션들 사이에 균등한 공간 배분 */
    align-items: flex-start; /* 좌측 정렬 */
    /* border: 1px solid red; /* 답안 영역 확인용 */
}

.answer-sections2 {
    position: absolute;
    top: 21%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 3%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 10%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 23.5%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    display: flex;
    flex-direction: column;
    justify-content: space-around; /* 답안 옵션들 사이에 균등한 공간 배분 */
    align-items: flex-start; /* 좌측 정렬 */
    /* border: 1px solid red; /* 답안 영역 확인용 */
}

.answer-sections3 {
    position: absolute;
    top: 27.1%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 3%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 10%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 26%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    display: flex;
    flex-direction: column;
    justify-content: space-around; /* 답안 옵션들 사이에 균등한 공간 배분 */
    align-items: flex-start; /* 좌측 정렬 */
    /* border: 1px solid red; /* 답안 영역 확인용 */
}

.answer-option {
    width: 31px; /* 체크 박스의 너비 */
    height: 31px; /* 체크 박스의 높이 */
    border-radius: 50%; /* 동그라미 모양 */
    background-color: transparent; /* 기본 배경 투명 (가장자리선 없앰) */
    cursor: pointer;
    box-sizing: border-box; /* padding, border 포함한 너비 */
    margin-bottom: 10px; /* 각 답안 옵션 사이 간격 */
    transition: background-color 0.2s ease; /* 부드러운 전환 효과 */
    /* border: none; /* 별도의 테두리 없앰 */
}

.answer-option2 {
    width: 31px; /* 체크 박스의 너비 */
    height: 31px; /* 체크 박스의 높이 */
    border-radius: 50%; /* 동그라미 모양 */
    background-color: transparent; /* 기본 배경 투명 (가장자리선 없앰) */
    cursor: pointer;
    box-sizing: border-box; /* padding, border 포함한 너비 */
    margin-bottom: 10px; /* 각 답안 옵션 사이 간격 */
    transition: background-color 0.2s ease; /* 부드러운 전환 효과 */
    /* border: none; /* 별도의 테두리 없앰 */
}

.answer-option3 {
    width: 31px; /* 체크 박스의 너비 */
    height: 31px; /* 체크 박스의 높이 */
    border-radius: 50%; /* 동그라미 모양 */
    background-color: transparent; /* 기본 배경 투명 (가장자리선 없앰) */
    cursor: pointer;
    box-sizing: border-box; /* padding, border 포함한 너비 */
    margin-bottom: 10px; /* 각 답안 옵션 사이 간격 */
    transition: background-color 0.2s ease; /* 부드러운 전환 효과 */
    /* border: none; /* 별도의 테두리 없앰 */
}

.answer-option.selected {
    background-color: rgba(0, 0, 0, 0.5); /* 선택 시 배경색 (예: 연두색, 투명도 50%) */
    /* border-color: transparent; /* 선택 시에도 테두리 없앰 */
}

.answer-option2.selected {
    background-color: rgba(0, 0, 0, 0.5); /* 선택 시 배경색 (예: 연두색, 투명도 50%) */
    /* border-color: transparent; /* 선택 시에도 테두리 없앰 */
}

.answer-option3.selected {
    background-color: rgba(0, 0, 0, 0.5); /* 선택 시 배경색 (예: 연두색, 투명도 50%) */
    /* border-color: transparent; /* 선택 시에도 테두리 없앰 */
}

.agree-sections {
    position: absolute;
    top: 56.5%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 82.5%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 1.6%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 2.7%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    /*display: flex;
    /*flex-direction: column;
    /*align-items: flex-start; /* 좌측 정렬 */
    /*border: 1px solid red; /* 답안 영역 확인용 */
    background-color: white;/**/
}
.agree-sections input {
    position: absolute;
    width: 100%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 100%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
}
.bodydiv{
	margin:auto;
	width:65%;
}
div{
	margin-top:0.5208vw;
	margin-bottom:0.5208vw;
}
div.bodydiv {
	width: 100%;
}
button.finishbtn {
	width: 80%;
	margin-left: 10%;
	height: 80px;
	background-color: rgba(160, 212, 104, 0.5);
}
</style>
<body>
<div class="bodydiv">
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_1.jpg" alt="시험지">
		<div class="main-sections1" style="top: 55%; left: 13%;">
			<input id="schoolmatch_name">
		</div>
		<div class="main-sections1" style="top: 63.4%; left: 13%;">
			<input id="schoolmatch_school">
		</div>
		<div class="main-sections1" style="top: 71.8%; left: 13%;">
			<input id="schoolmatch_grade">
		</div>
		<div class="main-sections1" style="top: 80.2%; left: 13%;">
			<input type="text" maxlength="3" id="schoolmatch_parentphone1" style="width: 10%">
			<span class="span_info">-</span>
			<input type="text" maxlength="4" id="schoolmatch_parentphone2" style="width: 10%">
			<span class="span_info">-</span>
			<input type="text" maxlength="4" id="schoolmatch_parentphone3" style="width: 10%">
		</div>
		<div class="main-sections1" style="top: 88.6%; left: 13%;">
			<input type="text" maxlength="3" id="schoolmatch_phone1" style="width: 10%">
			<span class="span_info">-</span>
			<input type="text" maxlength="4" id="schoolmatch_phone2" style="width: 10%">
			<span class="span_info">-</span>
			<input type="text" maxlength="4" id="schoolmatch_phone3" style="width: 10%">
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_2.jpg" alt="시험지">
		<div class="main-sections2">
			<br><br>
			2-1. (여학생만 체크) 관심있는 학교 체크<br>
			(복수체크가능)<br>
			<input type="checkbox" class="girlcheck" name="girlcheck" value="외고"> 외고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="영재과고"> 영재과고&nbsp;&nbsp; 
			<input type="checkbox" class="girlcheck" name="girlcheck" value="자사고"> 자사고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="불암고"> 불암고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="상명고"> 상명고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="대진여고"> 대진여고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="청원여고"> 청원여고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="영신여고"> 영신여고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="용화여고"> 용화여고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="혜성여고"> 혜성여고&nbsp;&nbsp;
			<input type="checkbox" class="girlcheck" name="girlcheck" value="없음"> 없음
			<br><br>
			2-2. (남학생만 체크) 관심있는 학교 체크<br>
			(복수체크가능)<br>
			<input type="checkbox" class="boycheck" name="boycheck" value="외고"> 외고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="영재과고"> 영재과고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="자사고"> 자사고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="불암고"> 불암고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="상명고"> 상명고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="대진고"> 대진고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="서라벌고"> 서라벌고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="재현고"> 재현고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="청원고"> 청원고&nbsp;&nbsp;&nbsp;
			<input type="checkbox" class="boycheck" name="boycheck" value="없음"> 없음
			<br><br>
			3. 어머님의 직장 맘 여부<br>
			<input type="radio" name="momradio" value="yes"> 예 <input type="radio" name="momradio" value="no"> 아니오		
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_3.jpg" alt="시험지">
		<div class="main-sections3">
		고등교육과정<br>
		선택과목 선호도 조사
		</div>
		<div class="main-table1">
		<table>
			<thead>
				<tr>
					<th>선택과목</th>
					<th>관심없음</th>
					<th>관심약간있음</th>
					<th>관심많음</th>
					<th>관심매우많음</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>음악창작, 악기, 노래</td>
					<td><input type="radio" name="test1-1" value="0"></td>
					<td><input type="radio" name="test1-1" value="0.1"></td>
					<td><input type="radio" name="test1-1" value="0.5"></td>
					<td><input type="radio" name="test1-1" value="1"></td>
				</tr>
				<tr>
					<td>체육활동</td>
					<td><input type="radio" name="test1-2" value="0"></td>
					<td><input type="radio" name="test1-2" value="0.1"></td>
					<td><input type="radio" name="test1-2" value="0.5"></td>
					<td><input type="radio" name="test1-2" value="1"></td>
				</tr>
				<tr>
					<td>미술창작</td>
					<td><input type="radio" name="test1-3" value="0"></td>
					<td><input type="radio" name="test1-3" value="0.1"></td>
					<td><input type="radio" name="test1-3" value="0.5"></td>
					<td><input type="radio" name="test1-3" value="1"></td>
				</tr>
				<tr>
					<td>IT 코딩</td>
					<td><input type="radio" name="test1-4" value="0"></td>
					<td><input type="radio" name="test1-4" value="0.1"></td>
					<td><input type="radio" name="test1-4" value="0.5"></td>
					<td><input type="radio" name="test1-4" value="1"></td>
				</tr>
				<tr>
					<td>AI 인공지능</td>
					<td><input type="radio" name="test1-5" value="0"></td>
					<td><input type="radio" name="test1-5" value="0.1"></td>
					<td><input type="radio" name="test1-5" value="0.5"></td>
					<td><input type="radio" name="test1-5" value="1"></td>
				</tr>
				<tr>
					<td>기계공학</td>
					<td><input type="radio" name="test1-6" value="0"></td>
					<td><input type="radio" name="test1-6" value="0.1"></td>
					<td><input type="radio" name="test1-6" value="0.5"></td>
					<td><input type="radio" name="test1-6" value="1"></td>
				</tr>
				<tr>
					<td>경영, 경제</td>
					<td><input type="radio" name="test1-7" value="0"></td>
					<td><input type="radio" name="test1-7" value="0.1"></td>
					<td><input type="radio" name="test1-7" value="0.5"></td>
					<td><input type="radio" name="test1-7" value="1"></td>
				</tr>
				<tr>
					<td>일본어</td>
					<td><input type="radio" name="test1-8" value="0"></td>
					<td><input type="radio" name="test1-8" value="0.1"></td>
					<td><input type="radio" name="test1-8" value="0.5"></td>
					<td><input type="radio" name="test1-8" value="1"></td>
				</tr>
				<tr>
					<td>중국어</td>
					<td><input type="radio" name="test1-9" value="0"></td>
					<td><input type="radio" name="test1-9" value="0.1"></td>
					<td><input type="radio" name="test1-9" value="0.5"></td>
					<td><input type="radio" name="test1-9" value="1"></td>
				</tr>
				<tr>
					<td>교육학</td>
					<td><input type="radio" name="test1-10" value="0"></td>
					<td><input type="radio" name="test1-10" value="0.1"></td>
					<td><input type="radio" name="test1-10" value="0.5"></td>
					<td><input type="radio" name="test1-10" value="1"></td>
				</tr>
				<tr>
					<td>심리학, 철학</td>
					<td><input type="radio" name="test1-11" value="0"></td>
					<td><input type="radio" name="test1-11" value="0.1"></td>
					<td><input type="radio" name="test1-11" value="0.5"></td>
					<td><input type="radio" name="test1-11" value="1"></td>
				</tr>
				<tr>
					<td>논술</td>
					<td><input type="radio" name="test1-12" value="0"></td>
					<td><input type="radio" name="test1-12" value="0.1"></td>
					<td><input type="radio" name="test1-12" value="0.5"></td>
					<td><input type="radio" name="test1-12" value="1"></td>
				</tr>
				<tr>
					<td>실용경제</td>
					<td><input type="radio" name="test1-13" value="0"></td>
					<td><input type="radio" name="test1-13" value="0.1"></td>
					<td><input type="radio" name="test1-13" value="0.5"></td>
					<td><input type="radio" name="test1-13" value="1"></td>
				</tr>
				<tr>
					<td>환경</td>
					<td><input type="radio" name="test1-14" value="0"></td>
					<td><input type="radio" name="test1-14" value="0.1"></td>
					<td><input type="radio" name="test1-14" value="0.5"></td>
					<td><input type="radio" name="test1-14" value="1"></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_3.jpg" alt="시험지">
		<div class="main-sections3">
		나의 학업상황에<br>
		대해 체크하세요
		</div>
		<div class="main-table2">
		<table>
		<thead>
			<tr>
				<th>선행도</th>
				<th>매우아니다</th>
				<th>아니다</th>
				<th>보통이다</th>
				<th>그렇다</th>
				<th>매우그렇다</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>고3수능영어 2등급이상</td>
				<td><input type="radio" name="test2-1" value="2"></td>
				<td><input type="radio" name="test2-1" value="4"></td>
				<td><input type="radio" name="test2-1" value="6"></td>
				<td><input type="radio" name="test2-1" value="8"></td>
				<td><input type="radio" name="test2-1" value="10"></td>
			</tr>
			<tr>
				<td>고등수능영단어 2권이상 마스터</td>
				<td><input type="radio" name="test2-2" value="2"></td>
				<td><input type="radio" name="test2-2" value="4"></td>
				<td><input type="radio" name="test2-2" value="6"></td>
				<td><input type="radio" name="test2-2" value="8"></td>
				<td><input type="radio" name="test2-2" value="10"></td>
			</tr>
			<tr>
				<td>고1과정의 수학 모두 선행</td>
				<td><input type="radio" name="test2-3" value="2"></td>
				<td><input type="radio" name="test2-3" value="4"></td>
				<td><input type="radio" name="test2-3" value="6"></td>
				<td><input type="radio" name="test2-3" value="8"></td>
				<td><input type="radio" name="test2-3" value="10"></td>
			</tr>
			<tr>
				<td>고3수능수리영역 2등급이상</td>
				<td><input type="radio" name="test2-4" value="2"></td>
				<td><input type="radio" name="test2-4" value="4"></td>
				<td><input type="radio" name="test2-4" value="6"></td>
				<td><input type="radio" name="test2-4" value="8"></td>
				<td><input type="radio" name="test2-4" value="10"></td>
			</tr>
			<tr>
				<td>수능언어영역 1회독</td>
				<td><input type="radio" name="test2-5" value="2"></td>
				<td><input type="radio" name="test2-5" value="4"></td>
				<td><input type="radio" name="test2-5" value="6"></td>
				<td><input type="radio" name="test2-5" value="8"></td>
				<td><input type="radio" name="test2-5" value="10"></td>
			</tr>
			<tr>
				<td>고1 국어 비문학파트 2회독</td>
				<td><input type="radio" name="test2-6" value="2"></td>
				<td><input type="radio" name="test2-6" value="4"></td>
				<td><input type="radio" name="test2-6" value="6"></td>
				<td><input type="radio" name="test2-6" value="8"></td>
				<td><input type="radio" name="test2-6" value="10"></td>
			</tr>
			<tr>
				<td>고1 국어 문학파트 2회독</td>
				<td><input type="radio" name="test2-7" value="2"></td>
				<td><input type="radio" name="test2-7" value="4"></td>
				<td><input type="radio" name="test2-7" value="6"></td>
				<td><input type="radio" name="test2-7" value="8"></td>
				<td><input type="radio" name="test2-7" value="10"></td>
			</tr>
			<tr>
				<td>사탐 1회독</td>
				<td><input type="radio" name="test2-8" value="2"></td>
				<td><input type="radio" name="test2-8" value="4"></td>
				<td><input type="radio" name="test2-8" value="6"></td>
				<td><input type="radio" name="test2-8" value="8"></td>
				<td><input type="radio" name="test2-8" value="10"></td>
			</tr>
			<tr>
				<td>과탐 1회독</td>
				<td><input type="radio" name="test2-9" value="2"></td>
				<td><input type="radio" name="test2-9" value="4"></td>
				<td><input type="radio" name="test2-9" value="6"></td>
				<td><input type="radio" name="test2-9" value="8"></td>
				<td><input type="radio" name="test2-9" value="10"></td>
			</tr>
			<tr>
				<td>음악전공자</td>
				<td><input type="radio" name="test2-10" value="40"></td>
				<td><input type="radio" name="test2-10" value="60"></td>
				<td><input type="radio" name="test2-10" value="70"></td>
				<td><input type="radio" name="test2-10" value="80"></td>
				<td><input type="radio" name="test2-10" value="90"></td>
			</tr>
			<tr>
				<td>체육전공자</td>
				<td><input type="radio" name="test2-11" value="40"></td>
				<td><input type="radio" name="test2-11" value="60"></td>
				<td><input type="radio" name="test2-11" value="70"></td>
				<td><input type="radio" name="test2-11" value="80"></td>
				<td><input type="radio" name="test2-11" value="90"></td>
			</tr>
			<tr>
				<td>미술전공자</td>
				<td><input type="radio" name="test2-12" value="40"></td>
				<td><input type="radio" name="test2-12" value="60"></td>
				<td><input type="radio" name="test2-12" value="70"></td>
				<td><input type="radio" name="test2-12" value="80"></td>
				<td><input type="radio" name="test2-12" value="90"></td>
			</tr>
			<tr>
				<td>초등고학년부터 선행시작</td>
				<td><input type="radio" name="test2-13" value="40"></td>
				<td><input type="radio" name="test2-13" value="60"></td>
				<td><input type="radio" name="test2-13" value="70"></td>
				<td><input type="radio" name="test2-13" value="80"></td>
				<td><input type="radio" name="test2-13" value="90"></td>
			</tr>
			<tr>
				<td>국영수 주요과목 학원과외 선행</td>
				<td><input type="radio" name="test2-14" value="40"></td>
				<td><input type="radio" name="test2-14" value="60"></td>
				<td><input type="radio" name="test2-14" value="70"></td>
				<td><input type="radio" name="test2-14" value="80"></td>
				<td><input type="radio" name="test2-14" value="90"></td>
			</tr>
			<tr>
				<td>3개월 이상 독학하고 성공</td>
				<td><input type="radio" name="test2-15" value="40"></td>
				<td><input type="radio" name="test2-15" value="60"></td>
				<td><input type="radio" name="test2-15" value="70"></td>
				<td><input type="radio" name="test2-15" value="80"></td>
				<td><input type="radio" name="test2-15" value="90"></td>
			</tr>
			<tr>
				<td>주요과목 고1과정 2회독</td>
				<td><input type="radio" name="test2-16" value="1"></td>
				<td><input type="radio" name="test2-16" value="2"></td>
				<td><input type="radio" name="test2-16" value="3"></td>
				<td><input type="radio" name="test2-16" value="4"></td>
				<td><input type="radio" name="test2-16" value="5"></td>
			</tr>
		</tbody>
	</table>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_3.jpg" alt="시험지">
		<div class="main-sections3">
		나의 성향에 대한<br>
		부분을 솔직하게<br>
		답해주세요
		</div>
		<div class="main-table3">
		<table>
			<thead>
				<tr>
					<th>성향</th>
					<th>매우아니다</th>
					<th>아니다</th>
					<th>보통이다</th>
					<th>그렇다</th>
					<th>매우그렇다</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>어른들에게 공손하다</td>
					<td><input type="radio" name="test3-1" value="40"></td>
					<td><input type="radio" name="test3-1" value="60"></td>
					<td><input type="radio" name="test3-1" value="70"></td>
					<td><input type="radio" name="test3-1" value="80"></td>
					<td><input type="radio" name="test3-1" value="90"></td>
				</tr>
				<tr>
					<td>매사에 주도적이다</td>
					<td><input type="radio" name="test3-2" value="40"></td>
					<td><input type="radio" name="test3-2" value="60"></td>
					<td><input type="radio" name="test3-2" value="70"></td>
					<td><input type="radio" name="test3-2" value="80"></td>
					<td><input type="radio" name="test3-2" value="90"></td>
				</tr>
				<tr>
					<td>SNS 활용을 잘한다</td>
					<td><input type="radio" name="test3-3" value="40"></td>
					<td><input type="radio" name="test3-3" value="60"></td>
					<td><input type="radio" name="test3-3" value="70"></td>
					<td><input type="radio" name="test3-3" value="80"></td>
					<td><input type="radio" name="test3-3" value="90"></td>
				</tr>
				<tr>
					<td>창의성이 뛰어나다</td>
					<td><input type="radio" name="test3-4" value="40"></td>
					<td><input type="radio" name="test3-4" value="60"></td>
					<td><input type="radio" name="test3-4" value="70"></td>
					<td><input type="radio" name="test3-4" value="80"></td>
					<td><input type="radio" name="test3-4" value="90"></td>
				</tr>
				<tr>
					<td>남에게 싫은 소리 듣는 것은 못 참는다</td>
					<td><input type="radio" name="test3-5" value="40"></td>
					<td><input type="radio" name="test3-5" value="60"></td>
					<td><input type="radio" name="test3-5" value="70"></td>
					<td><input type="radio" name="test3-5" value="80"></td>
					<td><input type="radio" name="test3-5" value="90"></td>
				</tr>
				<tr>
					<td>침착하고 차분하다</td>
					<td><input type="radio" name="test3-6" value="40"></td>
					<td><input type="radio" name="test3-6" value="60"></td>
					<td><input type="radio" name="test3-6" value="70"></td>
					<td><input type="radio" name="test3-6" value="80"></td>
					<td><input type="radio" name="test3-6" value="90"></td>
				</tr>
				<tr>
					<td>모르는 문제는 끝까지 해결한다</td>
					<td><input type="radio" name="test3-7" value="40"></td>
					<td><input type="radio" name="test3-7" value="60"></td>
					<td><input type="radio" name="test3-7" value="70"></td>
					<td><input type="radio" name="test3-7" value="80"></td>
					<td><input type="radio" name="test3-7" value="90"></td>
				</tr>
				<tr>
					<td>문제생길 일은 끼어들지 않는다</td>
					<td><input type="radio" name="test3-8" value="40"></td>
					<td><input type="radio" name="test3-8" value="60"></td>
					<td><input type="radio" name="test3-8" value="70"></td>
					<td><input type="radio" name="test3-8" value="80"></td>
					<td><input type="radio" name="test3-8" value="90"></td>
				</tr>
				<tr>
					<td>선행이 매우 잘 되어있다</td>
					<td><input type="radio" name="test3-9" value="1"></td>
					<td><input type="radio" name="test3-9" value="2"></td>
					<td><input type="radio" name="test3-9" value="3"></td>
					<td><input type="radio" name="test3-9" value="4"></td>
					<td><input type="radio" name="test3-9" value="5"></td>
				</tr>
				<tr>
					<td>어렸을 때부터 학원을 많이 다녔다</td>
					<td><input type="radio" name="test3-10" value="1"></td>
					<td><input type="radio" name="test3-10" value="2"></td>
					<td><input type="radio" name="test3-10" value="3"></td>
					<td><input type="radio" name="test3-10" value="4"></td>
					<td><input type="radio" name="test3-10" value="5"></td>
				</tr>
				<tr>
					<td>주변에서 부러워하는 성적을 받고 있다</td>
					<td><input type="radio" name="test3-11" value="1"></td>
					<td><input type="radio" name="test3-11" value="2"></td>
					<td><input type="radio" name="test3-11" value="3"></td>
					<td><input type="radio" name="test3-11" value="4"></td>
					<td><input type="radio" name="test3-11" value="5"></td>
				</tr>
				<tr>
					<td>많이 힘들어도 명문대에 꼭 가고 싶다</td>
					<td><input type="radio" name="test3-12" value="40"></td>
					<td><input type="radio" name="test3-12" value="60"></td>
					<td><input type="radio" name="test3-12" value="70"></td>
					<td><input type="radio" name="test3-12" value="80"></td>
					<td><input type="radio" name="test3-12" value="90"></td>
				</tr>
				<tr>
					<td>공부보다는 다른 활동을 많이 하고 싶다</td>
					<td><input type="radio" name="test3-13" value="40"></td>
					<td><input type="radio" name="test3-13" value="60"></td> <!--  -->
					<td><input type="radio" name="test3-13" value="70"></td>
					<td><input type="radio" name="test3-13" value="80"></td>
					<td><input type="radio" name="test3-13" value="90"></td>
				</tr>
				<tr>
					<td>정적인 것보다 동적인 것이 좋다</td>
					<td><input type="radio" name="test3-14" value="40"></td>
					<td><input type="radio" name="test3-14" value="60"></td> <!--  -->
					<td><input type="radio" name="test3-14" value="70"></td>
					<td><input type="radio" name="test3-14" value="80"></td>
					<td><input type="radio" name="test3-14" value="90"></td>
				</tr>
				<tr>
					<td>하나를 끝내야 다음 과목을 공부한다</td>
					<td><input type="radio" name="test3-15" value="40"></td>
					<td><input type="radio" name="test3-15" value="60"></td>
					<td><input type="radio" name="test3-15" value="70"></td>
					<td><input type="radio" name="test3-15" value="80"></td>
					<td><input type="radio" name="test3-15" value="90"></td>
				</tr>
				<tr>
					<td>자투리시간을 잘 활용한다</td>
					<td><input type="radio" name="test3-16" value="40"></td>
					<td><input type="radio" name="test3-16" value="60"></td>
					<td><input type="radio" name="test3-16" value="70"></td>
					<td><input type="radio" name="test3-16" value="80"></td>
					<td><input type="radio" name="test3-16" value="90"></td>
				</tr>
				<tr>
					<td>숙제를 다해야 맘이 편하다</td>
					<td><input type="radio" name="test3-17" value="40"></td>
					<td><input type="radio" name="test3-17" value="60"></td>
					<td><input type="radio" name="test3-17" value="70"></td>
					<td><input type="radio" name="test3-17" value="80"></td>
					<td><input type="radio" name="test3-17" value="90"></td>
				</tr>
				<tr>
					<td>혼자있을 때 공부가 더 잘 된다</td>
					<td><input type="radio" name="test3-18" value="40"></td>
					<td><input type="radio" name="test3-18" value="60"></td>
					<td><input type="radio" name="test3-18" value="70"></td>
					<td><input type="radio" name="test3-18" value="80"></td>
					<td><input type="radio" name="test3-18" value="90"></td>
				</tr>
				<tr>
					<td>봉사 등의 창체활동을 좋아한다</td>
					<td><input type="radio" name="test3-19" value="40"></td>
					<td><input type="radio" name="test3-19" value="60"></td>
					<td><input type="radio" name="test3-19" value="70"></td><!--  -->
					<td><input type="radio" name="test3-19" value="80"></td>
					<td><input type="radio" name="test3-19" value="90"></td>
				</tr>
				<tr>
					<td>월 2번은 스스로 독서한다</td>
					<td><input type="radio" name="test3-20" value="40"></td>
					<td><input type="radio" name="test3-20" value="60"></td>
					<td><input type="radio" name="test3-20" value="70"></td>
					<td><input type="radio" name="test3-20" value="80"></td>
					<td><input type="radio" name="test3-20" value="90"></td>
				</tr>
				<tr>
					<td>자기주도학습이 잘 되어 있다</td>
					<td><input type="radio" name="test3-21" value="40"></td>
					<td><input type="radio" name="test3-21" value="60"></td>
					<td><input type="radio" name="test3-21" value="70"></td>
					<td><input type="radio" name="test3-21" value="80"></td>
					<td><input type="radio" name="test3-21" value="90"></td>
				</tr>
				<tr>
					<td>가정에서 학습써포트가 잘 되어있다</td>
					<td><input type="radio" name="test3-22" value="40"></td>
					<td><input type="radio" name="test3-22" value="60"></td>
					<td><input type="radio" name="test3-22" value="70"></td>
					<td><input type="radio" name="test3-22" value="80"></td>
					<td><input type="radio" name="test3-22" value="90"></td>
				</tr>
				<tr>
					<td>집안에서 비교되는 형제자매가 있다</td>
					<td><input type="radio" name="test3-23" value="40"></td>
					<td><input type="radio" name="test3-23" value="60"></td>
					<td><input type="radio" name="test3-23" value="70"></td>
					<td><input type="radio" name="test3-23" value="80"></td>
					<td><input type="radio" name="test3-23" value="90"></td>
				</tr>
				<tr>
					<td>주변에 친구가 많다</td>
					<td><input type="radio" name="test3-24" value="40"></td>
					<td><input type="radio" name="test3-24" value="60"></td>
					<td><input type="radio" name="test3-24" value="70"></td>
					<td><input type="radio" name="test3-24" value="80"></td>
					<td><input type="radio" name="test3-24" value="90"></td>
				</tr>
				<tr>
					<td>운동을 매우 좋아한다</td>
					<td><input type="radio" name="test3-25" value="40"></td>
					<td><input type="radio" name="test3-25" value="60"></td> <!--  -->
					<td><input type="radio" name="test3-25" value="70"></td>
					<td><input type="radio" name="test3-25" value="80"></td>
					<td><input type="radio" name="test3-25" value="90"></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/test_001.jpg" alt="시험지">
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_001.jpg" alt="시험지">
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_002.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_1">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_003.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_2">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_004.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_3">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_005.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_4">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_006.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_5">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_007.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_6">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_008.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_7">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_009.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_8">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_010.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_9">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/korean_011.jpg" alt="시험지">
		<div class="answer-sections2" data-question-name="korean_10">
			<div class="answer-option2" data-answer-value="1"></div>
			<div class="answer-option2" data-answer-value="2"></div>
			<div class="answer-option2" data-answer-value="3"></div>
			<div class="answer-option2" data-answer-value="4"></div>
			<div class="answer-option2" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_002.jpg" alt="시험지">
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_003.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_1">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_004.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_2">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_005.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_3">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_006.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_4">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_007.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_5">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_008.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_6">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_009.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_7">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_010.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_8">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_011.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_9">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/english_012.jpg" alt="시험지">
		<div class="answer-sections" data-question-name="english_10">
			<div class="answer-option" data-answer-value="1"></div>
			<div class="answer-option" data-answer-value="2"></div>
			<div class="answer-option" data-answer-value="3"></div>
			<div class="answer-option" data-answer-value="4"></div>
			<div class="answer-option" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_001.jpg" alt="시험지">
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_002.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_1">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_003.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_2">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_004.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_3">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_005.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_4">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_006.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_5">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_007.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_6">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_008.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_7">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_009.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_8">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_010.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_9">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/math_011.jpg" alt="시험지">
		<div class="answer-sections3" data-question-name="math_10">
			<div class="answer-option3" data-answer-value="1"></div>
			<div class="answer-option3" data-answer-value="2"></div>
			<div class="answer-option3" data-answer-value="3"></div>
			<div class="answer-option3" data-answer-value="4"></div>
			<div class="answer-option3" data-answer-value="5"></div>
		</div>
	</div>
	<div class="exam-container">
		<img class="exam-image" src="/resources/img/user/tendencyimg/main_6.jpg" alt="시험지">
		<div class="agree-sections">
		<input type="checkbox" id="agree" value="동의">
		</div>
	</div>
	<button class="finishbtn">제출하기</button>
</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script>
	$(document).ready(function(){
		
		$('.answer-sections').on('click', '.answer-option', function() {
			let clickedOption = $(this);
			let currentQuestionBlock = clickedOption.parents('.answer-sections');
			let questionName = currentQuestionBlock.data('question-name');
			let answerValue = clickedOption.data('answer-value');

	        // 현재 문제 블록 내의 모든 답안 옵션에서 'selected' 클래스 제거
	        currentQuestionBlock.find('.answer-option').removeClass('selected');

	        // 클릭된 답안 옵션에 'selected' 클래스 추가
	        clickedOption.addClass('selected');
		});
		
		$('.answer-sections2').on('click', '.answer-option2', function() {
			let clickedOption = $(this);
			let currentQuestionBlock = clickedOption.parents('.answer-sections2');
			let questionName = currentQuestionBlock.data('question-name');
			let answerValue = clickedOption.data('answer-value');

	        // 현재 문제 블록 내의 모든 답안 옵션에서 'selected' 클래스 제거
	        currentQuestionBlock.find('.answer-option2').removeClass('selected');

	        // 클릭된 답안 옵션에 'selected' 클래스 추가
	        clickedOption.addClass('selected');
		});
		
		$('.answer-sections3').on('click', '.answer-option3', function() {
			let clickedOption = $(this);
			let currentQuestionBlock = clickedOption.parents('.answer-sections3');
			let questionName = currentQuestionBlock.data('question-name');
			let answerValue = clickedOption.data('answer-value');

	        // 현재 문제 블록 내의 모든 답안 옵션에서 'selected' 클래스 제거
	        currentQuestionBlock.find('.answer-option3').removeClass('selected');

	        // 클릭된 답안 옵션에 'selected' 클래스 추가
	        clickedOption.addClass('selected');
		});
		
		$('.finishbtn').click(function(){
			if($('#agree').is(":checked") == false){
				alert("관련 정보 활용 동의는 필수입니다.");
				setTimeout(function(){$('#agree').focus();},1);
				return;
			}
			var agree = $('#agree').val();
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
			var hyeseonggirlsplus = 0;
			if(girlcheck.includes('불암고')){buramplus = 10};
			if(girlcheck.includes('상명고')){sangmyungplus = 10};
			if(boycheck.includes('불암고')){buramplus = 10};
			if(boycheck.includes('상명고')){sangmyungplus = 10};
			if(girlcheck.includes('영신여고')){youngsinplus = 10};
			if(girlcheck.includes('대진여고')){daejingirlsplus = 10};
			if(girlcheck.includes('용화여고')){yonghwaplus = 10};
			if(girlcheck.includes('청원여고')){cheongwongirlsplus = 10};
			if(girlcheck.includes('혜성여고')){hyeseonggirlsplus = 10};
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
			
			let chkEnglish = 0;
			$('.answer-option.selected').each(function(index, el) {
				const qNm = $(this).parents('.answer-sections').data('question-name');
				const aVal = $(this).data('answer-value');
				const english = {"english_1" : "1", "english_2" : "2", "english_3" : "3", "english_4" : "4", "english_5" : "3"
						, "english_6" : "3", "english_7" : "2", "english_8" : "1", "english_9" : "2", "english_10" : "5"};
				let answer = "";
				
				if(aVal == english[qNm]) {
					answer = 'O';
					prior = prior + 5;
					prior3 = prior3 + 10;
				}else {
					answer = 'X';
				}
				
				switch (qNm) {
				case "english_1":
					english_1 = answer;
					break;
				case "english_2":
					english_2 = answer;
					break;
				case "english_3":
					english_3 = answer;
					break;
				case "english_4":
					english_4 = answer;
					break;
				case "english_5":
					english_5 = answer;
					break;
				case "english_6":
					english_6 = answer;
					break;
				case "english_7":
					english_7 = answer;
					break;
				case "english_8":
					english_8 = answer;
					break;
				case "english_9":
					english_9 = answer;
					break;
				case "english_10":
					english_10 = answer;
					break;
				default:
				}
				chkEnglish++;
			});
			if(chkEnglish < 10) {
				alert('영어 답안을 확인해주세요.')
				return false;
			}

			let chkKorean = 0;
			$('.answer-option2.selected').each(function(index, el) {
				const qNm = $(this).parents('.answer-sections2').data('question-name');
				const aVal = $(this).data('answer-value');
				const korean = {"korean_1" : "4", "korean_2" : "2", "korean_3" : "5", "korean_4" : "5", "korean_5" : "3"
						, "korean_6" : "4", "korean_7" : "2", "korean_8" : "2", "korean_9" : "2", "korean_10" : "1"};
				let answer2 = "";
				
				if(aVal == korean[qNm]) {
					answer2 = 'O';
					prior = prior + 3.3;
					prior1 = prior1 + 10;
				}else {
					answer2 = 'X';
				}
				
				switch (qNm) {
				case "korean_1":
					korean_1 = answer2;
					break;
				case "korean_2":
					korean_2 = answer2;
					break;
				case "korean_3":
					korean_3 = answer2;
					break;
				case "korean_4":
					korean_4 = answer2;
					break;
				case "korean_5":
					korean_5 = answer2;
					break;
				case "korean_6":
					korean_6 = answer2;
					break;
				case "korean_7":
					korean_7 = answer2;
					break;
				case "korean_8":
					korean_8 = answer2;
					break;
				case "korean_9":
					korean_9 = answer2;
					break;
				case "korean_10":
					korean_10 = answer2;
					break;
				default:
				}
				chkKorean++;
			});
			if(chkKorean < 10) {
				alert('국어 답안을 확인해주세요.')
				return false;
			}

			let chkMath = 0;
			$('.answer-option3.selected').each(function(index, el) {
				const qNm = $(this).parents('.answer-sections3').data('question-name');
				const aVal = $(this).data('answer-value');
				const math = {"math_1" : "2", "math_2" : "2", "math_3" : "2", "math_4" : "1", "math_5" : "5"
						, "math_6" : "4", "math_7" : "3", "math_8" : "2", "math_9" : "5", "math_10" : "1"};
				let answer3 = "";
				
				if(aVal == math[qNm]) {
					answer3 = 'O';
					prior = prior + 5;
					prior2 = prior2 + 10;
				}else {
					answer3 = 'X';
				}
				
				switch (qNm) {
				case "math_1":
					math_1 = answer3;
					break;
				case "math_2":
					math_2 = answer3;
					break;
				case "math_3":
					math_3 = answer3;
					break;
				case "math_4":
					math_4 = answer3;
					break;
				case "math_5":
					math_5 = answer3;
					break;
				case "math_6":
					math_6 = answer3;
					break;
				case "math_7":
					math_7 = answer3;
					break;
				case "math_8":
					math_8 = answer3;
					break;
				case "math_9":
					math_9 = answer3;
					break;
				case "math_10":
					math_10 = answer3;
					break;
				default:
				}
				chkMath++;
			});
			if(chkMath < 10) {
				alert('수학 답안을 확인해주세요.')
				return false;
			}
			
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
			var hyeseonggirlsprior;

			if(prior >= 80) {
				daejinprior = 10;
				daejingirlsprior = 10;
				jaehyunprior = 10;
				
				youngsinprior = 5;
				yonghwaprior = 5;
				cheongwongirlsprior = 5;
				cheongwonprior = 5;
				sorabolprior = 5;
				hyeseonggirlsprior = 5;

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
				hyeseonggirlsprior = 10;

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
				hyeseonggirlsprior = 5;

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
				var buramsum = (test1_1 * 1) + (test1_2 * 0.5) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 0.5) + (test1_2 * 1) + (test1_3 * 0.5) + (test1_4 * 0.5) + (test1_5 * 0.5) + (test1_8 * 2) + (test1_9 * 2) + (test1_10 * 2) + (test1_11 * 2) + (test1_12 * 2) + sangmyungprior + sangmyungplus;
				var youngsinsum = (test1_1 * 0.5) + (test1_2 * 0.5) + (test1_3 * 2) + (test1_4 * 1) + (test1_5 * 0.5) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + youngsinprior + youngsinplus;
				var daejingirlssum = (test1_1 * 0.5) + (test1_2 * 0.5) + (test1_3 * 0.5) + (test1_4 * 0) + (test1_5 * 0.5) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 2) + (test1_12 * 1) + daejingirlsprior + daejingirlsplus;
				var yonghwasum = (test1_1 * 0.5) + (test1_2 * 1) + (test1_3 * 0.5) + (test1_4 * 0) + (test1_5 * 1) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 0) + yonghwaprior + yonghwaplus;
				var cheongwongirlssum = (test1_1 * 1) + (test1_2 * 0.5) + (test1_3 * 1) + (test1_4 * 0.5) + (test1_5 * 1) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 2) + (test1_11 * 2) + (test1_12 * 0) + cheongwongirlsprior + cheongwongirlsplus;
				var hyeseonggirlssum = (test1_1 * 0) + (test1_2 * 1) + (test1_3 * 0.5) + (test1_4 * 0.5) + (test1_5 * 0.5) + (test1_8 * 1) + (test1_9 * 1) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + hyeseonggirlsprior + hyeseonggirlsplus;
				var buram = buramsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var sangmyung = sangmyungsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var youngsin = youngsinsum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var daejingirls = daejingirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var yonghwa = yonghwasum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var cheongwongirls = cheongwongirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
				var hyeseonggirls = hyeseonggirlssum / (buramsum + sangmyungsum + youngsinsum + daejingirlssum + yonghwasum + cheongwongirlssum + hyeseonggirlssum) * 100;
			}
			if($('input:checkbox[name=girlcheck]').is(":checked") == false && $('input:checkbox[name=boycheck]').is(":checked") == true){
				var buramsum = (test1_1 * 1) + (test1_2 * 0.5) + (test1_3 * 1) + (test1_4 * 0) + (test1_5 * 1) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + buramprior + buramplus;
				var sangmyungsum = (test1_1 * 0.5) + (test1_2 * 1) + (test1_3 * 0.5) + (test1_4 * 0.5) + (test1_5 * 0.5) + (test1_8 * 2) + (test1_9 * 2) + (test1_10 * 2) + (test1_11 * 2) + (test1_12 * 2) + sangmyungprior + sangmyungplus;
				var cheongwonsum = (test1_1 * 0.5) + (test1_2 * 2) + (test1_3 * 1) + (test1_4 * 2) + (test1_5 * 2) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 1) + (test1_11 * 1) + (test1_12 * 0) + cheongwonprior + cheongwonplus;
				var daejinsum = (test1_1 * 1) + (test1_2 * 1) + (test1_3 * 1) + (test1_4 * 0.5) + (test1_5 * 0) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 0) + daejinprior + daejinplus;
				var jaehyunsum = (test1_1 * 0.5) + (test1_2 * 0.5) + (test1_3 * 0.5) + (test1_4 * 1) + (test1_5 * 1) + (test1_8 * 0.5) + (test1_9 * 0.5) + (test1_10 * 0) + (test1_11 * 0) + (test1_12 * 1) + jaehyunprior + jaehyunplus;
				var sorabolsum = (test1_1 * 2) + (test1_2 * 0.5) + (test1_3 * 1) + (test1_4 * 1) + (test1_5 * 1) + (test1_8 * 0) + (test1_9 * 0) + (test1_10 * 1) + (test1_11 * 0) + (test1_12 * 0) + sorabolprior + sorabolplus;
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
					schoolmatch_hyeseonggirls : hyeseonggirls,
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