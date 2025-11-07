<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.docedu.web.user.vo.SchoolmatchVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
* {
    margin : 0;
    padding : 0;
    font-family : 'Noto Sans KR', sans-serif;
    box-sizing : border-box;
}
canvas {
	display: block;
	margin: 0 auto;
}
p{
	margin:0;
}
img{
	width:100%;
	vertical-align:middle;
}
.img1area{
	width:100%;
	position:relative;
}
.img2area{
	width:100%;
	position:relative;
}
.img3area{
	width:100%;
	position:relative;
}
.img4area{
	width:100%;
	position:relative;
}
.img5area{
	width:100%;
	position:relative;
}
.img6area{
	width:100%;
	position:relative;
}
.img7area{
	width:100%;
	position:relative;
}

.maininfor {
    position: absolute;
    top: 49.3%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    left: 45%; /* 시험지 좌측 상단에 위치시키기 위해 조절 */
    width: 50%; /* 답안 영역 너비 (시험지 너비에 따라 조절) */
    height: 12%; /* 답안 영역 높이 (시험지 높이에 따라 조절) */
    display: flex;
    flex-direction: column;
    justify-content: space-around; /* 답안 옵션들 사이에 균등한 공간 배분 */
    align-items: flex-start; /* 좌측 정렬 */
    /* border: 1px solid red; /* 답안 영역 확인용 */
}

.maingrid {
	line-height:5.6250vw;
	text-align:center;
	color:black;
	font-size:2.5vw;
    /*border-radius: 50%; /* 동그라미 모양 */
    /*background-color: transparent; /* 기본 배경 투명 (가장자리선 없앰) */
    /*cursor: pointer;
    /*box-sizing: border-box; /* padding, border 포함한 너비 */
    /*margin-bottom: 10px; /* 각 답안 옵션 사이 간격 */
    /*transition: background-color 0.2s ease; /* 부드러운 전환 효과 */
    /* border: none; /* 별도의 테두리 없앰 */
}
.barchartarea{
	position:absolute;
	left:5%;
	top:30%;
	width:90%;
	height:35%;
}
.barchartarea2{
	position:absolute;
	left:5%;
	top:30%;
	width:90%;
	height:28%;
}
.piechartarea{
	position : absolute;
    left : 15%;
    top : 35%;
    width : 70%;
    height : 48%;
}
.headerarea{
	position:absolute;
	font-size:5.5vw;
	font-weight:bold;
	text-align:center;
	left:10%;
	width:80%;
	top:12%;
	color:#61210B;
}
.explanationarea{
	position:absolute;
	left:20%;
	width:60%;
	top:60%;
	height:auto;
}
.explanationarea2{
	position:absolute;
	left:20%;
	width:60%;
	top:62%;
	height:auto;
}
.explanationhead{
	width:100%;
	font-size:3vw;
	font-weight:bold;
	color:#61210B;
	margin-bottom:2.0833vw;
}
.explanationbody{
	font-size:2.2vw;
}
.schoolheadarea1{
	color:black;
	position:absolute;
	font-size:5.5vw;
	top:33%;
	width:30%;
	left:36.5%;
	text-align:center;
}
.schoolheadarea2{
	color:black;
	position:absolute;
	font-size:3.5vw;
	top:34%;
	width:15%;
	left:17%;
	text-align:center;
}
.schoolheadarea3{
	color:black;
	position:absolute;
	font-size:3.5vw;
	top:34%;
	width:15%;
	right:16%;
	text-align:center;
}
.schoolexplanationhead{
	position:absolute;
	top:47%;
	font-size:2vw;
	left:9%;
	width:84%;
}
.schoolexplanationbody{
	position:absolute;
	top:57%;
	font-size:2vw;
	left:9%;
	width:82%;
}
.explanationarea3{
	position:absolute;
	left:10%;
	width:80%;
	font-size:2.5vw;
	top:30%;
	height:auto;
	color:#61210B;
	font-weight:bold;
}
.explanationareatable{
	font-size:2vw;
	width:100%;
	height:60vw;
	border:1px solid black;
	margin-top : 4vw;
	text-align:center;
	color:black;
	font-weight:normal;
}
th, td {
	border : 1px solid black;
}
.pexplan{
	font-size : 2.2vw;
	margin-top : 1vw;
	color:black;
	font-weight:normal;
}
.txt-act{
	font-size : 3.3vw;
}
.txt-bold{
	font-weight : bold;
}
#subjects {
	column-count : 3;
	column-gap : 40px;
	font-size : 2.4vw;
	margin-top : 1vw;
	color:black;
	font-weight:normal;
}
#textCal1 {
    white-space: pre-wrap;
}
#textCal2 {
    white-space: pre-wrap;
}
#textCal3 {
    white-space: pre-wrap;
}
#textCal4 {
    white-space: pre-wrap;
}
span.text-box {
	border: solid black 1px;
	padding: 10px;
}
@page {
	size : A4;
	margin : 0;
}
@media print {
	html, body {
		width : 210mm;
		height : 297mm;
	}
	/*
	.maingrid{
		line-height:34pt;
		font-size:18pt;
	}
	.headerarea{
		font-size:36pt;
	}
	.explanationhead{
		font-size:18pt;
		margin-bottom:8pt;
	}
	.explanationbody{
		font-size:14pt;
	}
	.schoolheadarea1{
		font-size:36pt;
	}
	.schoolheadarea2{
		font-size:22.8pt;
	}
	.schoolheadarea3{
		font-size:22.8pt;
	}
	.schoolexplanationhead{
		font-size:15pt;
	}
	.schoolexplanationbody{
		font-size:12.5pt;
	}
	.explanationarea3{
		font-size:19pt;
	}
	.explanationareatable{
		font-size:16pt;
		height:120mm;
	}
	.pexplan{
		font-size : 16pt;
		margin-top : 10pt;
	}
	*/
}
</style>
</head>
<body>
<input type="hidden" id="buram" value="${schoolmatchresult.schoolmatch_buram }">
<input type="hidden" id="sangmyung" value="${schoolmatchresult.schoolmatch_sangmyung }">
<input type="hidden" id="youngsin" value="${schoolmatchresult.schoolmatch_youngsin }">
<input type="hidden" id="daejingirls" value="${schoolmatchresult.schoolmatch_daejingirls }">
<input type="hidden" id="yonghwa" value="${schoolmatchresult.schoolmatch_yonghwa }">
<input type="hidden" id="cheongwongirls" value="${schoolmatchresult.schoolmatch_cheongwongirls }">
<input type="hidden" id="cheongwon" value="${schoolmatchresult.schoolmatch_cheongwon }">
<input type="hidden" id="daejin" value="${schoolmatchresult.schoolmatch_daejin }">
<input type="hidden" id="jaehyun" value="${schoolmatchresult.schoolmatch_jaehyun }">
<input type="hidden" id="sorabol" value="${schoolmatchresult.schoolmatch_sorabol }">
<input type="hidden" id="hyeseonggirls" value="${schoolmatchresult.schoolmatch_hyeseonggirls }">
<input type="hidden" id="prior1" value="${schoolmatchresult.schoolmatch_prior1 }">
<input type="hidden" id="prior2" value="${schoolmatchresult.schoolmatch_prior2 }">
<input type="hidden" id="prior3" value="${schoolmatchresult.schoolmatch_prior3 }">
<input type="hidden" id="prior4" value="${schoolmatchresult.schoolmatch_prior4 }">
<input type="hidden" id="prior5" value="${schoolmatchresult.schoolmatch_prior5 }">
<input type="hidden" id="tendency1" value="${schoolmatchresult.schoolmatch_tendency1 }">
<input type="hidden" id="tendency2" value="${schoolmatchresult.schoolmatch_tendency2 }">
<input type="hidden" id="tendency3" value="${schoolmatchresult.schoolmatch_tendency3 }">
<input type="hidden" id="tendency4" value="${schoolmatchresult.schoolmatch_tendency4 }">
<input type="hidden" id="tendency5" value="${schoolmatchresult.schoolmatch_tendency5 }">
<input type="hidden" id="tendency6" value="${schoolmatchresult.schoolmatch_tendency6 }">
	<div class="img1area">
		<div class="img-area">
			<img class="mainheaderimg1" alt="img1" src="/resources/img/user/tendencyimg/001.jpg">
		</div>
		<div class="maininfor">
			<div class="maingrid">${schoolmatchresult.schoolmatch_name }</div>
			<div class="maingrid"><fmt:formatDate pattern="yyyy-MM-dd" value="${schoolmatchresult.test_date }"/></div>
			<div class="maingrid">${schoolmatchresult.schoolmatch_parentphone1 }-${schoolmatchresult.schoolmatch_parentphone2 }-${schoolmatchresult.schoolmatch_parentphone3 }</div>
			<div class="maingrid"><span id="suggestion1"></span></div>
			<div class="maingrid"><span id="suggestion2"></span></div>
		</div>
	</div>
	<div class="img2area">
		<div class="img-area">
			<img class="mainheaderimg2" alt="img2" src="/resources/img/user/tendencyimg/002.jpg">
		</div>
	</div>
	<div class="img2area">
		<div class="img-area">
			<img class="mainheaderimg2" alt="img2" src="/resources/img/user/tendencyimg/003.jpg">
		</div>
	</div>
	<div class="img3area">
		<div class="img-area">
			<img class="mainheaderimg3" alt="img2" src="/resources/img/user/tendencyimg/004.jpg">
		</div>
		<div class="schoolheadarea1"><span id="suggestionschool1"></span></div>
		<div class="schoolheadarea2"><span id="suggestionschool2"></span></div>
		<div class="schoolheadarea3"><span id="suggestionschool3"></span></div>
		<div class="schoolexplanationhead">
		<br>
			<p id="mainschool"></p>검사자 ${schoolmatchresult.schoolmatch_name }이(가) 검사 시 기입하였던 내용을 바탕으로 1순위로 추천된 학교입니다.
		</div>
		<div class="schoolexplanationbody">
			<p>1. 검사자 ${schoolmatchresult.schoolmatch_name }의 주요과목 선행도와 해당학교 선배들의 1등급 점수대를 분석하면 다른 학교보다 학습적합도가 우위에 있음을 알 수 있습니다. 현재 중3 상태에서 고교선행도가 높지 않으면 최상위학생들이 모여있는 고등학교에 진학했을 때 내신등급이 낮을 수 밖에 없습니다. 낮은 내신 등급으로 인해서는 수시지원 시 대입성공률이 낮기 때문에 통상적으로 학습적합도를 학교선정 시 우선적으로 고려해야 합니다.</p>
			<br>
			<p>2. 공부그릿의 수치가 높으면 다소 선행도가 낮더라도 고교진학 후 충분히 만회가 가능하므로 해당학교는 공부그릿도 추가로 적용되어 있습니다.</p>
			<br>
			<p>3. 다음장에 보여지는 학습성향 항목을 분석해보면 약간의 취약점이 보이나 코칭멘트의 지시대로 단점을 극복하기 위해 끊임없이 노력한다면 고교진학 후 목표대학에 합격할 수 있습니다.</p>
			<br>  
			<span id="explanationword1"></span>
		</div>
	</div>
	<div class="img4area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/005.jpg">
		</div>
		<div class="piechartarea">
			<canvas id="mypieChart" style="height:100%; width:100%;"></canvas>
		</div>
	</div>
	<div class="img5area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/006.jpg">
		</div>
		<div class="barchartarea" style="text-align : center;">
			<canvas id="mybarChart2" style="height:70%; width:70%; margin-left : 15%;"></canvas>
		</div>
		<div class="explanationarea">
			<div class="explanationhead">
				선행도 평가
			</div>
			<div class="explanationbody">
				<p>기존의 중학교 성적은 학교별 출제 수준에 차이가 있어 자신의 정확한 실력을 판단하는 기준으로 사용하기 어렵습니다.<p>
				<p>자신의 실력에 맞는 고등학교를 선정할 때는 선행도가 함께 반영되어야 학교 적합도가 높아집니다.</p>
				<p>피아스에서는 선행정도에 따라 예측결과값을 짐작하고 학습량이 많은 학교를 추천함으로써 중고등연계 프로젝트를 실현하고자 합니다.</p>
				<span id="explanationword2"></span>
			</div>
		</div>
	</div>
	<div class="img6area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/007.jpg">
		</div>
		<div class="barchartarea2" style="text-align : center;">
			<canvas id="mybarChart1" style="height:100%; width:70%; margin-left : 10%;"></canvas>
		</div>
		<div class="explanationarea2">
			<div class="explanationhead">
				종합평가
			</div>
			<div class="explanationbody">
				<p>위의 항목들은 학습에 미치는 영향이 상당합니다</p>
				<p>환경민감도를 제외하고 수치가 낮은 경우, 높일 수 있는 구체적인 팁을 받고 지속적인 훈련을 진행해야 합니다.</p>
				<p>맞춤식 학습 방법에 대한 컨설팅과 프로그램제공은 피아스를 개발한 대치에듀리움 연구소에서 진행하고 있으니 추가 문의사항이 있으시면 아래번호로 연락주세요.</p>
				<p><br>연구소 직통번호 010.2168.5458</p>
			</div>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/008.jpg">
		</div>
		<div class="explanationarea3">
			<p>개요</p>
			<p class="pexplan" id="summary"></p>
			<br>
			<p>졸업생의 진로 현황</p>
			<p class="pexplan" id="suggestionrate"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/009.jpg">
		</div>
		<div class="explanationarea3">
			<p>&nbsp;</p>
			<table class="explanationareatable">
				<thead>
					<tr>
						<td rowspan='2'><span id="tableschool"></span></td>
						<td colspan='3'>1등급 점수</td>
						<td colspan='3'>2등급 점수</td>
						<td colspan='3'>3등급 점수</td>
					</tr>
					<tr>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
						<td>1학년</td>
						<td>2학년</td>
						<td>3학년</td>
					</tr>
				</thead>
				<tbody>
				    <tr>
				        <td>국어</td>
				        <td><span id="prior1-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior1-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior1-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior1-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior1-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior1-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior1-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior1-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior1-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>수학</td>
				        <td><span id="prior2-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior2-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior2-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior2-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior2-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior2-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior2-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior2-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior2-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>영어</td>
				        <td><span id="prior3-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior3-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior3-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior3-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior3-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior3-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior3-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior3-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior3-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>사탐</td>
				        <td><span id="prior4-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior4-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior4-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior4-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior4-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior4-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior4-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior4-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior4-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				    <tr>
				        <td>과탐</td>
				        <td><span id="prior5-1.1"></span></td><!-- 1등급,1학년 -->
				        <td><span id="prior5-1.2"></span></td><!-- 1등급,2학년 -->
				        <td><span id="prior5-1.3"></span></td><!-- 1등급,3학년 -->
				        <td><span id="prior5-2.1"></span></td><!-- 2등급,1학년 -->
				        <td><span id="prior5-2.2"></span></td><!-- 2등급,2학년 -->
				        <td><span id="prior5-2.3"></span></td><!-- 2등급,3학년 -->
				        <td><span id="prior5-3.1"></span></td><!-- 3등급,1학년 -->
				        <td><span id="prior5-3.2"></span></td><!-- 3등급,2학년 -->
				        <td><span id="prior5-3.3"></span></td><!-- 3등급,3학년 -->
				    </tr>
				</tbody>
			</table></div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/010.jpg">
		</div> 
		<div class="explanationarea3">
			<!-- <p>학사일정 - 학생 생활기록부 작성 참고용 정리표 (2025 기준)</p> -->
			<p class="pexplan" id="textCal1"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/011.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="textCal2"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/013.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="activity1"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/014.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="activity2"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/015.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="activity3"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/016.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="activity4"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/017.jpg">
		</div>
		<div class="explanationarea3">
			<p class="pexplan" id="activity5"></p>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/018.jpg">
		</div>
		<div class="explanationarea3">
			<div id="subjects"></div>
		</div>
	</div>
	<div class="img7area">
		<div class="img-area">
			<img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/019.jpg">
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@3.0.0/dist/chart.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.0.0"></script>
	<script>
	const buram = parseFloat(document.getElementById("buram").value).toFixed(1);
	const sangmyung = parseFloat(document.getElementById("sangmyung").value).toFixed(1);
	const youngsin = parseFloat(document.getElementById("youngsin").value).toFixed(1);
	const daejingirls = parseFloat(document.getElementById("daejingirls").value).toFixed(1);
	const yonghwa = parseFloat(document.getElementById("yonghwa").value).toFixed(1);
	const cheongwongirls = parseFloat(document.getElementById("cheongwongirls").value).toFixed(1);
	const cheongwon = parseFloat(document.getElementById("cheongwon").value).toFixed(1);
	const daejin = parseFloat(document.getElementById("daejin").value).toFixed(1);
	const jaehyun = parseFloat(document.getElementById("jaehyun").value).toFixed(1);
	const sorabol = parseFloat(document.getElementById("sorabol").value).toFixed(1);
	const hyeseonggirls = parseFloat(document.getElementById("hyeseonggirls").value).toFixed(1);
	const prior1 = parseFloat(document.getElementById("prior1").value).toFixed(1);
	const prior2 = parseFloat(document.getElementById("prior2").value).toFixed(1);
	const prior3 = parseFloat(document.getElementById("prior3").value).toFixed(1);
	const prior4 = parseFloat(document.getElementById("prior4").value).toFixed(1);
	const prior5 = parseFloat(document.getElementById("prior5").value).toFixed(1);
	const tendency1 = parseFloat(document.getElementById("tendency1").value).toFixed(1);
	const tendency2 = parseFloat(document.getElementById("tendency2").value).toFixed(1);
	const tendency3 = parseFloat(document.getElementById("tendency3").value).toFixed(1);
	const tendency4 = parseFloat(document.getElementById("tendency4").value).toFixed(1);
	const tendency5 = parseFloat(document.getElementById("tendency5").value).toFixed(1);
	const tendency6 = parseFloat(document.getElementById("tendency6").value).toFixed(1);
	var arrschool = [buram,sangmyung,youngsin,daejingirls,yonghwa,cheongwongirls,hyeseonggirls,cheongwon,daejin,jaehyun,sorabol];
	arrschool.sort(function(a, b)  {
		  return b - a;
	});
	const schoolmax = Math.max.apply(null, arrschool);
	if(schoolmax == buram){
		document.getElementById("suggestion1").innerText = '불암고';
		document.getElementById("suggestionschool1").innerText = '불암고';
		document.getElementById("mainschool").innerText = '불암고는';
		document.getElementById("tableschool").innerText = '불암고';
		document.getElementById("summary").innerText = `설립구분 : 공립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 2005년 03월 01일
			대표번호 : 02-936-7500
			주소 : 서울특별시 노원구 중계로 155
			학생수 : 739명 (남 381명 , 여 358명)
			교원수 : 74명 (남 16명 , 여 58명)
			체육집회공간 : 1실`;
		document.getElementById("suggestionrate").innerText = `전문대학50명(19.8%)
			대학113명(44.8%)
			기타89명(35.3%)`;
//		document.getElementById("suggestionsubject").innerText = '인공지능기초,공학일반,교육학';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '96';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '93';
		document.getElementById("prior1-2.1").innerText = '86';
		document.getElementById("prior1-2.2").innerText = '91';
		document.getElementById("prior1-2.3").innerText = '81';
		document.getElementById("prior1-3.1").innerText = '77';
		document.getElementById("prior1-3.2").innerText = '81';
		document.getElementById("prior1-3.3").innerText = '70';
		document.getElementById("prior2-1.1").innerText = '98';
		document.getElementById("prior2-1.2").innerText = '99';
		document.getElementById("prior2-1.3").innerText = '87';
		document.getElementById("prior2-2.1").innerText = '89';
		document.getElementById("prior2-2.2").innerText = '84';
		document.getElementById("prior2-2.3").innerText = '75';
		document.getElementById("prior2-3.1").innerText = '80';
		document.getElementById("prior2-3.2").innerText = '71';
		document.getElementById("prior2-3.3").innerText = '63';
		document.getElementById("prior3-1.1").innerText = '98';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '81';
		document.getElementById("prior3-2.1").innerText = '86';
		document.getElementById("prior3-2.2").innerText = '89';
		document.getElementById("prior3-2.3").innerText = '69';
		document.getElementById("prior3-3.1").innerText = '75';
		document.getElementById("prior3-3.2").innerText = '78';
		document.getElementById("prior3-3.3").innerText = '58';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '96';
		document.getElementById("prior4-2.1").innerText = '94';
		document.getElementById("prior4-2.2").innerText = '91';
		document.getElementById("prior4-2.3").innerText = '83';
		document.getElementById("prior4-3.1").innerText = '83';
		document.getElementById("prior4-3.2").innerText = '81';
		document.getElementById("prior4-3.3").innerText = '71';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '89';
		document.getElementById("prior5-2.2").innerText = '88';
		document.getElementById("prior5-2.3").innerText = '100';
		document.getElementById("prior5-3.1").innerText = '79';
		document.getElementById("prior5-3.2").innerText = '78';
		document.getElementById("prior5-3.3").innerText = '92';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>

1학기
3월 3일(월) : 시업식 / 입학식
3월 7일(금) : 학부모총회 및 학급임원선출
5월 2일(금) : 어린이날 행사
7월 18일(금) : 방학식

2학기
9월 1일(월) : 2학기 시업식
9월 6일(토) : 학부모 공개수업
12월 24일(수) : 종업식
1월 2일(금) : 신년회

<span class="text-box">2. 동아리활동</span>

1학기
3월 19일(수) : 동아리 편성 및 운영 시작
5월 30일(금) : 동아리 활동 발표회
7월 14일(월) : 동아리활동 마무리

2학기
9월 24일(수) : 동아리활동 개시
11월 19일(수) : 동아리 활동 발표회
12월(학기말) : 동아리 성과 공유`;
		document.getElementById("textCal2").innerHTML = ` <span class="text-box">3. 봉사활동</span>

1학기
4월 12일(토) : 환경정화 캠페인(학교 주관 봉사)
6월 4일(수) : 지역사회 봉사활동
6월 20일(금) : 교내 질서 및 환경 봉사주간
7월 4일(금) : 또래도움 봉사활동 발표회

2학기
10월 18일(토) : 교내 환경정화 봉사
11월 12일(수) : 지역사회 봉사활동
12월 17일(수) : 또래도움 봉사활동 정리

<span class="text-box">4. 진로활동</span>

1학기
4월 22일(화) : 진로체험의 날 (외부 전문가 초청/직업 체험)
5월 21일(수) : 직업인 특강
6월 11일(수) : 진로캠프 (1·2학년 대상)
7월 9일(수) : 진로탐색 발표회

2학기
9월 10일(수) : 진로탐색의 날
10월 29일(수) : 직업인 멘토 특강
11월 14일(금) : 진로캠프 (1·2학년 대상)
12월 10일(수) : 진로탐색 발표회`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 목표:</span> 민주적 의사소통, 협업, 공동체 의식 형성<br><br>';
		a1Html += '• <span class="txt-bold">학급 중심 활동</span><br>';
		a1Html += '• 학급자치회 구성, 학급 규칙 제정, 학급 캠페인 운영<br>';
		a1Html += '• 학급별 특색프로젝트 (학급신문, 학교문화캠페인, 독서활동, 생태가꾸기 등)<br>';
		a1Html += '<br><span class="txt-bold">학교 주요 행사 참여</span><br><br>';
		a1Html += '• 입학식·시업식, 체육대회, 축제, 학부모 공개수업, 종업식 등 자율참여형 행사<br>';
		a1Html += '<br><span class="txt-bold">창체·특색사업 연계 자율활동 예시</span><br><br>';
		a1Html += '• 인문사회부 : 독서토론·논술 프로그램 운영<br>';
		a1Html += '• 과학정보부 : STEAM 프로젝트, 과학탐구대회, 환경 캠페인<br>';
		a1Html += '• 상담복지부 : Good Friends 통합교육 봉사활동<br>';
		a1Html += '<br>📌 <span class="txt-bold">기록 예시:</span><br><br>';
		a1Html += '학급회의를 통해 자율적으로 문제를 해결하고, 친구들과 협력하며 공동체 의식을 기름.<br>';
		a1Html += '학교 축제 운영위원으로 참여하여 행사 기획 및 실행 능력을 발휘함.';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">핵심 목표:</span> 소질·적성 개발, 협동적 탐구, 진로 역량 강화<br><br>';
		a2Html += '• <span class="txt-bold">운영 일정:</span><br>';
		a2Html += '• <span class="txt-bold">4월~11월 매월 2회 활동 / 총 12회 (연 28시간)</span><br>';
		a2Html += '• <span class="txt-bold">‘동아리의 날’ 8월 29일 개최 → 발표·전시·공연 중심 축제</span><br>';
		a2Html += '<span class="txt-bold">운영 방침:</span><br><br>';
		a2Html += '• 학생의 흥미·요구 기반 자율 개설<br>';
		a2Html += '• 상설동아리 + 일반동아리 병행<br>';
		a2Html += '• 3학년은 학년 특성상 별도 운영<br>';
		a2Html += '<span class="txt-bold">2025 동아리 예시</span><br><br>';
		a2Html += '• <span class="txt-bold">인문사회형:</span> 문학토론반, 사회과학융합, 듀스(창의토론), 헤스(문이과 융합)<br>';
		a2Html += '• <span class="txt-bold">과학·수학형:</span> 멘사(수학), 유레카(과학탐구실험), 인공지능 문제해결반, 메디비전(의료보건)<br>';
		a2Html += '• <span class="txt-bold">예술·체육형:</span> 밴드부, 아티브(미술), 띠아뜨로(연극), 배드민턴, 농구, 탁구<br>';
		a2Html += '• <span class="txt-bold">미디어·언어형:</span> 방송부, 영상편집반, 영자신문읽기반, 글로벌스터디(국제교류)<br>';
		a2Html += '• <span class="txt-bold">봉사·진로형:</span> 유앤아이(봉사), 또래상담부(솔리언), 진로독서반<br>';
		a2Html += '<br>📌 <span class="txt-bold">기록 예시:</span><br><br>';
		a2Html += '‘사회과학융합반’ 활동을 통해 사회문제의 원인과 해결방안을 탐구하며 비판적 사고력을 기름.<br>';
		a2Html += '과학탐구실험반에서 실험 설계 및 결과 분석을 통해 탐구능력과 협업능력을 신장함.';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 목표:</span> 공동체적 책임감, 실천적 시민역량 강화<br><br>';
		a3Html += '<span class="txt-bold">• 교내 봉사활동:</span><br>';
		a3Html += '• 환경정화, 질서지도, 급식도우미, 행사 지원<br>';
		a3Html += '• Good Friends 프로그램(통합교육 친구도우미)<br>';
		a3Html += '<br><span class="txt-bold">교외 및 연계 봉사:</span><br><br>';
		a3Html += '• 노원구청, 지역복지센터, 도서관 등과 연계<br>';
		a3Html += '• 동아리와 연계한 봉사 (예 : 밴드부 연주봉사, 도서부 독서봉사 등)<br>';
		a3Html += '<br><span class="txt-bold">특화 프로그램:</span><br><br>';
		a3Html += '• 1·2학년 Good Friends 활동 시 봉사시간 인정<br>';
		a3Html += '• 3학년은 봉사·멘토링·학습지도 형태로 운영<br>';
		a3Html += '<br>📌 <span class="txt-bold">기록 예시:</span><br><br>';
		a3Html += '또래상담활동을 통해 친구의 고민을 공감하며 정서지원을 실천함.<br>';
		a3Html += '지역 복지시설 청소 봉사에 참여하여 책임감과 나눔의 의미를 배움.';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표:</span> 자기이해 → 탐색 → 체험 → 성찰의 성장형 진로교육<br><br>';
		a4Html += '• <span class="txt-bold">진로교육 주요 프로그램 (2025 기준)</span><br>';
		a4Html += '• <span class="txt-bold">진로적성검사 및 상담 (3~5월)</span><br>';
		a4Html += '• <span class="txt-bold">직업인 초청 특강 / 대학전공 탐색 (연중)</span><br>';
		a4Html += '• <span class="txt-bold">노원청소년센터 연계 진로워크캠프 (7월)</span><br>';
		a4Html += '• <span class="txt-bold">진로독서 및 주제탐구 발표회 (10~12월)</span><br>';
		a4Html += '• <span class="txt-bold">직업체험 및 위탁교육 설명회 (2~3학년 중심)</span><br>';
		a4Html += '<br><span class="txt-bold">활동 방식</span><br><br>';
		a4Html += '• ‘진로탐구’ 활동 결과물을 포트폴리오로 정리<br>';
		a4Html += '• 1:1 맞춤형 상담을 통한 진학 설계<br>';
		a4Html += '• 탐구보고서·스토리텔링 발표회로 마무리<br>';
		a4Html += '<br>📌 <span class="txt-bold">기록 예시:</span><br><br>';
		a4Html += '진로탐색 프로그램을 통해 자신의 적성과 흥미를 이해하고 진학 목표를 구체화함.<br>';
		a4Html += '전공탐색 발표회를 통해 학문적 관심 분야를 심화시켜 진로 방향을 확립함.';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '<table>';
		a5Html += '<thead>';
		a5Html += '<tr>';
		a5Html += '<td style="width:18%">구분</td>';
		a5Html += '<td style="width:47%">참여 전략</td>';
		a5Html += '<td style="width:30%">생활기록부 포인트</td>';
		a5Html += '</tr>';
		a5Html += '</thead>';
		a5Html += '<tbody>';
		a5Html += '<tr>';
		a5Html += '<td><span class="txt-bold">자율활동</span></td>';
		a5Html += '<td>학급 프로젝트에 주도적으로 참여</td>';
		a5Html += '<td>리더십·소통·자율성</td>';
		a5Html += '</tr>';
		a5Html += '<tr>';
		a5Html += '<td><span class="txt-bold">동아리활동</span></td>';
		a5Html += '<td>전공·흥미 기반 탐구형 동아리 선택</td>';
		a5Html += '<td>창의성·탐구력·협업</td>';
		a5Html += '</tr>';
		a5Html += '<tr>';
		a5Html += '<td><span class="txt-bold">봉사활동</span></td>';
		a5Html += '<td>자율/동아리 연계 봉사 지속</td>';
		a5Html += '<td>책임감·배려심</td>';
		a5Html += '</tr>';
		a5Html += '<tr>';
		a5Html += '<td><span class="txt-bold">진로활동</span></td>';
		a5Html += '<td>체험 후 보고서·발표로 정리</td>';
		a5Html += '<td>진로이해·성찰·계획력</td>';
		a5Html += '</tr>';
		a5Html += '</tbody>';
		a5Html += '</table>';
		a5Html += '<br>🌱 활동 연결 흐름<br><br>';
		a5Html += '자율활동(학급프로젝트) → 동아리탐구(전공·흥미) → 봉사실천(연계활동) → 진로탐색(성찰·발표)<br>';
		a5Html += '이 순서로 연결하면<br>';
		a5Html += '“나의 성장 스토리형 생활기록부”가 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `스포츠 문화
			스포츠 과학
			음악 감상과 비평
			미술 감상과 비평
			교육의이해 
			문학과 영상
			인공지능 수학
			영미 문학 읽기
			동아시아 역사 기행
			음악 연주와 창작
			미술창작 
			주제탐구독서 
			기하
			영어 발표와 토론
			한국지리 탐구
			정치
			경제
			윤리와사상 
			역학과에너지 
			물질과에너지 
			생물의 유전
			지구시스템과학 
			인공지능기초 
			중국어회화 
			미적분Ⅱ
			심화 영어
			법과사회 
			인문학과 윤리
			전자기와 양자
			화학 반응의 세계
			세포와물질대사 
			행성우주과학
			일본어 회화
			인간과 철학
			논리와사고 
			경제 수학
			심화영어독해와작문 
			도시의미래탐구 
			데이터 과학
			심화 일본어
			심화 중국어
			인간과 심리
			인문학적 감성과 역사 이해`;
	}
	if(schoolmax == sangmyung){
		document.getElementById("suggestion1").innerText = '상명고';
		document.getElementById("suggestionschool1").innerText = '상명고';
		document.getElementById("mainschool").innerText = '상명고는';
		document.getElementById("tableschool").innerText = '상명고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1937년 12월 01일
			대표번호 : 02-971-6211
			주소 : 서울특별시 노원구 덕릉로 553
			학생수 : 848명 (남 443명 , 여 405명)
			교원수 : 73명 (남 39명 , 여 34명)
			체육집회공간 : 1실`;
		document.getElementById("suggestionrate").innerText = `전문대학56명(20.8%)
			대학133명(49.4%)
			취업자1명(0.4%)
			기타79명(29.4%)`;
//		document.getElementById("suggestionsubject").innerText = '철학, 심리학, 교육학, 보건, 논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '99';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '92';
		document.getElementById("prior1-2.1").innerText = '89';
		document.getElementById("prior1-2.2").innerText = '100';
		document.getElementById("prior1-2.3").innerText = '81';
		document.getElementById("prior1-3.1").innerText = '79';
		document.getElementById("prior1-3.2").innerText = '90';
		document.getElementById("prior1-3.3").innerText = '70';
		document.getElementById("prior2-1.1").innerText = '95';
		document.getElementById("prior2-1.2").innerText = '89';
		document.getElementById("prior2-1.3").innerText = '89';
		document.getElementById("prior2-2.1").innerText = '85';
		document.getElementById("prior2-2.2").innerText = '79';
		document.getElementById("prior2-2.3").innerText = '79';
		document.getElementById("prior2-3.1").innerText = '76';
		document.getElementById("prior2-3.2").innerText = '70';
		document.getElementById("prior2-3.3").innerText = '69';
		document.getElementById("prior3-1.1").innerText = '89';
		document.getElementById("prior3-1.2").innerText = '94';
		document.getElementById("prior3-1.3").innerText = '99';
		document.getElementById("prior3-2.1").innerText = '78';
		document.getElementById("prior3-2.2").innerText = '83';
		document.getElementById("prior3-2.3").innerText = '84';
		document.getElementById("prior3-3.1").innerText = '67';
		document.getElementById("prior3-3.2").innerText = '72';
		document.getElementById("prior3-3.3").innerText = '70';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '96';
		document.getElementById("prior4-1.3").innerText = '91';
		document.getElementById("prior4-2.1").innerText = '90';
		document.getElementById("prior4-2.2").innerText = '85';
		document.getElementById("prior4-2.3").innerText = '79';
		document.getElementById("prior4-3.1").innerText = '80';
		document.getElementById("prior4-3.2").innerText = '75';
		document.getElementById("prior4-3.3").innerText = '67';
		document.getElementById("prior5-1.1").innerText = '93';
		document.getElementById("prior5-1.2").innerText = '94';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '82';
		document.getElementById("prior5-2.2").innerText = '84';
		document.getElementById("prior5-2.3").innerText = '99';
		document.getElementById("prior5-3.1").innerText = '73';
		document.getElementById("prior5-3.2").innerText = '74';
		document.getElementById("prior5-3.3").innerText = '90';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 4일(화) : 입학식·시업식 → 학급자치회 구성, 학급 규칙 설정
• 3월 7일(금) : 학부모총회 및 학급 임원선거 → 학급자치회 활동 기록
• 5월 2일(금) : 어린이날 행사 → 학교 자율행사 참여
• 7월 18일(금) : 방학식 → 학기 자율활동 마무리
			
2학기
• 9월 1일(월) : 2학기 시업식
• 9월 6일(토) : 학부모 공개수업
• 12월 24일(수) : 종업식
• 1월 2일(금) : 신년회


<span class="text-box">2. 동아리활동</span>
			
1학기
• 3월 19일(수) : 동아리 편성 및 운영 시작
• 5월 30일(금) : 동아리 활동 발표회 (성과 공유)
• 7월 14일(월) : 동아리활동 마무리 및 보고
			
2학기
• 9월 24일(수) : 동아리 활동 시작
• 11월 19일(수) : 동아리 활동 발표회
• 12월(학기말) : 동아리 성과 공유`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 4월 12일(토) : 환경정화 캠페인 (학교 주관 봉사)
• 6월 4일(수) : 지역사회 봉사활동 (학급별 참여)
• 6월 20일(금) : 교내 질서 및 환경 봉사주간
• 7월 4일(금) : 또래도움 봉사활동 발표회
			
2학기
• 10월 18일(토) : 교내 환경정화 봉사
• 11월 12일(수) : 지역사회 봉사활동
• 12월 17일(수) : 또래도움 봉사활동 정리


<span class="text-box">4. 진로활동</span>
			
1학기
• 4월 22일(화) : 진로체험의 날 (외부 전문가 초청·직업 체험)
• 5월 21일(수) : 직업인 특강
• 6월 11일(수) : 진로캠프 (1·2학년 대상)
• 7월 9일(수) : 진로 탐색 발표회
			
2학기
• 9월 10일(수) : 진로탐색의 날
• 10월 29일(수) : 직업인 멘토 특강
• 11월 14일(금) : 진로캠프 (1·2학년 대상)
• 12월 10일(수) : 진로탐색 발표회`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학급별 <span class="txt-bold">자율적 운영 및 프로젝트 중심 활동</span><br>';
		a1Html += '• ‘멀리 보고 함께 가는 우리 학급 대장정’ 운영 : 1인 1역할, 진로독서, 학급별 특색 주제 탐구<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 진로독서 3분 스피치, 나만의 진로신문 만들기<br>';
		a1Html += '• 학급 CEO 프로젝트, 인공지능·환경·세계시민교육 탐구<br>';
		a1Html += '• 또래멘토링, 나눔스터디, 캠페인 활동<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '→ <span class="txt-bold">주도적 기획 + 협력 + 성찰</span>을 강조<br>';
		a1Html += '예) “학급 프로젝트에서 ‘진로독서 스피치’를 기획·발표하며 진로 탐색 역량을 심화함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 창의적 체험활동 상설·일반 동아리 운영 (연간 약 26시간)<br>';
		a2Html += '• 진로·관심 기반의 자율 선택<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 예시 (2025학년도 기준)</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·수학</span> : 과학독서탐구반, 사이언스파크, 세상의 모든 수학, 수학사랑반, 수학체험반, 수리과학탐구반<br>';
		a2Html += '• <span class="txt-bold">인문·사회</span> : 사회문제탐구반, 사회연구반, 현대경제연구반, 사회이슈탐구반<br>';
		a2Html += '• <span class="txt-bold">언어·미디어</span> : 국제교육과학문화협력반(유네스코), 영자신문·영어다큐멘터리반, 언어문학연구반, 웹프로그래밍반, 영상제작반, 방송반<br>';
		a2Html += '• <span class="txt-bold">예술·체육</span> : 미술반, 밴드반, 오케스트라반, 연극반, 힙합반, 사진반, 배드민턴·농구·축구·탁구반<br>';
		a2Html += '• <span class="txt-bold">창의·진로특화</span> : 메이커스반, AI융합연구반, 컴퓨팅사고력반, 창업반(“야! 너도 창업할 수 있어”), 프리디아(Free+idea)<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ <span class="txt-bold">탐구·성과·협업 중심</span><br>';
		a2Html += '예) “사이언스파크 동아리에서 과학 독서 후 모델링 실험을 진행하고 결과를 토론함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• <span class="txt-bold">자율+동아리 연계형 봉사</span> 확대<br>';
		a3Html += '• 지역사회, 마을결합 교육, 기후행동·환경정화 등 실천 중심<br>';
		a3Html += '• 또래상담, 학급 멘토링, 캠페인 등 정서지원 봉사 강화<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 또래상담반 → 상담 및 학교폭력 예방 캠페인<br>';
		a3Html += '• 밴드·오케스트라반 → 지역 연주 봉사<br>';
		a3Html += '• 도서반 → 독서 지도 및 도서관 봉사<br>';
		a3Html += '• 학급·동아리 중심 환경·기후 위기 대응 캠페인 참여<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '→ <span class="txt-bold">“지속성 + 진로 연계”</span> 강조<br>';
		a3Html += '예) “또래상담반 활동을 통해 정서 지원과 상담 진로탐색 역량을 심화함.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• <span class="txt-bold">탐구 → 실험 → 성찰 → 발표</span>의 진로 성장 구조<br>';
		a4Html += '• AI·SW, 메이커, MIS 수학 심포지엄, 페임랩, 국제교류 등 특화<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">AI·SW 탐구</span> : 팀 기반 연구, 최종 보고서 발표<br>';
		a4Html += '• <span class="txt-bold">과학 프로그램</span> : SIS 탐구, 3D프린팅, 현장체험, 멘토링<br>';
		a4Html += '• <span class="txt-bold">수학 MIS</span> : 1년간 개별 심화 탐구 후 심포지엄 발표<br>';
		a4Html += '• <span class="txt-bold">독서·인문</span> : 독서기반 진로탐구, 꿈안에 書 프로그램<br>';
		a4Html += '• <span class="txt-bold">세계시민·국제교류</span> : 유네스코 동아리 활동, 모의 UN, 해외학교 교류(온라인·대면)<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '→ <span class="txt-bold">‘진로의식 변화’와 ‘발표·성과 공유’</span> 중심<br>';
		a4Html += '예) “AI 연구반에서 이미지 인식 알고리즘을 실험하고 결과를 보고서로 발표하며 진로 의식을 구체화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">학급활동(자율)</span> → 학급 대장정 프로젝트에 참여하여 협업 경험 쌓기<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택(흥미·진로)</span> → 진로 방향과 연결된 연구형/창의형 동아리 참여<br>';
		a5Html += '3. <span class="txt-bold">봉사 연계(실천)</span> → 동아리·학급 활동과 봉사 연결해 기록 강화<br>';
		a5Html += '4. <span class="txt-bold">진로확장(탐구→발표)</span> → MIS, AI·SW 연구, 국제교류 등 발표 활동 참여<br>';
		a5Html += '<br><span class="txt-bold">👉 핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급 대장정) → 동아리 탐구(전공·흥미) → 봉사 실천(확장) → 진로 성찰·발표<br>';
		a5Html += '이 구조로 참여하면 생활기록부가 **‘참여형 기록’**이 아닌, **‘성장 스토리형 기록’**으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `운동과 건강 
			스포츠 문화
			스포츠 과학
			음악 감상과 비평
			미술 감상과 비평
			주제 탐구 독서 
			인공지능 수학
			영미 문학 읽기
			정치
			법과 사회 
			경제
			국제관계의 이해
			인공지능 기초 
			주제 탐구 독서 
			기하
			영미 문학 읽기
			동아시아 역사 기행
			윤리와 사상
			정치
			법과 사회
			경제
			국제관계의 이해
			역학과 에너지
			화학 반응의 세계
			세포와 물질대사 
			지구시스템과학 
			문학과 영상
			미적분Ⅱ
			경제 수학
			이산 수학
			심화 영어 독해와 작문 
			직무 영어
			한국지리 탐구
			도시의 미래 탐구 
			동아시아 역사 기행
			윤리와 사상 
			경제
			전자기와 양자
			물질과 에너지 
			화학 반응의 세계
			세포와 물질대사 
			생물의 유전
			행성우주과학
			프로그래밍
			일본어회화
			중국어회화
			인간과 철학
			교육의 이해
			논리와 사고
			문학과 영상
			직무 영어
			심화 영어 독해와 작문 
			한국지리 탐구
			도시의 미래 탐구 
			물질과 에너지 
			데이터 과학
			일본어 회화
			중국어 회화 
			심화 일본어
			심화중국어
			한문 고전 읽기
			인간과 철학
			교육의 이해
			논리와 사고`;
	}
	if(schoolmax == youngsin){
		document.getElementById("suggestion1").innerText = '영신여고';
		document.getElementById("suggestionschool1").innerText = '영신여고';
		document.getElementById("mainschool").innerText = '영신여고는';
		document.getElementById("tableschool").innerText = '영신여고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1987년 12월 15일
			대표번호 : 02-930-8455
			주소 : 서울특별시 노원구 중계로16나길 13
			학생수 : 679명 (남 0명 , 여 679명)
			교원수 : 91명 (남 35명 , 여 56명)
			체육집회공간 : 2실`;
		document.getElementById("suggestionrate").innerText = `전문대학36명(15.1%)
			대학112명(46.9%)`;
//		document.getElementById("suggestionsubject").innerText = '입체조형, 인공지능기초, 종교학/논리학 중 택일(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '92';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '86';
		document.getElementById("prior1-2.2").innerText = '95';
		document.getElementById("prior1-2.3").innerText = '89';
		document.getElementById("prior1-3.1").innerText = '79';
		document.getElementById("prior1-3.2").innerText = '88';
		document.getElementById("prior1-3.3").innerText = '80';
		document.getElementById("prior2-1.1").innerText = '82';
		document.getElementById("prior2-1.2").innerText = '96';
		document.getElementById("prior2-1.3").innerText = '93';
		document.getElementById("prior2-2.1").innerText = '72';
		document.getElementById("prior2-2.2").innerText = '87';
		document.getElementById("prior2-2.3").innerText = '83';
		document.getElementById("prior2-3.1").innerText = '63';
		document.getElementById("prior2-3.2").innerText = '77';
		document.getElementById("prior2-3.3").innerText = '73';
		document.getElementById("prior3-1.1").innerText = '97';
		document.getElementById("prior3-1.2").innerText = '97';
		document.getElementById("prior3-1.3").innerText = '96';
		document.getElementById("prior3-2.1").innerText = '87';
		document.getElementById("prior3-2.2").innerText = '87';
		document.getElementById("prior3-2.3").innerText = '87';
		document.getElementById("prior3-3.1").innerText = '78';
		document.getElementById("prior3-3.2").innerText = '79';
		document.getElementById("prior3-3.3").innerText = '79';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '80';
		document.getElementById("prior4-2.1").innerText = '96';
		document.getElementById("prior4-2.2").innerText = '93';
		document.getElementById("prior4-2.3").innerText = '71';
		document.getElementById("prior4-3.1").innerText = '89';
		document.getElementById("prior4-3.2").innerText = '84';
		document.getElementById("prior4-3.3").innerText = '62';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '99';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '94';
		document.getElementById("prior5-2.2").innerText = '90';
		document.getElementById("prior5-2.3").innerText = '100';
		document.getElementById("prior5-3.1").innerText = '84';
		document.getElementById("prior5-3.2").innerText = '82';
		document.getElementById("prior5-3.3").innerText = '93';
//		document.getElementById("textCal1").innerHTML = ``;
//		document.getElementById("textCal2").innerHTML = ``;
		$('#textCal1').parents('.img7area').remove();
		$('#textCal2').parents('.img7area').remove();
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학급 중심의 자율적 운영(자치회, 규칙 설정, 행사 운영)<br>';
		a1Html += '• 리더스아카데미(Y-Leaders Academy) 참여를 통한 자기주도적 학습 강화<br>';
		a1Html += '• 발표·보고서 작성·학술제 준비 등 탐구형 활동 강조<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 학급 환경개선 프로젝트 기획 및 실천<br>';
		a1Html += '• ‘좋은 학교 만들기 프로젝트’ 기획 및 보고서 발표<br>';
		a1Html += '• 리더스아카데미 내 진로발표·학술제 준비 참여<br>';
		a1Html += '• 학급 행사 및 학교 행사 운영 보조<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '→ ‘기획–실천–발표’ 단계가 드러나도록 작성<br>';
		a1Html += '예) “학급 내 자율적 회의를 통해 ‘좋은 학교 만들기 프로젝트’를 기획하고 결과물을 학술제에서 발표함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 정규 동아리 활동 + 리더스아카데미 내 탐구소모임<br>';
		a2Html += '• 연간 약 25~30시간 운영(학기 단위 활동 포함)<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 예시</span><br><br>';
		a2Html += '• <span class="txt-bold">학술·탐구계열</span> : 햇새(경제), 파이레이트(수학), 창의융합과학반, 과학탐구반, 과학실험반, 과학콘서트<br>';
		a2Html += '• <span class="txt-bold">인문·사회계열</span> : 해솔(토론), 초아(시사토론), 찾아갈지도(지리탐구), 토독토독(독서토론), 인문학 걷기반<br>';
		a2Html += '• <span class="txt-bold">예술·체육계열</span> : 영클라쎄(오케스트라), 한소리(합창), 미술부, 엠엔씨(댄스), 예스 스포츠, 피클볼 클럽<br>';
		a2Html += '• <span class="txt-bold">언어·미디어계열</span> : 영자신문반, 방송반, 글길(교내신문), 글 그리다(출판), 모의국제회의반<br>';
		a2Html += '• <span class="txt-bold">창의·봉사계열</span> : 선샤인(봉사), 생태환경, 무세이온(교육탐구), 씨크루(코딩), 또래친구 상담부, 도서관아 놀자<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ ‘탐구 + 산출물 + 협업’ 중심 작성<br>';
		a2Html += '예) “경제 현상을 분석하여 보고서를 작성하고 발표하는 동아리 활동을 통해 탐구력과 표현력을 기름.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• 리더스아카데미와 연계한 봉사활동(멘토링, 학습 지원)<br>';
		a3Html += '• 동아리 중심 봉사(연주, 독서문화 확산, 또래 상담)<br>';
		a3Html += '• 지역사회 연계형 봉사(도서관, 환경정화, 기부 공연)<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 한소리·영클라쎄 → 교내·지역사회 합창·연주 봉사<br>';
		a3Html += '• 또래친구 상담부 → 상담 활동을 통한 정서 지원<br>';
		a3Html += '• 생태환경 → 탄소중립 실천 캠페인<br>';
		a3Html += '• 에이레노포이온 → 평화·선교 활동 및 환경보호<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '→ ‘지속성 + 진로 연계성’ 강조<br>';
		a3Html += '예) “또래상담 활동을 통해 학교 내 정서지원을 실천하며 상담 관련 진로 탐색 기회를 가짐.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• 리더스아카데미 프로그램을 통한 자기주도 학습 및 진로 성찰<br>';
		a4Html += '• 학술제·프로젝트 발표를 통한 전공탐구와 표현력 강화<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">리더스아카데미(Y-Leaders Academy)</span><br>';
		a4Html += '• 대상 : 학년별 20명 선발<br>';
		a4Html += '• 운영 : 방과후 심화수업(국·영·수·사/과학), 자기주도학습(주 3~6회), 토요 프로그램<br>';
		a4Html += '• 특별 프로그램 : 선배 멘토링, 대입 전략 세미나, 학술제 준비, 개인별 생활기록부 컨설팅<br>';
		a4Html += '• 팀 협업 프로젝트 : 학년 교류 진로 소모임 운영<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '→ ‘체험 → 성찰 → 발표’ 구조가 드러나게 작성<br>';
		a4Html += '예) “리더스아카데미에서 과학 실험과 발표 활동을 통해 협업의 중요성을 깨닫고 공학 분야 진로를 구체화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">학급활동(자율)</span> → 학급 프로젝트·좋은 학교 만들기 등 기획형 활동에 참여하기<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택(흥미·진로)</span> : 탐구형·창의형 동아리를 선택해 결과물 제작·발표하기<br>';
		a5Html += '3. <span class="txt-bold">봉사 연계(실천)</span> : 동아리·학급 활동을 봉사와 연결해 지속적 기록 남기기<br>';
		a5Html += '4. <span class="txt-bold">진로확장(탐색→발표)</span> : 리더스아카데미·학술제·멘토링 참여 후 보고서·발표로 마무리<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급 프로젝트) → 동아리탐구(전공/흥미) → 봉사실천(확장) → 진로성찰(리더스아카데미 발표)<br>';
		a5Html += '이 과정을 따르면 생활기록부가 단순 참여형이 아닌 **‘성장 스토리형’**으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `주제 탐구 독서
			수학과제 탐구
			심화 영어
			스포츠 문화
			스포츠 과학
			생활과 인성 I
			생활과 인성 II
			종교와 생활
			현대사회와 종교
			경제
			윤리와 사상
			지구시스템과학
			화학 반응의 세계
			세포와 물질 대사
			역학과 에너지
			미적분 II
			기하
			중국어 회화
			일본어 회화
			한문 고전 읽기
			음악 감상과 비평
			미술 창작
			인문학과 윤리
			도시의 미래 탐구
			행성우주과학
			물질과 에너지
			생물의 유전
			전자기와 양자
			심화 일본어
			심화 중국어
			미술 이론
			미술 전공 실기
			드로잉
			조형 탐구
			프로그래밍
			소프트웨어와 생활
			인공지능 기초
			데이터 과학`;
	}
	if(schoolmax == daejingirls){
		document.getElementById("suggestion1").innerText = '대진여고';
		document.getElementById("suggestionschool1").innerText = '대진여고';
		document.getElementById("mainschool").innerText = '대진여고는';
		document.getElementById("tableschool").innerText = '대진여고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1988년 02월 12일
			대표번호 : 02-979-2327
			주소 : 서울특별시 노원구 공릉로 438
			학생수 : 869명 (남 0명 , 여 869명)
			교원수 : 81명 (남 20명 , 여 61명)
			체육집회공간 : 2실`;
		document.getElementById("suggestionrate").innerText = `전문대학25명(9.5%)
			대학121명(46%)
			취업자1명(0.4%)
			기타116명(44.1%)`;
//		document.getElementById("suggestionsubject").innerText = '교육학,진로와직업,환경,논술(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '95';
		document.getElementById("prior1-2.1").innerText = '97';
		document.getElementById("prior1-2.2").innerText = '94';
		document.getElementById("prior1-2.3").innerText = '84';
		document.getElementById("prior1-3.1").innerText = '89';
		document.getElementById("prior1-3.2").innerText = '84';
		document.getElementById("prior1-3.3").innerText = '75';
		document.getElementById("prior2-1.1").innerText = '100';
		document.getElementById("prior2-1.2").innerText = '100';
		document.getElementById("prior2-1.3").innerText = '76';
		document.getElementById("prior2-2.1").innerText = '91';
		document.getElementById("prior2-2.2").innerText = '89';
		document.getElementById("prior2-2.3").innerText = '66';
		document.getElementById("prior2-3.1").innerText = '83';
		document.getElementById("prior2-3.2").innerText = '75';
		document.getElementById("prior2-3.3").innerText = '57';
		document.getElementById("prior3-1.1").innerText = '96';
		document.getElementById("prior3-1.2").innerText = '96';
		document.getElementById("prior3-1.3").innerText = '80';
		document.getElementById("prior3-2.1").innerText = '88';
		document.getElementById("prior3-2.2").innerText = '85';
		document.getElementById("prior3-2.3").innerText = '69';
		document.getElementById("prior3-3.1").innerText = '81';
		document.getElementById("prior3-3.2").innerText = '75';
		document.getElementById("prior3-3.3").innerText = '59';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '99';
		document.getElementById("prior4-2.1").innerText = '94';
		document.getElementById("prior4-2.2").innerText = '89';
		document.getElementById("prior4-2.3").innerText = '86';
		document.getElementById("prior4-3.1").innerText = '87';
		document.getElementById("prior4-3.2").innerText = '80';
		document.getElementById("prior4-3.3").innerText = '74';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '100';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '99';
		document.getElementById("prior5-2.2").innerText = '90';
		document.getElementById("prior5-2.3").innerText = '100';
		document.getElementById("prior5-3.1").innerText = '88';
		document.getElementById("prior5-3.2").innerText = '79';
		document.getElementById("prior5-3.3").innerText = '92';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>

1학기
3월 4일(화) : 입학식·시업식 → 학급자치회 구성, 학급 규칙 설정
3월 7일(금) : 학부모총회 및 학급 임원선거 → 학급자치회 활동 기록
5월 2일(금) : 어린이날 행사 → 학교 자율행사 참여
7월 18일(금) : 방학식 → 학기 자율활동 마무리

2학기
9월 1일(월) : 2학기 시업식
9월 6일(토) : 학부모 공개수업
12월 24일(수) : 종업식
1월 2일(금) : 신년회

<span class="text-box">2. 동아리활동</span>

1학기
3월 19일(수) : 동아리 편성 및 운영 시작
5월 30일(금) : 동아리 활동 발표회 (성과 공유)
7월 14일(월) : 동아리활동 마무리 및 보고

2학기
9월 24일(수) : 동아리 활동 시작
11월 19일(수) : 동아리 활동 발표회
12월(학기말) : 동아리 성과 공유`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">3. 봉사활동</span>

1학기
4월 12일(토) : 환경정화 캠페인 (학교 주관 봉사)
6월 4일(수) : 지역사회 봉사활동 (학급별 참여)
6월 20일(금) : 교내 질서 및 환경 봉사주간
7월 4일(금) : 또래도움 봉사활동 발표회

2학기
10월 18일(토) : 교내 환경정화 봉사
11월 12일(수) : 지역사회 봉사활동
12월 17일(수) : 또래도움 봉사활동 정리

<span class="text-box">4. 진로활동</span>

1학기
4월 22일(화) : 진로체험의 날 (외부 전문가 초청·직업 체험)
5월 21일(수) : 직업인 특강
6월 11일(수) : 진로캠프 (1·2학년 대상)
7월 9일(수) : 진로 탐색 발표회

2학기
9월 10일(수) : 진로탐색의 날
10월 29일(수) : 직업인 멘토 특강
11월 14일(금) : 진로캠프 (1·2학년 대상)
12월 10일(수) : 진로탐색 발표회`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학급 중심의 <span class="txt-bold">자율적 운영</span> (학급자치회, 규칙 설정, 행사기획)<br>';
		a1Html += '• ‘<span class="txt-bold">1학급 1특색 프로젝트</span>’ 운영 : 학급별 주제 선정 후 결과물 발표<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 학급 신문 제작, 봉사 캠페인 기획, 독서 토론회 주최<br>';
		a1Html += '• 인문사회·과학 아카데미 성과 공유회 참여<br>';
		a1Html += '• 학교 행사 (입학식, 축제, 시업·종업식, 공개수업 등) 운영보조<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '→ 자율활동은 ‘참여 + 기획 + 발표’ 3단계로 구성되면 기록이 풍부해짐.<br>';
		a1Html += '예) “학급 내 자율적 회의를 통해 학급 환경 개선 프로젝트를 기획하고 실행함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 매주 금요일 7교시 (연간 26시간)<br>';
		a2Html += '• 학생의 <span class="txt-bold">진로와 관심사 기반 자율 구성</span>, 주제 중심의 탐구형 동아리<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 예시 (2025학년도 기준)</span><br><br>';
		a2Html += '• <span class="txt-bold">수리·과학계열</span> : 수리과학학술연구부, 융합과학아카데미, 응용수학부, 물리지구과학부, 생명과학부, 의약학연구부<br>';
		a2Html += '• <span class="txt-bold">인문사회계열</span> : 인문사회아카데미, 사회문제탐구부, 글로벌아카데미, 디케(학생자치법정), 글로벌콤팩트(국제윤리탐구)<br>';
		a2Html += '• <span class="txt-bold">예술·체육계열</span> : 관현악부, 밴드부, 미술부, 연극부, 실용댄스부, 배드민턴부<br>';
		a2Html += '• <span class="txt-bold">언어·미디어계열</span> : 영자신문부, 영화탐구부, 전공원서강독부, 도서부, 북나래이터부<br>';
		a2Html += '• <span class="txt-bold">창의·진로특화</span> : 창업동아리, 컴퓨터사이언스부, 과학영화탐구부, 문제적여자(논리형 수학탐구)<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ ‘탐구활동 + 산출물 + 협업’ 중심으로 작성<br>';
		a2Html += '예) “과학소설을 바탕으로 영화와의 서사적 차이를 분석하고 토론함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• 동아리 또는 학급 중심 봉사활동 확대<br>';
		a3Html += '• 지역사회 연계형 봉사 (도서관, 복지시설, 환경정화, 또래상담 등)<br>';
		a3Html += '• 학교 내 역할형 봉사 (학급환경, 행사지원, 멘토링)<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 밴드부 → 지역사회 연주 봉사<br>';
		a3Html += '• 도서부 → 도서관 정리 및 낭독회<br>';
		a3Html += '• 또래상담부 → 정서지원, 학교폭력예방 활동<br>';
		a3Html += '• 창체인성부 연계 → 교내 봉사주간(6월, 11월 예정)<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '→ “지속적 참여”와 “진로 연계”가 핵심<br>';
		a3Html += '예) “또래상담부 활동을 통해 학교 내 정서지원을 실천하며 상담 관련 진로탐색의 기회를 가짐.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• ‘체험 → 성찰 → 발표’의 진로성장 순환구조 확립<br>';
		a4Html += '• 전공별 진로 탐색(의약학, 인문사회, 과학기술, 예술·미디어 등)<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">진로탐색의 날</span> : AI·로봇·코딩·에코테크 등 체험형 활동<br>';
		a4Html += '• <span class="txt-bold">진로캠프</span> : 협업 기반 전공 심화 프로젝트, 로드맵 설계<br>';
		a4Html += '• <span class="txt-bold">진로멘토링</span> : 선배·전문가 초청 특강, 진학 전략 수립<br>';
		a4Html += '• <span class="txt-bold">진로발표회</span> : ‘나의 성장 스토리’ 공유 (진로스토리텔링 중심)<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '→ ‘진로의식 변화’ 중심으로 작성<br>';
		a4Html += '예) “진로캠프를 통해 과학적 문제 해결 과정에서 협업의 중요성을 깨닫고 공학 분야 진로를 구체화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">학급활동(자율)</span> → 학급 프로젝트에 주도적으로 참여해 협업 경험을 쌓기<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택(흥미·진로)</span> → 진로 방향과 맞는 연구형/창의형 동아리 선택<br>';
		a5Html += '3. <span class="txt-bold">봉사 연계(실천)</span> → 동아리·자율활동과 봉사활동을 연계해 지속적 기록 남기기<br>';
		a5Html += '4. <span class="txt-bold">진로확장(탐색→발표)</span> → 활동 후 결과를 발표하거나 포트폴리오로 정리하기<br>';
		a5Html += '<br><span class="txt-bold">👉 핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급 프로젝트) → 동아리탐구(전공/흥미) → 봉사실천(확장) → 진로성찰(발표)<br>';
		a5Html += '이 흐름대로 참여하면<br>';
		a5Html += '생활기록부가 ‘단순 참여형’이 아닌 ‘성장 스토리형’으로 구성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `인공지능 수학
			심화 영어 
			스포츠 문화
			스포츠 과학
			음악 감상과 비평
			미술 감상과 비평
			인공지능 기초 
			생활과학 탐구
			인간과 철학
			동아시아 역사 기행
			윤리와 사상 
			물질과 에너지 
			지구시스템과학 
			문학과 영상
			미적분Ⅱ
			경제
			한국지리 탐구
			역학과 에너지 
			세포와 물질대사 
			중국어 회화 
			일본어 회화
			한문 고전 읽기
			직무 의사소통
			고급 미적분
			기하
			경제 수학
			영어 발표와 토론
			도시의 미래 탐구 
			법과 사회 
			인문학과 윤리
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			행성우주과학
			인간과 심리
			주제 탐구 독서 
			고급 대수
			고급 기하
			직무 수학
			직무 영어
			심화 영어 독해와 작문 
			정치
			국제 관계의 이해
			고급 물리학
			고급 화학
			고급 생명과학
			고급 지구과학
			논리와 사고 `;
	}
	if(schoolmax == yonghwa){
		document.getElementById("suggestion1").innerText = '용화여고';
		document.getElementById("suggestionschool1").innerText = '용화여고';
		document.getElementById("mainschool").innerText = '용화여고는';
		document.getElementById("tableschool").innerText = '용화여고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1987년 12월 15일
			대표번호 : 02-950-3500
			주소 : 서울특별시 노원구 동일로 1461
			학생수 : 760명 (남 0명 , 여 760명)
			교원수 : 71명 (남 28명 , 여 43명)
			체육집회공간 : 3실`;
		document.getElementById("suggestionrate").innerText = `전문대학37명(15.4%)
			대학128명(53.3%)
			취업자38명(15.8%)
			기타37명(15.4%)`;
//		document.getElementById("suggestionsubject").innerText = '프랑스어,실용경제,철학,교육학,진로와직업,심리학,환경,논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '100';
		document.getElementById("prior1-2.1").innerText = '98';
		document.getElementById("prior1-2.2").innerText = '100';
		document.getElementById("prior1-2.3").innerText = '88';
		document.getElementById("prior1-3.1").innerText = '92';
		document.getElementById("prior1-3.2").innerText = '92';
		document.getElementById("prior1-3.3").innerText = '76';
		document.getElementById("prior2-1.1").innerText = '96';
		document.getElementById("prior2-1.2").innerText = '100';
		document.getElementById("prior2-1.3").innerText = '100';
		document.getElementById("prior2-2.1").innerText = '89';
		document.getElementById("prior2-2.2").innerText = '90';
		document.getElementById("prior2-2.3").innerText = '90';
		document.getElementById("prior2-3.1").innerText = '83';
		document.getElementById("prior2-3.2").innerText = '78';
		document.getElementById("prior2-3.3").innerText = '77';
		document.getElementById("prior3-1.1").innerText = '100';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '94';
		document.getElementById("prior3-2.1").innerText = '99';
		document.getElementById("prior3-2.2").innerText = '94';
		document.getElementById("prior3-2.3").innerText = '81';
		document.getElementById("prior3-3.1").innerText = '89';
		document.getElementById("prior3-3.2").innerText = '82';
		document.getElementById("prior3-3.3").innerText = '68';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '99';
		document.getElementById("prior4-1.3").innerText = '91';
		document.getElementById("prior4-2.1").innerText = '95';
		document.getElementById("prior4-2.2").innerText = '89';
		document.getElementById("prior4-2.3").innerText = '79';
		document.getElementById("prior4-3.1").innerText = '90';
		document.getElementById("prior4-3.2").innerText = '79';
		document.getElementById("prior4-3.3").innerText = '68';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '96';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '94';
		document.getElementById("prior5-2.2").innerText = '84';
		document.getElementById("prior5-2.3").innerText = '100';
		document.getElementById("prior5-3.1").innerText = '85';
		document.getElementById("prior5-3.2").innerText = '73';
		document.getElementById("prior5-3.3").innerText = '94';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 6일(목) : 봉사활동 소양교육(환경)
• 3월 7일(금) : 학교폭력예방교육
• 3월 6일(금) : CL 선후배 멘토링(1,2학년)
• 4월 8일(화) : 학급 자치활동(1,2,3학년), 다문화 이해 활동
• 5월 22일(목) : 장애 인식개선 교육(1,2,3학년)
• 6월 24일(화) : 학급 자치활동, 수학·과학·인문 동아리 발표회
			
2학기
• 9월 16일(화) : 금요일 시간표 운영 → 자율적 수업 참여
• 10월 22일(수) : 학급 자치활동(1,2,3학년)
• 11월 24일(월) : 학급 자치활동(1,2,3학년), 봉사활동 평가(1h)
• 12월 29일(월) : 학급 자치활동(1,2,3학년), 생활기록부 점검


<span class="text-box">2. 동아리활동</span>
			
1학기
• 3월 6일(목) : 동아리 활동 시작(1,2학년)
• 5월 15일(목) : 동아리 활동(1,2,3학년)
• 6월 27일(금) : 동아리 활동(1,2,3학년), 과학·수학·인문 발표회
			
2학기
• 9월 15일(월) : 동아리 활동(1,2,3학년)
• 11월 22일(토) : 동아리 활동(1,2학년)/학급자치활동(3학년)
• 11월 23일(일) : 동아리 종합발표회(7h)
• 12월 24일(수) : 동아리 활동(1,2학년)/학급자치활동(3학년)`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 3월 6일(목) : 봉사활동 소양교육(환경)
• 4월 22일(화) : 자율적 봉사활동 주간
• 6월 24일(화) : 봉사활동 참여 + 발표회
			
2학기
• 11월 24일(월) : 봉사활동 평가(1h)


<span class="text-box">4. 진로활동</span>
			
1학기
• 3월 30일(금) : 진로특강(1,2학년)
• 4월 10일(수) : 소규모 테마형 교육여행 → 진로 탐색
• 6월 24일(화) : 진로 관련 학문 융합 발표회
			
2학기
• 9월 30일(화) : 진로특강(1,2학년)
• 10월 30일(목) : 진로 활동(학문탐색·소규모 테마여행 포함)
• 12월 30일(화) : 진로특강 및 겨울방학식`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학교 특색사업(융합형 인재·창의역량 강화, 독서·토론 활성화, 공동체 인성교육) 기반<br>';
		a1Html += '• 학급 단위 자율 운영 + 학생회 중심 기획 활동<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 독서토론 주간, 학급별 프로젝트(환경·AI·사회이슈 탐구)<br>';
		a1Html += '• 학교 행사 운영 보조(입학식, 축제, 종업식)<br>';
		a1Html += '• 또래 상담·멘토링, 봉사 캠페인<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '예) “학급 독서토론 주간을 기획·진행하며 주도성과 협업 역량을 기름.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 정규 동아리 + 스포츠클럽 병행 운영 (1학기 기준 757명 참여)<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 계열 (2025 목록 반영)</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·수학·IT</span> : 수리탐구반, 과학실험탐구반, 프로그래밍반, AI·로봇탐구, 수학토론반<br>';
		a2Html += '• <span class="txt-bold">인문·사회</span> : 사회이슈탐구반, 인문독서반, 경제경영탐구, 모의국제회의, 토론·정책 제안반<br>';
		a2Html += '• <span class="txt-bold">언어·미디어·예술</span> : 방송반, 신문반, 영화탐구, 문학창작반, 밴드, 미술부, 연극반<br>';
		a2Html += '• <span class="txt-bold">체육·스포츠클럽</span> : 배드민턴, 농구, 축구, 탁구, 스포츠댄스, 보디빌딩<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ “탐구주제 + 산출물(보고서·발표) + 협업” 중심<br>';
		a2Html += '예) “경제탐구반에서 경제 현안을 분석하고 모의 정책 제안서를 작성하여 토론함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• 동아리·스포츠클럽과 연계한 사회참여형 봉사<br>';
		a3Html += '• 또래 멘토링·상담, 지역사회 연계 봉사 확대<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 밴드부·연극부 → 지역 공연 봉사<br>';
		a3Html += '• 도서·독서 동아리 → 도서관 정리, 낭독회<br>';
		a3Html += '• 체육·스포츠클럽 → 학교 축제·체육대회 지원<br>';
		a3Html += '• 사회탐구반 → 환경정화 캠페인, 정책 제안 봉사<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '예) “사회이슈탐구반에서 기후변화 캠페인을 기획하고, 학생 주도 봉사를 통해 사회적 책임을 실천함.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• <span class="txt-bold">탐구–발표–성과 공유</span> 구조 확립<br>';
		a4Html += '• 전공 연계형 프로젝트 기반 탐구 활동 강화<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• 과학탐구반 → 실험 보고서 작성, 학술제 발표<br>';
		a4Html += '• 수학토론반 → 수학 모델링 탐구 및 심포지엄<br>';
		a4Html += '• 모의국제회의반 → 국제이슈 분석, 영어 발표<br>';
		a4Html += '• 방송·미디어반 → 영상 제작, 뉴스 리포트 제작<br>';
		a4Html += '• 스포츠클럽 → 스포츠 경기 운영 및 리더십 체험<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '예) “모의국제회의반에서 환경정책을 주제로 한 영어 발표를 준비하며 글로벌 리더십 역량을 강화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">자율활동</span>. → 학급 프로젝트·독서토론 주간에 적극 참여<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택</span> → 진로와 연결되는 탐구형·창의형 동아리 선택<br>';
		a5Html += '3. <span class="txt-bold">봉사 실천</span> → 동아리 성과를 지역사회·학교에 환원<br>';
		a5Html += '4. <span class="txt-bold">진로 탐구</span> → 보고서·발표·공연·대회 등 산출물 확보<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급 프로젝트·독서토론) → 동아리탐구(전공·스포츠) → 봉사실천(환원) → 진로성찰(성과 발표)<br>';
		a5Html += '이 구조로 참여하면 생활기록부가 **‘참여 기록형’**이 아닌 **‘탐구·성과·성장형 기록’**으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `심화 영어 독해와 작문 
			스포츠 문화
			스포츠 과학
			운동과 건강 
			음악 연주와 창작
			미술 창작 
			주제 탐구 독서 
			인공지능 수학
			윤리와 사상 
			경제
			데이터 과학
			인간과 철학
			기하
			영어 발표와 토론
			한국지리 탐구
			정치
			법과 사회 
			역학과 에너지 
			물질과 에너지 
			세포와 물질대사 
			지구시스템과학 
			인공지능 기초
			논리와 사고 
			미적분Ⅱ
			경제 수학
			심화 영어 
			도시의 미래 탐구 
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			행성우주과학
			중국어 회화 
			일본어 회화
			인간과 심리
			문학과 영상
			인문학과 윤리
			국제 관계의 이해
			심화 중국어 
			심화 일본어
			교육의 이해 `;
	}
	if(schoolmax == cheongwongirls){
		document.getElementById("suggestion1").innerText = '청원여고';
		document.getElementById("suggestionschool1").innerText = '청원여고';
		document.getElementById("mainschool").innerText = '청원여고는';
		document.getElementById("tableschool").innerText = '청원여고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 2001년 03월 01일
			대표번호 : 02-3399-7811
			주소 : 서울특별시 노원구 한글비석로 506
			학생수 : 854명 (남 0명 , 여 854명)
			교원수 : 82명 (남 28명 , 여 54명)
			체육집회공간 : 1실`;
		document.getElementById("suggestionrate").innerText = `전문대학63명(22%)
			대학133명(46.5%)`;
//		document.getElementById("suggestionsubject").innerText = '인공지능기초,프로그래밍,식품안전과건강,심리학,교육학,보건,논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '96';
		document.getElementById("prior1-1.2").innerText = '94';
		document.getElementById("prior1-1.3").innerText = '95';
		document.getElementById("prior1-2.1").innerText = '90';
		document.getElementById("prior1-2.2").innerText = '86';
		document.getElementById("prior1-2.3").innerText = '86';
		document.getElementById("prior1-3.1").innerText = '84';
		document.getElementById("prior1-3.2").innerText = '79';
		document.getElementById("prior1-3.3").innerText = '78';
		document.getElementById("prior2-1.1").innerText = '85';
		document.getElementById("prior2-1.2").innerText = '85';
		document.getElementById("prior2-1.3").innerText = '100';
		document.getElementById("prior2-2.1").innerText = '79';
		document.getElementById("prior2-2.2").innerText = '76';
		document.getElementById("prior2-2.3").innerText = '89';
		document.getElementById("prior2-3.1").innerText = '73';
		document.getElementById("prior2-3.2").innerText = '68';
		document.getElementById("prior2-3.3").innerText = '78';
		document.getElementById("prior3-1.1").innerText = '94';
		document.getElementById("prior3-1.2").innerText = '98';
		document.getElementById("prior3-1.3").innerText = '90';
		document.getElementById("prior3-2.1").innerText = '87';
		document.getElementById("prior3-2.2").innerText = '89';
		document.getElementById("prior3-2.3").innerText = '77';
		document.getElementById("prior3-3.1").innerText = '80';
		document.getElementById("prior3-3.2").innerText = '81';
		document.getElementById("prior3-3.3").innerText = '66';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '95';
		document.getElementById("prior4-1.3").innerText = '94';
		document.getElementById("prior4-2.1").innerText = '93';
		document.getElementById("prior4-2.2").innerText = '85';
		document.getElementById("prior4-2.3").innerText = '84';
		document.getElementById("prior4-3.1").innerText = '87';
		document.getElementById("prior4-3.2").innerText = '76';
		document.getElementById("prior4-3.3").innerText = '74';
		document.getElementById("prior5-1.1").innerText = '94';
		document.getElementById("prior5-1.2").innerText = '79';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '85';
		document.getElementById("prior5-2.2").innerText = '67';
		document.getElementById("prior5-2.3").innerText = '99';
		document.getElementById("prior5-3.1").innerText = '75';
		document.getElementById("prior5-3.2").innerText = '56';
		document.getElementById("prior5-3.3").innerText = '90';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 4일(화) : 입학식(1학년), 개학식(2·3학년)
• 3월 5일(수) : 학급 임원 선출
• 3월 10일(월) : 학생인권교육
• 3월 17일(월)~21일(금) : 학부모 상담 주간, 수업 나눔 주간
• 3월 21일(금) : 학부모 총회, 학교설명회, 민방위 훈련
• 5월 5일(월) : 어린이날, 부처님오신날 기념행사
• 5월 26일(월) : 교학공의 날, AI 진로진학 학부모 연수
• 6월 2일(월)~6월 6일(금) : 사회정서(생명존중) 교육 주간
• 6월 27일(금) : 창의력 챌린지, 학력평가(3학년)
			
2학기
• 8월 18일(월) : 2학기 개학식
• 8월 23일(토) : 학급 임원 선출, 학생인권교육
• 9월 1일(월)~9월 5일(금) : 수업 나눔 주간, 세계시민교육 주간
• 9월 23일(화) : 장애인식교육, 성범죄예방 및 신고의무자 교육
• 10월 20일(월)~24일(금) : 독도교육 주간, 수련활동 및 테마학습
• 11월 3일(월)~7일(금) : SW·AI 체험주간, 전문가 특강
• 11월 19일(수) : 대학수학능력시험(3학년), 1·2학년 휴업
• 11월 24일(월)~28일(금) : 기말고사 기간
• 12월 25일(목) : 성탄절 행사
• 12월 31일(수) : 2학기 종업식`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">2. 동아리활동</span>
		
1학기
• 3월 28일(금) : 리더십 캠프 후 동아리 활동 시작
• 4월 24일(목) : 동아리 활동
• 5월 24일(토) : 동아리 활동
• 6월 20일(금) : 동아리 활동
• 7월 4일(금) : 동아리 활동
			
2학기
• 8월 29일(금) : 동아리 활동
• 9월 12일(금) : 동아리 활동
• 10월 17일(금) : 동아리 활동
• 11월 7일(금) : 동아리 활동
• 11월 28일(금) : 동아리 활동 및 축제 연계
• 12월 19일(금) : 동아리 활동`;
			
		let newDiv = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal3"></p></div></div>');
		let targetDiv = $('#activity1').parents('div.img7area');
		newDiv.insertBefore(targetDiv);
		
		document.getElementById("textCal3").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 3월 4일(화) : 봉사활동 시작(신입생 포함)
• 4월 29일(화) : 심폐소생술 연수 및 봉사 연계
• 5월 16일(금) : 전일제 봉사(1·2학년), 현충원 참배
			
2학기
• 9월 23일(화) : 장애인식교육 후 봉사 참여
• 11월 3일(월) : 헌혈 행사(자율 봉사 인정)


<span class="text-box">4. 진로활동</span>
			
1학기
• 4월 16일(수) : 진로탐구 활동(전학년)
• 5월 14일(수) : 학력평가(3학년), 체험학습(1·2학년)
• 6월 10일(화) : 교통안전교육(1학년), 진로 탐구 위크(1학년)
• 6월 16일(월) : 창의융합데이, 진로탐구위크(2·3학년)
• 7월 18일(금) : AI 해커톤 캠프
			
2학기
• 8월 25일(월) : 수업공개 및 진로연계 활동
• 9월 22일(월) : 수련활동 및 테마학습(전학년)
• 10월 13일(월) : 학력평가(1·2·3학년), 진로 연계
• 11월 11일(화) : 영재학급 수료식, 진로 탐색 발표
• 12월 2일(화) : 학부모 진학설명회(1·2학년)
• 12월 22일(월) : 정시 원서접수 설명회(3학년)`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학급 중심의 <span class="txt-bold">자율 운영</span> (학급회의·규칙 제정·프로젝트)<br>';
		a1Html += '• <span class="txt-bold">공유캠퍼스·AI 정보교육·메이커 교육</span> 등 특색 프로그램과 연계<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 국제 공동수업 참여 : 해외학교와 온라인 프로젝트 운영<br>';
		a1Html += '• 메이커 교내 전시·축제 참여, AI SW 작품 발표회<br>';
		a1Html += '• 학급별 환경 개선, 학급신문 제작, 지역문제 정책제안 활동<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '→ 참여 → 기획 → 발표 과정을 강조<br>';
		a1Html += '예) “국제 공동수업에서 환경 문제를 주제로 해외 학생들과 협력해 공동 프로젝트를 수행하고 결과를 발표함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 매주 금요일 7교시, 연간 26시간<br>';
		a2Html += '• 전공·진로·흥미 중심 <span class="txt-bold">탐구형 동아리</span> 운영<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 예시 (2025)</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·의약학계열</span> : 메디팜(의약학 연구), 간호진로탐구반, 자연과학부, 정보과학융합반<br>';
		a2Html += '• <span class="txt-bold">창의·메이커계열</span> : 이매지니어(창세놀 프로젝트), 디어(광고·미디어 창작), 메이커 동아리<br>';
		a2Html += '• <span class="txt-bold">언론·미디어계열</span> : 언론·홍보·미디어 연구반, 방송부<br>';
		a2Html += '• <span class="txt-bold">예술·체육계열</span> : 하모니(보컬), 미술부, 미술·체육 연구반, 천혼(댄스), 비타민(보건 봉사형 동아리)<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ ‘탐구 + 산출물 + 협업’ 강조<br>';
		a2Html += '예) “간호진로탐구반에서 보건 독서 토론과 응급처치 실습을 진행하며 발표 자료를 제작함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• 동아리 중심 봉사 확대 (음악·미술·보건 분야 연계)<br>';
		a3Html += '• <span class="txt-bold">지역사회 연계</span> : 청소년센터 공연, 적십자사 혈액원 탐방, 보건소 CPR 교육<br>';
		a3Html += '• <span class="txt-bold">학교 내 봉사</span> : 방송부·홍보부를 통한 행사 지원, 또래상담·학급 멘토링<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 비타민 동아리 → 보건소 CPR 교육 및 혈액원 견학 봉사<br>';
		a3Html += '• 하모니·천혼 → 청소년센터 재능기부 공연<br>';
		a3Html += '• 메이커·이매지니어 → 지역 메이커 축제 부스 운영<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '→ “진로 연계 + 지속적 참여”를 강조<br>';
		a3Html += '예) “적십자사 혈액원 탐방 및 보건소 CPR 교육 봉사에 참여하며 보건의료 분야 진로 탐색의 기회를 가짐.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• ‘체험 → 탐구 → 성찰 → 발표’ 순환 구조<br>';
		a4Html += '• 고교학점제와 연계된 <span class="txt-bold">전공 맞춤형 탐색</span><br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">공유캠퍼스</span> : 국제경제·고급화학(청원여고 개설), 고급생명과학(청원고 개설) 등 심화 과목 운영<br>';
		a4Html += '• <span class="txt-bold">영재학급</span> : 융합정보·수학·과학 심화 학급, 영재캠프 운영<br>';
		a4Html += '• <span class="txt-bold">AI 정보교육</span> : 머신러닝, AI 융합 동아리, AI SW 작품 발표회<br>';
		a4Html += '• <span class="txt-bold">메이커교육</span> : 창의적 제작·발표, 메이커축제 참여<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '→ ‘진로의식 변화’ 중심으로 기록<br>';
		a4Html += '예) “AI 정보교육 활동을 통해 머신러닝 기반 문제 해결 경험을 쌓으며 컴퓨터공학 진로에 대한 확신을 갖게 됨.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">학급활동(자율)</span> → 국제 공동수업·학급 프로젝트에 주도적으로 참여<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택(흥미·진로)</span> → 의약·AI·미디어·예술 등 진로 맞춤형 탐구<br>';
		a5Html += '3. <span class="txt-bold">봉사 연계(실천)</span> → 지역사회 공연·보건교육·메이커 전시 등 지속 참여<br>';
		a5Html += '4. <span class="txt-bold">진로확장(탐색→발표)</span> → 공유캠퍼스·AI 교육·메이커 축제에서 발표 경험 축적<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(국제·학급 프로젝트) → 동아리탐구(전공/흥미) → 봉사실천(지역·진로 연계) → 진로성찰(학점제·AI·메이커)<br>';
		a5Html += '이 구조로 참여하면 생활기록부가 ‘단순 참여형’이 아닌 ‘융합·글로벌 성장 스토리형’으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `스포츠 문화
			스포츠 과학
			음악 연주와 창작
			미술 창작 
			음악 감상과 비평
			미술 감상과 비평
			기하
			정치
			경제
			도시의 미래 탐구
			인공지능 기초
			생활과학 탐구
			주제 탐구 독서 
			인공지능 수학
			영어 발표와 토론
			동아시아 역사 기행
			법과 사회 
			역학과 에너지 
			물질과 에너지 
			세포와 물질대사 
			인공지능 기초 
			데이터 과학
			생활과학 탐구
			미적분Ⅱ
			경제 수학
			영미 문학 읽기
			국제 관계의 이해
			윤리와 사상 
			한국지리 탐구
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			행성우주과학
			프로그래밍
			인간과 심리
			교육의 이해 
			보건
			문학과 영상
			직무 수학
			심화 영어 독해와 작문 
			인문학과 윤리
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			지구시스템과학 
			인간과 심리
			교육의 이해 
			보건`;
	}
	if(schoolmax == hyeseonggirls){
		document.getElementById("suggestion1").innerText = '혜성여고';
		document.getElementById("suggestionschool1").innerText = '혜성여고';
		document.getElementById("mainschool").innerText = '혜성여고는';
		document.getElementById("tableschool").innerText = '혜성여고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1982년 11월 30일
			대표번호 : 02-972-4040
			주소 : 서울특별시 노원구 노원로16길 2
			학생수 : 830명 (남 0명 , 여 830명)
			교원수 : 74명 (남 21명 , 여 53명)
			체육집회공간 : 1실`;
		document.getElementById("suggestionrate").innerText = `전문대학66명(23.6%)
			대학115명(41.1%)
			기타99명(35.4%)`;
//		document.getElementById("suggestionsubject").innerText = '미술,일본어,중국어,논술';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '97';
		document.getElementById("prior1-1.3").innerText = '94';
		document.getElementById("prior1-2.1").innerText = '92';
		document.getElementById("prior1-2.2").innerText = '88';
		document.getElementById("prior1-2.3").innerText = '82';
		document.getElementById("prior1-3.1").innerText = '83';
		document.getElementById("prior1-3.2").innerText = '79';
		document.getElementById("prior1-3.3").innerText = '71';
		document.getElementById("prior2-1.1").innerText = '92';
		document.getElementById("prior2-1.2").innerText = '93';
		document.getElementById("prior2-1.3").innerText = '88';
		document.getElementById("prior2-2.1").innerText = '84';
		document.getElementById("prior2-2.2").innerText = '84';
		document.getElementById("prior2-2.3").innerText = '77';
		document.getElementById("prior2-3.1").innerText = '77';
		document.getElementById("prior2-3.2").innerText = '75';
		document.getElementById("prior2-3.3").innerText = '66';
		document.getElementById("prior3-1.1").innerText = '98';
		document.getElementById("prior3-1.2").innerText = '98';
		document.getElementById("prior3-1.3").innerText = '83';
		document.getElementById("prior3-2.1").innerText = '89';
		document.getElementById("prior3-2.2").innerText = '88';
		document.getElementById("prior3-2.3").innerText = '71';
		document.getElementById("prior3-3.1").innerText = '81';
		document.getElementById("prior3-3.2").innerText = '78';
		document.getElementById("prior3-3.3").innerText = '59';
		document.getElementById("prior4-1.1").innerText = '100';
		document.getElementById("prior4-1.2").innerText = '98';
		document.getElementById("prior4-1.3").innerText = '89';
		document.getElementById("prior4-2.1").innerText = '93';
		document.getElementById("prior4-2.2").innerText = '87';
		document.getElementById("prior4-2.3").innerText = '76';
		document.getElementById("prior4-3.1").innerText = '85';
		document.getElementById("prior4-3.2").innerText = '77';
		document.getElementById("prior4-3.3").innerText = '63';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '97';
		document.getElementById("prior5-1.3").innerText = '94';
		document.getElementById("prior5-2.1").innerText = '91';
		document.getElementById("prior5-2.2").innerText = '88';
		document.getElementById("prior5-2.3").innerText = '85';
		document.getElementById("prior5-3.1").innerText = '80';
		document.getElementById("prior5-3.2").innerText = '79';
		document.getElementById("prior5-3.3").innerText = '77';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 4일(화) : 개학(2,3학년), 제42회 입학식(1학년)
• 3월 17일(월) : 학부모총회(2,3학년)·장애인식교육(7교시)
• 3월 18일(화) : 학부모총회(1학년)
• 3월 21일(금) : 리더십 연수(5,6교시)·도박예방교육(5교시)·재난대비훈련(6교시)
• 4월 9일(수) : 학생회장단 선거, 지능정보서비스 과의존 예방교육
• 4월 10일(목) : 1학기 정부회장선거, 학교폭력예방교육
• 5월 12일(월) : 생명존중교육
• 6월 7일(토) : 흡연예방교육, 교육활동 침해행위 예방교육
• 7월 24일(목) : 상담주간(~28일), 봉사(2,3학년)
			
2학기
• 8월 12일(화) : 개학식
• 8월 18일(월) : 생명존중교육(사회정서)
• 9월 8일(월) : 장애인식개선교육, 수시 원서 접수(~9/12)
• 9월 15일(월) : 지능정보서비스 과의존 예방교육(2차)
• 10월 29일(수) : 소방안전교육
• 11월 19일(수) : 아동학대 및 가정폭력 예방교육
• 11월 27일(목) : 리더십 연수, 생활기록부 마감
• 12월 25일(목) : 성탄절 행사
• 12월 29일(월) : 방학식
• 12월 30일(화) : 종업식(1,2학년), 졸업식(3학년)`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">2. 동아리활동</span>
		
1학기
• 3월 11일(화) : 동아리활동 시작
• 4월 14일(월) : 동아리활동
• 5월 14일(수) : 동아리활동
• 6월 11일(수) : 동아리활동
• 7월 12일(토) : 동아리활동
• 7월 26일(토) : 동아리활동
			
2학기
• 9월 4일(목) : 동아리활동
• 9월 23일(화) : 동아리활동
• 10월 17일(금) : 동아리활동 및 발표회
• 11월 12일(수) : 동아리활동
• 11월 26일(수) : 동아리발표회
• 12월 18일(목) : 동아리활동
• 12월 26일(금) : 동아리활동`;
			
			let newDiv = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal3"></p></div></div>');
			let targetDiv = $('#activity1').parents('div.img7area');
			newDiv.insertBefore(targetDiv);
			
			
			let newDiv2 = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal4"></p></div></div>');
			let targetDiv2 = $('#activity1').parents('div.img7area');
			newDiv2.insertBefore(targetDiv2);

			document.getElementById("textCal3").innerHTML = `<span class="text-box">3. 봉사활동</span>
			
	1학기
	• 3월 14일(금) : 봉사(3학년)
	• 3월 21일(금) : 봉사(2,3학년)
	• 5월 19일(월) : 봉사(3학년), 진로(1,2학년)
	• 6월 2일(월) : 봉사(3학년)
	• 6월 23일(월) : 봉사(2,3학년)
	• 7월 5일(토) : 봉사(전학년)
				
	2학기
	• 8월 22일(금) : 봉사(2학년)
	• 9월 22일(월) : 봉사(2학년)
	• 11월 11일(화) : 봉사(2학년)
	• 12월 11일(목) : 봉사(2학년, 3시간)`;

			document.getElementById("textCal4").innerHTML = `<span class="text-box">4. 진로활동</span>
			
	1학기
	• 3월 14일(금) : 진로(1,2학년)
	• 3월 24일(월) : 진로(전학년)
	• 4월 16일(수) : 진로(전학년)
	• 5월 19일(월) : 진로(1,2학년)
	• 5월 26일(월) : 진로(전학년), 교육과정 설명회(1,2학년)
	• 6월 26일(목) : 진로(전학년)
	• 7월 14일(월) : 진로(전학년)
				
	2학기
	• 8월 18일(월) : 진로(전학년)
	• 9월 15일(월) : 진로(전학년)
	• 9월 25일(목) : 진로(전학년), 학부모 진학설명회(1,2학년)
	• 10월 22일(수) : 진로(전학년)
	• 11월 18일(화) : 진로(3학년)
	• 11월 25일(화) : 진로(전학년)
	• 12월 20일(토) : 진로(전학년)`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">학기 초 운영</span><br><br>';
		a1Html += '• 3월 : 입학식 및 학급 자치회 구성, 학급 규칙 설정<br>';
		a1Html += '• 4월 : 학교 생활 캠페인(민주시민 교육 주제), 전교생 대상 인권·평화 교육<br>';
		a1Html += '<br><span class="txt-bold">학교 행사</span><br><br>';
		a1Html += '• 혜성제(학술·예술 축제) : 동아리 발표회, 실험 전시, 문학·예술 공연<br>';
		a1Html += '• 열린 실험실 캠페인 : 과학적 탐구 결과 전시 및 체험형 활동<br>';
		a1Html += '<br><span class="txt-bold">학기 말</span><br><br>';
		a1Html += '• 봉사활동 결과 보고서 제출 및 차기 임원 선출<br>';
		a1Html += '• 학기별 성찰 활동(자기주도학습·진로탐색 연계)';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '대표적인 동아리 운영 예시:<br>';
		a2Html += '<span class="txt-bold">• 가이아(과학)</span><br>';
		a2Html += '• 3색 실험 멘토링 프로젝트(공학·의생명·화학 분과)<br>';
		a2Html += '• 과학의 눈으로 세상 바라보기 캠페인 (가짜 과학 뉴스 바로잡기, 카드뉴스·포스터 전시)<br>';
		a2Html += '• 34시간 활동(탐구·실험·전시 포함)<br>';
		a2Html += '<span class="txt-bold">가인(미술부)</span><br>';
		a2Html += '• 교내 미화 활동(스쿨 아트 엔지니어, 노티스 디자인)<br>';
		a2Html += '• 사회 문제 개선 캠페인 ‘아트 온 스쿨’, 페이스페인팅 캠페인<br>';
		a2Html += '• 봉사활동 21시간 포함 총 34시간 활동<br>';
		a2Html += '<span class="txt-bold">그리니즈(환경)</span><br>';
		a2Html += '• 업사이클링 공예, 플로깅 캠페인, 환경 보호 시각 콘텐츠 제작<br>';
		a2Html += '• 교내 환경신문 제작, 지역사회 환경정화 활동<br>';
		a2Html += '• 봉사활동 7시간 포함 총 34시간 활동<br>';
		a2Html += '<span class="txt-bold">또래누리(상담)</span><br>';
		a2Html += '• 또래상담 교육(경청·공감, 대화기법 훈련)<br>';
		a2Html += '• 어기역차 전략 상담 실습, 친구사랑 캠페인<br>';
		a2Html += '• 봉사활동 4시간 포함 총 34시간 활동<br>';
		a2Html += '<span class="txt-bold">문학, 어디가(문학)</span><br>';
		a2Html += '• 한강 시집 낭독회, 윤동주 문학관 방문, 헤르만 헤세 감상 공유<br>';
		a2Html += '• 교내외 문학 탐방 및 발표<br>';
		a2Html += '• 봉사활동 6시간 포함 총 34시간 활동';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br>• 동아리별 주제 중심 봉사 : 과학 캠페인, 미술·환경 캠페인, 상담 및 친구사랑 캠페인<br>';
		a3Html += '• 교내 행사 지원(혜성제, 캠페인 전시, 체험 부스 운영)<br>';
		a3Html += '• 학기별 봉사시간 : 동아리 연계 4~21시간(부서별 차등 반영)';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br>• <span class="txt-bold">리더십·협력 강화</span> : 멘토링 프로젝트, 선후배 협업 프로그램<br>';
		a4Html += '• <span class="txt-bold">전공 연계 탐구</span> : 과학·미술·문학 분야별 심화 연구 및 전시<br>';
		a4Html += '• <span class="txt-bold">시민의식 함양</span> : 민주시민 교육, 사회문제 개선 캠페인 참여<br>';
		a4Html += '• <span class="txt-bold">진로 탐색</span> : 전공 관련 탐구보고서, 발표회, 외부기관 탐방<br>';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '• <span class="txt-bold">탐구심과 문제해결력</span> : 실험·창작·캠페인 활동에 주도적으로 참여한 경험 강조<br>';
		a5Html += '• <span class="txt-bold">봉사·나눔</span> : 동아리 연계 캠페인, 교내외 봉사 활동 기록 구체화<br>';
		a5Html += '• <span class="txt-bold">문화적 소양</span> : 문학·예술 활동을 통한 정서적 성장 서술<br>';
		a5Html += '• <span class="txt-bold">자기주도성</span> : 연간 계획 수립·발표·결과 보고서 등 학생 주도 운영 활동 기록';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `화법과 언어
			운동과 건강
			스포츠 문화
			스포츠 과학
			미술 감상과 비평
			주제 탐구 독서
			인공지능 수학
			동아시아 역사 기행
			경제
			윤리와 사상
			역학과 에너지
			물질과 에너지
			세포와 물질대사
			지구시스템과학
			로봇과 공학세계
			데이터 과학
			한문 고전 읽기
			중국어 회화
			일본어 회화
			미적분Ⅱ
			경제 수학
			인문학과 윤리
			국제 관계의 이해
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			행성우주과학
			생활과학 탐구
			인간과 철학
			문학과 영상
			심화 영어 독해와 작문
			심화 중국어
			심화 일본어
			논리와 사고`;
	}
	if(schoolmax == cheongwon){
		document.getElementById("suggestion1").innerText = '청원고';
		document.getElementById("suggestionschool1").innerText = '청원고';
		document.getElementById("mainschool").innerText = '청원고는';
		document.getElementById("tableschool").innerText = '청원고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1988년 11월 12일
			대표번호 : 02-3399-7771
			주소 : 서울특별시 노원구 한글비석로 506
			학생수 : 1,030명 (남 1,030명 , 여 0명)
			교원수 : 95명 (남 43명 , 여 52명)
			체육집회공간 : 2실`;
		document.getElementById("suggestionrate").innerText = `대학186명(56%)
			취업자5명(1.5%)
			기타95명(28.6%)
			전문대학46명(13.9%)`;
//		document.getElementById("suggestionsubject").innerText = '단체운동,체육전공실기기초,육상운동,체조운동,체육전공실기심화, 연극의이해(필수), 인공지능기초,인공지능과피지컬컴퓨팅,프로그래밍,정보과제연구,인공지능과미래사회,독일어,심리학,진로와직업,논술,보건,환경,교육학';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '98';
		document.getElementById("prior1-2.1").innerText = '92';
		document.getElementById("prior1-2.2").innerText = '93';
		document.getElementById("prior1-2.3").innerText = '88';
		document.getElementById("prior1-3.1").innerText = '85';
		document.getElementById("prior1-3.2").innerText = '86';
		document.getElementById("prior1-3.3").innerText = '79';
		document.getElementById("prior2-1.1").innerText = '83';
		document.getElementById("prior2-1.2").innerText = '89';
		document.getElementById("prior2-1.3").innerText = '93';
		document.getElementById("prior2-2.1").innerText = '76';
		document.getElementById("prior2-2.2").innerText = '83';
		document.getElementById("prior2-2.3").innerText = '83';
		document.getElementById("prior2-3.1").innerText = '70';
		document.getElementById("prior2-3.2").innerText = '77';
		document.getElementById("prior2-3.3").innerText = '75';
		document.getElementById("prior3-1.1").innerText = '98';
		document.getElementById("prior3-1.2").innerText = '97';
		document.getElementById("prior3-1.3").innerText = '87';
		document.getElementById("prior3-2.1").innerText = '90';
		document.getElementById("prior3-2.2").innerText = '89';
		document.getElementById("prior3-2.3").innerText = '77';
		document.getElementById("prior3-3.1").innerText = '82';
		document.getElementById("prior3-3.2").innerText = '81';
		document.getElementById("prior3-3.3").innerText = '67';
		document.getElementById("prior4-1.1").innerText = '99';
		document.getElementById("prior4-1.2").innerText = '95';
		document.getElementById("prior4-1.3").innerText = '92';
		document.getElementById("prior4-2.1").innerText = '93';
		document.getElementById("prior4-2.2").innerText = '86';
		document.getElementById("prior4-2.3").innerText = '83';
		document.getElementById("prior4-3.1").innerText = '88';
		document.getElementById("prior4-3.2").innerText = '77';
		document.getElementById("prior4-3.3").innerText = '75';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '94';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '91';
		document.getElementById("prior5-2.2").innerText = '85';
		document.getElementById("prior5-2.3").innerText = '95';
		document.getElementById("prior5-3.1").innerText = '82';
		document.getElementById("prior5-3.2").innerText = '76';
		document.getElementById("prior5-3.3").innerText = '86';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 3일(월) : 개학식 및 반 배정 발표
• 3월 4일(화) : 입학식(1학년)
• 3월 20일(목) : 학부모 총회 및 설명회
• 4월 17일(목) : 1학년 테마여행, 2학년 수련활동
• 7월 7일(월) : 종업식, 성적 이의신청
			
2학기
• 8월 18일(월) : 2학기 개학식
• 9월 10일(수) : 개교기념일 행사
• 9월 23일(화) : 학부모 총회 및 설명회
• 10월 14일(화) : 연합학력평가(전학년)
• 11월 12일(수) : 푸른누리축제
• 12월 24일(수) : 성적 이의신청 마감
• 12월 25일(목) : 성탄절 행사
• 12월 26일(금) : 졸업사정회
• 12월 31일(수) : 방학식`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">2. 동아리활동</span>
		
1학기
• 3월 27일(목) : 동아리 조직 및 활동 시작
• 5월~6월 : 정기 동아리 활동 진행
• 7월 4일(금) : 동아리활동 마무리
			
2학기
• 9월 22일(월) : 동아리 활동
• 10월 22일(수) : 동아리 활동
• 11월 22일(토) : 동아리 발표 및 성과 공유`;
			
		let newDiv = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal3"></p></div></div>');
		let targetDiv = $('#activity1').parents('div.img7area');
		newDiv.insertBefore(targetDiv);
		
		document.getElementById("textCal3").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 3월 3일(월) : 봉사활동 사전교육
• 6월 : 학급별 봉사활동 및 발표
			
2학기
• 8월 21일(목) : 봉사활동 사전교육
• 11월 24일(월) : 봉사활동 평가


<span class="text-box">4. 진로활동</span>
			
1학기
• 3월 26일(수) : 연합학력평가(1,2학년), 모의평가(3학년) → 진로 탐색 자료 활용
• 4월~6월 : 입시설명회(학년별 진행), 진로 관련 특강
• 7월 14일(월) : 진로캠프 및 자아탐색 프로그램
			
2학기
• 9월~11월 : 연합학력평가 및 모의평가(3학년), 진로특강 병행
• 11월 13일(목) : 대학수학능력시험
• 11월 19일(수) : 성적 이의신청 및 진로 컨설팅
• 12월 : 기말평가 후 진로 점검 및 상담`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• <span class="txt-bold">AI·정보교육 중심학교</span> 및 <span class="txt-bold">디지털 맞춤교육 선도학교</span>라는 특색사업과 연계<br>';
		a1Html += '• 학급 중심의 자율 운영 + 프로젝트형 창의 활동 강조<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 학급 신문 제작, AI 주제 토론, 정책 제안 캠페인<br>';
		a1Html += '• 교내 ‘씽씽한 우리학교’ 공유캠퍼스 과학축제 참여<br>';
		a1Html += '• 학급 단위 환경·에너지 프로젝트 실행<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '예) “공유캠퍼스 과학축제에 참여하여 레고 마인드스톰 기반 로봇 씨름 프로젝트를 기획하고 운영함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 정규 동아리 + 자율 동아리 병행<br>';
		a2Html += '• 학문 탐구·창작형·체육·봉사형 동아리 다양하게 운영<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 계열</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·수학·공학</span> : 과학이슈토론반, 일반화학연구반(옥스토비), 생물토론반(클론), 의생명연구반, 창의공학반(로봇), 발명동아리, 수학사연구반, 수학통합과제연구반, 수학창의력반(헤론)<br>';
		a2Html += '• <span class="txt-bold">인문·사회</span> : 사회문제토론반(1,2), 법률동아리(유토피아), 경영경제동아리, 국토공간답사반, 역사독서반, 역사와매체반<br>';
		a2Html += '• <span class="txt-bold">언어·문화·예술</span> : 방송반, 연극영상반, 종합공연반, 예술디자인창작반, 문학·독서토론반, 세계문화반, 힙합반<br>';
		a2Html += '• <span class="txt-bold">체육·진로특화</span> : CWH 농구, 9인제배구토론반, 웨이트트레이닝반, 체육진로연구회, 줄넘기반, 탁구반, 당구반<br>';
		a2Html += '• <span class="txt-bold">봉사·상담</span> : 마을을섬기는봉사반, 또래상담반, 봉사반(어울림), 캠퍼스지킴이반<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ ‘탐구 + 산출물(보고서·발표) + 협업’ 중심<br>';
		a2Html += '예) “법률동아리에서 실제 판례를 분석하고 모의재판을 진행하며 보고서를 작성함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• <span class="txt-bold">동아리-지역사회 연계 봉사</span> 중심<br>';
		a3Html += '• 교내외 프로젝트형 봉사, 진로 기반 실천 확대<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 봉사반(어울림) → 지역 아동센터 학습 멘토링<br>';
		a3Html += '• 마을을섬기는봉사반 → 지역 환경정화, 나눔 캠페인<br>';
		a3Html += '• 방송·연극·공연 동아리 → 지역 행사 공연·영상 제작 봉사<br>';
		a3Html += '• 과학·메이커 동아리 → 업사이클링, 친환경 제작 봉사<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '예) “과학동아리 활동을 기반으로 교내 친환경 업사이클링 캠페인을 기획하고 지역사회 봉사와 연계함.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• <span class="txt-bold">공유캠퍼스·AI 교육·영재학급</span> 프로그램과 연계<br>';
		a4Html += '• ‘체험 → 탐구 → 성찰 → 발표’의 심화 구조 확립<br>';
		a4Html += '<br>주요 활동<br><br>';
		a4Html += '• <span class="txt-bold">공유캠퍼스</span> : 수학과 인공지능, 고급생명과학 과목 이수 및 연구<br>';
		a4Html += '• <span class="txt-bold">특색 프로그램</span> : 오픈 카이스트 체험(이공계 진로 탐색), 의생명·화학 캠프, 인공지능 체험 프로그램<br>';
		a4Html += '• <span class="txt-bold">영재학급</span> : 수학·과학·AI 융합 심화 수업, 영재캠프, 연구 발표회<br>';
		a4Html += '• <span class="txt-bold">진로연계교육</span> : 진로 특강, 모의 UN 프로그램, 진로 독서 토론, 진로 동영상 제작<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '예) “영재학급 과제연구를 통해 AI 융합 주제를 탐구하고 산출물을 교내 발표회에서 공유하며 진로에 대한 확신을 갖게 됨.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">자율활동</span> → 공유캠퍼스 축제·학급 프로젝트에서 성과물 확보<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택</span> → 전공·흥미와 연계된 탐구형·창의형 동아리 참여<br>';
		a5Html += '3. <span class="txt-bold">봉사 실천</span> → 동아리 기반 봉사와 지역사회 연계<br>';
		a5Html += '4. <span class="txt-bold">진로 탐구</span> → 공유캠퍼스·AI·영재학급 성과를 발표·포트폴리오로 기록<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급·캠퍼스 프로젝트) → 동아리탐구(전공/흥미) → 봉사실천(지역 연계) → 진로성찰(공유캠퍼스·AI·영재학급)<br>';
		a5Html += '이 구조로 참여하면 생활기록부가 **‘참여형 기록’**이 아닌 **‘융합·탐구·성과 중심 성장형 기록’**으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `스포츠 문화
			스포츠 과학
			미술 창작
			음악 연주와 창작
			인공지능 기초 
			인공지능 수학
			경제
			한국지리 탐구
			인문학과 윤리
			데이터과학
			컴퓨터그래픽
			기초 체육 전공 실기
			프로그래밍
			주제 탐구 독서
			기하
			동아시아 역사 기행
			법과 사회
			도시의 미래탐구
			역학과 에너지
			물질과에너지
			세포와 물질대사 
			정보과학
			심화 체육 전공 실기
			인공지능프로그래밍기초(파이선)
			문학과 영상
			미적분Ⅱ
			경제 수학
			심화 영어 독해와 작문
			영어발표와 토론
			윤리와 사상
			정치
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			지구시스템과학
			행성우주과학
			스포츠 경기 분석
			스포트 경기 체력
			고급 체육 전공 실기
			정보과제 연구
			인공지능과 미래사회
			인간과 심리
			교육의 이해
			보건
			심화 영어
			영미 문학 읽기
			과학과제 연구
			스포츠 개론
			스포츠 경기 기술`;
	}
	if(schoolmax == daejin){
		document.getElementById("suggestion1").innerText = '대진고';
		document.getElementById("suggestionschool1").innerText = '대진고';
		document.getElementById("mainschool").innerText = '대진고는';
		document.getElementById("tableschool").innerText = '대진고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1984년 06월 13일
			대표번호 : 02-976-0067
			주소 : 서울특별시 노원구 공릉로62가길 47
			학생수 : 788명 (남 788명 , 여 0명)
			교원수 : 69명 (남 31명 , 여 38명)
			체육집회공간 : 2실`;
		document.getElementById("suggestionrate").innerText = `전문대학17명(6.6%)
			대학132명(51.4%)
			기타108명(42%)`;
//		document.getElementById("suggestionsubject").innerText = '스포츠생활(필수),체육과진로탐구, 음악연주,미술창작, 프로그래밍(필수), 진로와직업,심리학,논술(필수)';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '98';
		document.getElementById("prior1-2.1").innerText = '92';
		document.getElementById("prior1-2.2").innerText = '93';
		document.getElementById("prior1-2.3").innerText = '88';
		document.getElementById("prior1-3.1").innerText = '85';
		document.getElementById("prior1-3.2").innerText = '86';
		document.getElementById("prior1-3.3").innerText = '79';
		document.getElementById("prior2-1.1").innerText = '83';
		document.getElementById("prior2-1.2").innerText = '89';
		document.getElementById("prior2-1.3").innerText = '93';
		document.getElementById("prior2-2.1").innerText = '76';
		document.getElementById("prior2-2.2").innerText = '83';
		document.getElementById("prior2-2.3").innerText = '83';
		document.getElementById("prior2-3.1").innerText = '70';
		document.getElementById("prior2-3.2").innerText = '77';
		document.getElementById("prior2-3.3").innerText = '75';
		document.getElementById("prior3-1.1").innerText = '98';
		document.getElementById("prior3-1.2").innerText = '97';
		document.getElementById("prior3-1.3").innerText = '87';
		document.getElementById("prior3-2.1").innerText = '90';
		document.getElementById("prior3-2.2").innerText = '89';
		document.getElementById("prior3-2.3").innerText = '77';
		document.getElementById("prior3-3.1").innerText = '82';
		document.getElementById("prior3-3.2").innerText = '81';
		document.getElementById("prior3-3.3").innerText = '67';
		document.getElementById("prior4-1.1").innerText = '99';
		document.getElementById("prior4-1.2").innerText = '95';
		document.getElementById("prior4-1.3").innerText = '92';
		document.getElementById("prior4-2.1").innerText = '93';
		document.getElementById("prior4-2.2").innerText = '86';
		document.getElementById("prior4-2.3").innerText = '83';
		document.getElementById("prior4-3.1").innerText = '88';
		document.getElementById("prior4-3.2").innerText = '77';
		document.getElementById("prior4-3.3").innerText = '75';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '94';
		document.getElementById("prior5-1.3").innerText = '100';
		document.getElementById("prior5-2.1").innerText = '91';
		document.getElementById("prior5-2.2").innerText = '85';
		document.getElementById("prior5-2.3").innerText = '95';
		document.getElementById("prior5-3.1").innerText = '82';
		document.getElementById("prior5-3.2").innerText = '76';
		document.getElementById("prior5-3.3").innerText = '86';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 4일(화) : 입학식, 신입생 오리엔테이션
• 3월 5일(수) : 자율활동(인성교육)
• 3월 13일(목) : 학부모총회 및 수업 공개
• 3월 21일(금) : 전교학생자치회장 선출
• 4월 5일(토) : 1학기 임원수련회
• 6월 24일(월) : 교학공 주간, 중간고사 시작
• 7월 14일(월) : 학생 상담주간, 과학전람회 보고서 제출
• 7월 21일(월) : 방학식
			
2학기
• 9월 1일(월) : 수시 상담 주간 시작
• 9월 15일(월) : 학부모와 함께하는 진학설명회(1,2학년)
• 9월 17일(수) : 전교생 약물·마약 오남용 예방교육
• 10월 13일(월) : 전학년 교복 착용 점검주간
• 11월 27일(목) : 교학공 주간
• 12월 30일(화) : 방학식`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">2. 동아리활동</span>
		
1학기
• 3월 2일(수) : 동아리 부서 배정 및 활동 시작
• 3월 19일(수) : 동아리활동(1차)
• 4월 9일(수) : 동아리활동(3차)
• 5월 14일(수) : 동아리활동(5차)
• 6월 11일(수) : 동아리활동(5차)
• 7월 9일(수) : 동아리활동(7차)
			
2학기
• 9월 3일(수) : 동아리활동(9차)
• 9월 10일(수) : 동아리활동(10차)
• 10월 1일(수) : 동아리활동(13차)
• 11월 26일(수) : 동아리발표 한마당 (과학·AI 동아리 발표 포함)
• 12월 29일(월) : 동아리활동(12차)`;
			
			let newDiv = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal3"></p></div></div>');
			let targetDiv = $('#activity1').parents('div.img7area');
			newDiv.insertBefore(targetDiv);
			
		document.getElementById("textCal3").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 3월 3일(월) : 봉사활동 사전교육
• 5월 25일(일) : 봉사활동(1차)
			
2학기
• 9월 15일(월) : 봉사활동(2차)
• 11월 26일(수) : 봉사활동(3차)


<span class="text-box">4. 진로활동</span>
			
1학기
• 3월 4일(화) : 미래융합인재아카데미 서류 접수 시작
• 3월 28일(금) : 리더십 캠프·인성실천부장 다짐 캠프
• 4월 18일(금) : 2차 톡톡(Talk) 교사연수 → 진로탐색 연계
• 6월 20일(금) : 창의융합과제연구 발표마당
• 6월 25일(수) : 교육과정 설명회(1,2학년)
			
2학기
• 9월 23일(화) : 천문캠프(1,2,3학년)
• 10월 14일(화) : 학력평가(1,2,3학년) → 진로 분석 자료 활용
• 11월 11일(목) : 학생 정시 설명회(3학년)
• 12월 15일(월) : 정시 상담 주간 시작
• 12월 23일(화) : 신입생 오리엔테이션`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">학급 중심 운영</span><br><br>';
		a1Html += '• 학급자치회 구성, 학급 규칙 제정, 학급 행사 기획 및 운영<br>';
		a1Html += '• 사제동행 프로그램, ‘따뜻한 말 한마디’ 캠페인, 학급 축제, 애플데이 등 인성중심 자율활동<br>';
		a1Html += '<br><span class="txt-bold">학교문화 조성 프로젝트 (창체인성부 연계)</span><br>';
		a1Html += '• 평화학교, 생명존중학교, 청렴캠페인, 또래상담 등<br><br>';
		a1Html += '• 학급별 ‘1학급 1프로젝트’ 운영 (예 : 위인 글쓰기, 생태텃밭 가꾸기, 학급 앨범 제작, 독서 나눔 등)<br>';
		a1Html += '<br><span class="txt-bold">기록 포인트</span><br><br>';
		a1Html += '• “자발적으로 학급 공동체의 목표를 설정하고, 협동적으로 문제를 해결함.”<br>';
		a1Html += '• “타인에 대한 배려와 소통 능력을 바탕으로 민주적 학교문화를 조성함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">정규 운영 시간</span> : 매주 금요일 7교시 (연간 25시간 이상)<br><br>';
		a2Html += '• <span class="txt-bold">운영 부서</span> : 수리과학부, 인문사회부, 창체인성부, 진로진학상담부<br>';
		a2Html += '• <span class="txt-bold">주요 분야별 예시 (2025 개설 기준)</span><br>';
		a2Html += '• <span class="txt-bold">과학·융합형</span> : 수리과학탐구부, 미래융합인재아카데미, AI야 놀자, 3D메이커부<br>';
		a2Html += '• <span class="txt-bold">인문사회형</span> : 인문독서토론부, 역사·시사토론부, 국어교과서가 사랑한 작가탐구반<br>';
		a2Html += '• <span class="txt-bold">예술형</span> : 밴드부, 미술융합반, 연극동아리(페르소나), 방송반<br>';
		a2Html += '• <span class="txt-bold">체육형</span> : 농구·배드민턴·탁구·축구반, 체력증진반<br>';
		a2Html += '• <span class="txt-bold">진로탐색형</span> : 전공독서탐구반, 과학심화탐구반, 진로연계 프로젝트형 동아리<br>';
		a2Html += '<br><span class="txt-bold">성과 공유 활동</span><br><br>';
		a2Html += '• 동아리 발표회, 예술제, 과학탐구보고서 전시, 지역사회 봉사 연계 활동<br>';
		a2Html += '<br><span class="txt-bold">기록 포인트</span><br><br>';
		a2Html += '• “탐구주제를 스스로 설정하고, 실험 및 토론을 통해 문제해결능력을 기름.”<br>';
		a2Html += '• “전공과 연계된 심화활동을 통해 진로탐색의 방향성을 구체화함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">학교 중심 봉사활동</span><br><br>';
		a3Html += '• 교내 환경정화, 급식도우미, 캠페인 지원, 생명존중·흡연예방 캠페인<br>';
		a3Html += '<br><span class="txt-bold">지역사회 연계 봉사</span><br><br>';
		a3Html += '• 노원구청, 지역복지센터, 도서관, RCY 봉사활동 등<br>';
		a3Html += '• 동아리 또는 자율활동과 연계한 봉사활동 가능<br>';
		a3Html += '(예 : 밴드부 → ‘지역 공연 봉사’, 독서토론부 → ‘도서관 봉사’)<br>';
		a3Html += '<br><span class="txt-bold">또래 중심 봉사 (창체인성부)</span><br><br>';
		a3Html += '• 또래상담, 멘토-멘티 프로그램, 학습나눔 활동<br>';
		a3Html += '<br><span class="txt-bold">기록 포인트</span><br><br>';
		a3Html += '• “지역사회와 학교를 위한 자율적 봉사활동에 성실히 참여하며 나눔과 협동의 가치를 실천함.”<br>';
		a3Html += '• “또래 상담 및 멘토링을 통해 배려와 공감능력을 함양함.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">체험 중심 활동 (진로진학상담부 연계)</span><br><br>';
		a4Html += '• <span class="txt-bold">진로탐색의 날</span> : AI, 드론, 코딩, 메타버스 등 4차 산업 직업 체험<br>';
		a4Html += '• <span class="txt-bold">진로캠프</span> : 협업 프로젝트, 진로 로드맵 설계<br>';
		a4Html += '• <span class="txt-bold">진로특강</span> : 26개 직업군 전문가·졸업생 멘토 특강<br>';
		a4Html += '<br><span class="txt-bold">탐구 및 성찰 중심 활동</span><br><br>';
		a4Html += '• 진로성장 스토리텔링 발표회<br>';
		a4Html += '• 진로진학설계표 작성 및 포트폴리오 구축<br>';
		a4Html += '<br><span class="txt-bold">기록 포인트</span><br><br>';
		a4Html += '• “다양한 진로체험과 멘토링을 통해 진로에 대한 구체적인 목표를 설정함.”<br>';
		a4Html += '• “자신의 적성과 흥미를 탐색하며, 장기적인 진학 계획을 세움.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">자율활동</span> → 학급 프로젝트나 학교문화 캠페인에 주도적으로 참여하세요.<br>';
		a5Html += ' → “리더십 + 협동심 + 인성”이 생기부 핵심 키워드입니다.<br>';
		a5Html += '2. <span class="txt-bold">동아리활동</span> → 자신의 진로와 흥미를 반영한 전공 탐구형 또는 융합형 동아리를 선택하세요.<br>';
		a5Html += ' → “탐구 + 발표 + 봉사 연계”로 깊이 있게 활동하세요.<br>';
		a5Html += '3. <span class="txt-bold">봉사활동</span> → 단순 시간 채우기보다 동아리·자율활동과 연결된 봉사를 기획하세요.<br>';
		a5Html += ' → “실천 + 책임 + 연계성”이 강조됩니다.<br>';
		a5Html += '4. <span class="txt-bold">진로활동</span> → 체험 후 반드시 느낀 점을 기록하고, 진로포트폴리오를 작성하세요.<br>';
		a5Html += ' → “탐색 + 성찰 + 발표”로 마무리하면 생기부 표현이 살아납니다.<br>';
		a5Html += '<br>🌿 활동 연결 구조 예시<br><br>';
		a5Html += '자율활동(학급 캠페인) → 동아리활동(탐구·프로젝트) → 봉사활동(연계 실천) → 진로활동(발표·계획수립)<br>';
		a5Html += '이렇게 한 해의 활동을 연결하면,<br>';
		a5Html += '“나만의 성장 스토리”가 완성되어 생활기록부의 깊이와 진로 연계성이 살아납니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `고전과 윤리
			스포츠 생활
			체육 탐구
			음악 감상과 비평
			미술 감상과 비평
			프로그래밍 
			고전 읽기
			기하
			심화 수학Ⅰ
			영어권 문화
			사회문제 탐구
			인공지능 기초
			심화 국어
			심화 수학Ⅰ
			심화 영어Ⅰ
			여행지리
			사회 탐구 방법
			물리학Ⅱ
			화학Ⅱ
			생명과학Ⅱ
			지구과학Ⅱ
			융합과학
			체육과 진로 탐구
			음악 연주
			미술 창작
			일본어Ⅱ
			중국어Ⅱ
			한문Ⅱ`;
	}
	if(schoolmax == jaehyun){
		document.getElementById("suggestion1").innerText = '재현고';
		document.getElementById("suggestionschool1").innerText = '재현고';
		document.getElementById("mainschool").innerText = '재현고는';
		document.getElementById("tableschool").innerText = '재현고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1978년 03월 03일
			대표번호 : 02-932-4812
			주소 : 서울특별시 노원구 덕릉로82길 64
			학생수 : 777명 (남 777명 , 여 0명)
			교원수 : 71명 (남 44명 , 여 27명)
			체육집회공간 : 3실
`;
		document.getElementById("suggestionrate").innerText = `전문대학30명(11.6%)
			대학126명(48.6%)
			기타103명(39.8%)`;
//		document.getElementById("suggestionsubject").innerText = '체육탐구, 공학일반,창의경영, 종교학/철학 중 택일,논술(필수),실용경제,환경';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학교활동에 쏟아준다면 학습우수생, 생활모범생으로 인정받게 될 것 입니다.</p><p>3년 내내 주도적으로 생활하는 학창시절을 보내게 되고 이 부분이 목표대학합격에도 긍정적 영향을 주게됩니다. 어느학교에 배정되든지 신학기 초반 연간학교일정과 시험일정에 주의하여 사전에 준비해주세요</p>';
		document.getElementById("prior1-1.1").innerText = '100';
		document.getElementById("prior1-1.2").innerText = '100';
		document.getElementById("prior1-1.3").innerText = '93';
		document.getElementById("prior1-2.1").innerText = '93';
		document.getElementById("prior1-2.2").innerText = '97';
		document.getElementById("prior1-2.3").innerText = '81';
		document.getElementById("prior1-3.1").innerText = '86';
		document.getElementById("prior1-3.2").innerText = '87';
		document.getElementById("prior1-3.3").innerText = '70';
		document.getElementById("prior2-1.1").innerText = '92';
		document.getElementById("prior2-1.2").innerText = '96';
		document.getElementById("prior2-1.3").innerText = '91';
		document.getElementById("prior2-2.1").innerText = '83';
		document.getElementById("prior2-2.2").innerText = '88';
		document.getElementById("prior2-2.3").innerText = '79';
		document.getElementById("prior2-3.1").innerText = '75';
		document.getElementById("prior2-3.2").innerText = '79';
		document.getElementById("prior2-3.3").innerText = '69';
		document.getElementById("prior3-1.1").innerText = '92';
		document.getElementById("prior3-1.2").innerText = '98';
		document.getElementById("prior3-1.3").innerText = '87';
		document.getElementById("prior3-2.1").innerText = '84';
		document.getElementById("prior3-2.2").innerText = '88';
		document.getElementById("prior3-2.3").innerText = '75';
		document.getElementById("prior3-3.1").innerText = '77';
		document.getElementById("prior3-3.2").innerText = '79';
		document.getElementById("prior3-3.3").innerText = '64';
		document.getElementById("prior4-1.1").innerText = '97';
		document.getElementById("prior4-1.2").innerText = '100';
		document.getElementById("prior4-1.3").innerText = '100';
		document.getElementById("prior4-2.1").innerText = '89';
		document.getElementById("prior4-2.2").innerText = '94';
		document.getElementById("prior4-2.3").innerText = '91';
		document.getElementById("prior4-3.1").innerText = '82';
		document.getElementById("prior4-3.2").innerText = '85';
		document.getElementById("prior4-3.3").innerText = '80';
		document.getElementById("prior5-1.1").innerText = '95';
		document.getElementById("prior5-1.2").innerText = '99';
		document.getElementById("prior5-1.3").innerText = '92';
		document.getElementById("prior5-2.1").innerText = '86';
		document.getElementById("prior5-2.2").innerText = '89';
		document.getElementById("prior5-2.3").innerText = '82';
		document.getElementById("prior5-3.1").innerText = '77';
		document.getElementById("prior5-3.2").innerText = '80';
		document.getElementById("prior5-3.3").innerText = '73';
		document.getElementById("textCal1").innerHTML = `<span class="text-box">1. 자율활동</span>
		
1학기
• 3월 4일(화) : 개학식·입학식
• 3월 12일(수) : 신입생 환영예배
• 3월 13일(목) : 1학기 임원선거
• 3월 18일(화) : 학부모 총회
• 3월 20일(목) : 상견례·정부회장 임명장 수여
• 3월 28일(금) : 1학기 리더십 캠프, 인성실천부장 다짐 캠프
• 4월 14일(월) : 고난주간 기도회, 등교맞이주간
• 4월 23일(수) : 부활절 예배
• 7월 14일(월) : 인성교육주간·자아탐색 프로그램
• 7월 15일(화) : 제47대 학생회장단 선거, 독서의 날
			
2학기
• 8월 18일(월) : 개학식
• 8월 25일(월) : 2학기 학부모 상담 주간
• 9월 5일(금) : 2학기 리더십 캠프
• 9월 8일~12일 : 독서의 달·도서관 행사주간
• 9월 10일(수) : 독서 오디세이 활동
• 9월 26일(금) : 제36회 재현제
• 10월 27일(월) : 인성교육주간·수험생 기도주간
• 11월 5일(수) : 수험생 격려예배
• 11월 28일(금) : 추수감사예배
• 12월 22일(월) : 자아탐색 프로그램
• 12월 23일(화) : 성탄축하예배, 송년 성가합창제`;
		document.getElementById("textCal2").innerHTML = `<span class="text-box">2. 동아리활동</span>
		
1학기
• 3월 27일(목) : 창체 – 동아리 편성
• 4월 17일(목) : 창체 활동
• 5월 22일(목) : 창체 활동 (다문화 이해 교육 포함)
• 6월 19일(목), 6월 26일(목) : 창체 활동
• 7월 10일(목) : 창체 활동 (1,2학년)
			
2학기
• 8월 28일(목) : 창체 활동
• 9월 4일(목), 9월 11일(목), 9월 18일(목) : 창체 활동
• 10월 23일(목) : 창체 활동 (독도교육주간)
• 10월 30일(목), 11월 6일(목), 11월 27일(목), 12월 4일(목) : 창체 활동`;
			
			let newDiv = $('<div class="img7area"><div class="img-area"><img class="mainheaderimg4" alt="img2" src="/resources/img/user/tendencyimg/012.jpg"></div><div class="explanationarea3"><p class="pexplan" id="textCal3"></p></div></div>');
			let targetDiv = $('#activity1').parents('div.img7area');
			newDiv.insertBefore(targetDiv);
			
		document.getElementById("textCal3").innerHTML = `<span class="text-box">3. 봉사활동</span>
		
1학기
• 4월 3일(목) : 봉사활동 사전교육
			
2학기
• 8월 21일(목) : 봉사활동 사전교육


<span class="text-box">4. 진로활동</span>
			
1학기
• 3월 25일(화) : 입시설명회(3학년)
• 4월 9일(수) : 입시설명회(1학년)
• 5월 21일(수) : 입시설명회(2학년)
• 6월 12일(목) : 3학년 체험활동
• 7월 16일(수) : 2학기 임원선거 후 진로 탐색 활동
			
2학기
• 8월 25일(월) : 2학기 학부모 상담 주간 – 진로 연계
• 9월 25일(목) : 한빛마루 콘퍼런스 (진로 체험)
• 11월 19일(수) : 중3 대상 학교설명회
• 12월 24일(수) : 성탄축하예배와 연계한 진로 발표`;
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• 학급 중심 <span class="txt-bold">자율적 운영</span> (자치회, 규칙 제정, 학급 프로젝트)<br>';
		a1Html += '• <span class="txt-bold">재현 인성·창의·융합 프로그램</span>과 연계 : 독서·토론, AI·과학탐구, 문화예술 기획<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• 학급별 프로젝트 운영 : 환경 개선, 정책 제안, 학급 신문 제작<br>';
		a1Html += '• 학교 행사 운영 : 입학식·축제·체육대회 보조, 발표회 참여<br>';
		a1Html += '• 재현 인성캠프·리더십 캠프 참가<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '예) “학급 자율회의를 통해 학급 내 규칙을 제정하고 환경 개선 프로젝트를 기획·실행함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 학년별·전공별·자율형 동아리 병행<br>';
		a2Html += '• <span class="txt-bold">탐구형·창작형·봉사형·체육형</span> 다채로운 구성이 특징<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 계열</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·수학·공학</span> : 인공지능 탐구, 의생명공학탐구, 수학심화, 화학프로젝트, 프로그래밍, 컴퓨터공학탐구, 창의발명, 지속가능기술탐구<br>';
		a2Html += '• <span class="txt-bold">인문·사회·국제</span> : 사회이슈토론, 국제사회문화탐구, 역사아카데미아, 시사토론, 중국이슈탐구<br>';
		a2Html += '• <span class="txt-bold">문학·예술·미디어</span> : 문예창작, 미드로 배우는 영어회화, 방송부, 사진부, 문화산업탐구, 미술·디자인, 노래올림찬양단·콰이어, 난타<br>';
		a2Html += '• <span class="txt-bold">체육·건강</span> : 농구(어벤져스), 자전거, ‘아무튼 달리기’, 스포츠영상분석<br>';
		a2Html += '• <span class="txt-bold">봉사·상담·진로</span> : 도서관봉사, 상담동아리, 영어재능기부, 진로탐구, 진로수학탐구<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ “탐구 + 산출물 + 협업” 중심으로 작성<br>';
		a2Html += '예) “AI 탐구 동아리에서 머신러닝 사례를 분석하고 결과를 발표하여 공학 분야 진로 탐색에 기여함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• 동아리와 연계된 봉사 실천 확대<br>';
		a3Html += '• 교내·지역사회 중심 봉사(도서관 정리, 학습 멘토링, 환경 정화, 공연 봉사)<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 도서관봉사 동아리 → 도서 대출 관리 및 독서 캠페인<br>';
		a3Html += '• 영어재능기부 동아리 → 후배 영어 멘토링 및 학습 지원<br>';
		a3Html += '• 음악·난타 동아리 → 지역사회 공연 및 축제 참여<br>';
		a3Html += '• 환경탐구 동아리 → 플로깅, 업사이클링 전시 활동<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '예) “영어재능기부 동아리에서 1, 2학년 후배들을 대상으로 멘토링을 진행하며 봉사와 진로탐색을 동시에 경험함.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• ‘탐구–성과–발표’ 구조 강화<br>';
		a4Html += '• 전공 맞춤형 진로 탐색(의학·공학·과학·인문사회·예술 등)<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">전공 심화 동아리</span> : 인공지능·의생명·수학·공학 등 전공별 연구와 학술제 발표<br>';
		a4Html += '• <span class="txt-bold">독서·토론형</span> : 전공 독서토론, 사회이슈토론, 심층독서토론 활동을 통한 사고력 확장<br>';
		a4Html += '• <span class="txt-bold">융합·창의형</span> : 융복합 탐구, 문화산업탐구, 창의발명 발표회<br>';
		a4Html += '• <span class="txt-bold">진로 특화형</span> : 진로탐구 동아리에서 로드맵 설계, 탐구보고서 작성<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '예) “의생명공학 탐구 동아리에서 유전자 편집 기술의 가능성과 윤리적 쟁점을 조사·발표하며 진로 의식을 구체화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">자율활동</span> → 학급 프로젝트·자율회의에 주도적으로 참여<br>';
		a5Html += '2. <span class="txt-bold">동아리 선택</span> → 진로와 맞는 전공·창의·국제 동아리 중심 선택<br>';
		a5Html += '3. <span class="txt-bold">봉사 연계</span> → 동아리 활동을 지역사회 봉사와 연결<br>';
		a5Html += '4. <span class="txt-bold">진로 확장</span> → 학술제·토론·보고서 발표로 성과를 남기기<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(학급 프로젝트) → 동아리탐구(전공/흥미) → 봉사실천(연계형) → 진로성찰(탐구·발표)<br>';
		a5Html += '이 구조를 따르면 생활기록부가 ‘단순 참여 기록형’이 아닌, 탐구성과 중심의 성장형 기록으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = `문학과 영상
			전문 수학
			심화 영어 독해와 작문 
			스포츠 문화
			스포츠 과학
			음악 감상과 비평
			미술 감상과 비평
			인공지능과 함께 하는 세상
			삶과 종교
			심화 일본어
			심화 중국어 
			로봇과 공학세계
			기하
			경제 수학
			영어 발표와 토론
			역학과 에너지 
			물질과 에너지 
			세포와 물질대사 
			지구시스템과학 
			데이터 과학
			로봇 하드웨어 설계
			경제 수학
			미적분Ⅱ
			심화 영어 
			한국지리 탐구
			동아시아 역사 기행
			경제
			윤리와 사상 
			전자기와 양자
			화학 반응의 세계
			생물의 유전
			행성우주과학
			인공지능 기초 
			고급 미적분
			직무 의사소통
			영미 문학 읽기
			논리와 사고 `;
	}
	if(schoolmax == sorabol){
		document.getElementById("suggestion1").innerText = '서라벌고';
		document.getElementById("suggestionschool1").innerText = '서라벌고';
		document.getElementById("mainschool").innerText = '서라벌고는';
		document.getElementById("tableschool").innerText = '서라벌고';
		document.getElementById("summary").innerText = `설립구분 : 사립
			설립유형 : 단설
			학교특성 : 일반고등학교
			설립일자 : 1956년 03월 05일
			대표번호 : 02-2092-2200
			주소 : 서울특별시 노원구 한글비석로5길 18
			학생수 : 973명 (남 973명 , 여 0명)
			교원수 : 78명 (남 53명 , 여 25명)
			체육집회공간 : 1실`;
		document.getElementById("suggestionrate").innerText = `전문대학26명(8.1%)
			대학193명(60.1%)
			기타102명(31.8%)`;
//		document.getElementById("suggestionsubject").innerText = '운동과건강, 사물인터넷,데이터과학과머신러닝,인공지능기초, 진로와직업(필수),환경,실용경제';
		document.getElementById("explanationword1").innerHTML = '<p>최근,  노원구 소재 대 다수의 고등학교에서 대입률을 높이기 위해 학습역량증진 뿐만 아니라, 학생부 기록까지 신경을 쓰고 있습니다. 따라서 신학기에 자신이 가진 에너지 모두를 학업에 쏟아준다면 학습우수생, 생활모범생으로 인정받을 수 있으니 학교생활 역전의 기회를 놓치지 않길 바랍니다.</p>';
		document.getElementById("prior1-1.1").innerText = '99';
		document.getElementById("prior1-1.2").innerText = '92';
		document.getElementById("prior1-1.3").innerText = '91';
		document.getElementById("prior1-2.1").innerText = '92';
		document.getElementById("prior1-2.2").innerText = '84';
		document.getElementById("prior1-2.3").innerText = '80';
		document.getElementById("prior1-3.1").innerText = '85';
		document.getElementById("prior1-3.2").innerText = '76';
		document.getElementById("prior1-3.3").innerText = '71';
		document.getElementById("prior2-1.1").innerText = '97';
		document.getElementById("prior2-1.2").innerText = '91';
		document.getElementById("prior2-1.3").innerText = '85';
		document.getElementById("prior2-2.1").innerText = '89';
		document.getElementById("prior2-2.2").innerText = '82';
		document.getElementById("prior2-2.3").innerText = '73';
		document.getElementById("prior2-3.1").innerText = '81';
		document.getElementById("prior2-3.2").innerText = '74';
		document.getElementById("prior2-3.3").innerText = '63';
		document.getElementById("prior3-1.1").innerText = '99';
		document.getElementById("prior3-1.2").innerText = '100';
		document.getElementById("prior3-1.3").innerText = '82';
		document.getElementById("prior3-2.1").innerText = '89';
		document.getElementById("prior3-2.2").innerText = '93';
		document.getElementById("prior3-2.3").innerText = '71';
		document.getElementById("prior3-3.1").innerText = '80';
		document.getElementById("prior3-3.2").innerText = '84';
		document.getElementById("prior3-3.3").innerText = '60';
		document.getElementById("prior4-1.1").innerText = '97';
		document.getElementById("prior4-1.2").innerText = '97';
		document.getElementById("prior4-1.3").innerText = '87';
		document.getElementById("prior4-2.1").innerText = '87';
		document.getElementById("prior4-2.2").innerText = '86';
		document.getElementById("prior4-2.3").innerText = '74';
		document.getElementById("prior4-3.1").innerText = '78';
		document.getElementById("prior4-3.2").innerText = '75';
		document.getElementById("prior4-3.3").innerText = '61';
		document.getElementById("prior5-1.1").innerText = '100';
		document.getElementById("prior5-1.2").innerText = '97';
		document.getElementById("prior5-1.3").innerText = '94';
		document.getElementById("prior5-2.1").innerText = '92';
		document.getElementById("prior5-2.2").innerText = '88';
		document.getElementById("prior5-2.3").innerText = '85';
		document.getElementById("prior5-3.1").innerText = '84';
		document.getElementById("prior5-3.2").innerText = '80';
		document.getElementById("prior5-3.3").innerText = '77';
//		document.getElementById("textCal1").innerHTML = ``;
//		document.getElementById("textCal2").innerHTML = ``;
		$('#textCal1').parents('.img7area').remove();
		$('#textCal2').parents('.img7area').remove();
		
		let a1Html = '';
		a1Html += '<span class="txt-act">1 자율활동</span><br>';
		a1Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a1Html += '• <span class="txt-bold">서라벌 펜타곤 교육 프로그램</span> 중심 : IT융합, 인성자치, 인문사회, 창의과학, 문화예술 전 영역을 아우르는 탐구·체험 활동<br>';
		a1Html += '• 학생의 주도성·협업·발표력을 강화하는 구조적 활동 설계<br>';
		a1Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a1Html += '• AI 융합 프로그램, 창의적 진로탐구 ‘패스파인더’, 진로역량 프로젝트 ‘어치버’<br>';
		a1Html += '• 인문학 심포지엄, 청소년 사회참여·진로 토론, 독서캠프, 지리답사, 평화·통일 탐구<br>';
		a1Html += '• 가을음악회, 미술발표회, 체육 한마당, 사제동행 활동<br>';
		a1Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a1Html += '→ <span class="txt-bold">탐구–실천–발표</span> 3단계로 기록하면 풍부함<br>';
		a1Html += '예) “AI 파이오니어스 활동에 참여해 융합적 사고를 탐구하고, 학급 발표회를 통해 성과를 공유함.”';
		$('#activity1').html(a1Html);
		
		let a2Html = '';
		a2Html += '<span class="txt-act">2 동아리활동</span><br>';
		a2Html += '<br><span class="txt-bold">운영 일정</span><br><br>';
		a2Html += '• 창의적 체험활동 동아리, 전공·진로별 특화 동아리 운영 (1~3학년 전 학년 대상)<br>';
		a2Html += '<br><span class="txt-bold">주요 동아리 예시</span><br><br>';
		a2Html += '• <span class="txt-bold">과학·수학</span> : 과학독서반, 슬기로운 과학탐구, AI 논리수학, 수리과학주제탐구, 융합화학생명, DMZ(수학토론)<br>';
		a2Html += '• <span class="txt-bold">인문·사회·경제</span> : ECON(경제경영), 공존형 사회쟁점토론, KOHIS(한국사참여), 글로벌경영경제리더반<br>';
		a2Html += '• <span class="txt-bold">창의·IT</span> : AI 창의코딩, Noisy IT, 사물인터넷물리, 미래자동차 모빌리티, 3D 모델링·CAD<br>';
		a2Html += '• <span class="txt-bold">예술·체육</span> : 밴드, 오케스트라, 창작미술, 보디빌딩, 농구·축구반<br>';
		a2Html += '• <span class="txt-bold">언어·미디어</span> : 방송반, 다큐저널, 미디어커뮤니케이션, 글로벌 언어문화반, 독서와 미디어<br>';
		a2Html += '• <span class="txt-bold">창업·진로</span> : K-스타트업 창업반, Brand New, 퓨처 오토 드라이버(자율주행), 메디헬스, 자기계발탐구반<br>';
		a2Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a2Html += '→ **“탐구 주제 + 산출물 + 협업”**을 반드시 강조<br>';
		a2Html += '예) “ECON 동아리에서 경제 현안을 분석하고 모의 정책 제안서를 작성하여 토론함.”';
		$('#activity2').html(a2Html);
		
		let a3Html = '';
		a3Html += '<span class="txt-act">3 봉사활동</span><br>';
		a3Html += '<br><span class="txt-bold">핵심 방향</span><br><br>';
		a3Html += '• <span class="txt-bold">멘토링·사제동행</span>을 통한 학교 내 봉사<br>';
		a3Html += '• 동아리 연계형 사회공헌 활동(연주·도서·환경정화·캠페인 등)<br>';
		a3Html += '• 지역사회·외부기관 협력형 봉사(청소년 교육기관 연계, 마을 교육 연계)<br>';
		a3Html += '<br><span class="txt-bold">활동 예시</span><br><br>';
		a3Html += '• 한무릎공부 : 또래 멘토-멘티 학습 지원<br>';
		a3Html += '• 밴드·오케스트라 → 지역사회 공연 봉사<br>';
		a3Html += '• 도서·독서 동아리 → 도서관 정리 및 독서 지도<br>';
		a3Html += '• 환경·지리탐구 → 에코로드, 지질생태탐사 연계 환경보호 캠페인<br>';
		a3Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a3Html += '→ <span class="txt-bold">“지속성 + 진로 연계성”</span> 강조<br>';
		a3Html += '예) “한무릎공부 활동에서 또래 멘토링을 실천하며 교육 봉사 진로에 대한 확신을 다짐.”';
		$('#activity3').html(a3Html);
		
		let a4Html = '';
		a4Html += '<span class="txt-act">4 진로활동</span><br>';
		a4Html += '<br><span class="txt-bold">핵심 목표</span><br><br>';
		a4Html += '• <span class="txt-bold">탐구–성찰–발표–성과 공유</span> 구조 확립<br>';
		a4Html += '• AI·융합·국제교류·독서·인문사회 중심 프로그램으로 전공 역량 강화<br>';
		a4Html += '<br><span class="txt-bold">주요 활동</span><br><br>';
		a4Html += '• <span class="txt-bold">IT·AI 융합</span> : AI 파이오니어스, 공유캠퍼스, 디지털 새싹, 자율주행·스마트 모빌리티 탐구<br>';
		a4Html += '• <span class="txt-bold">인문·사회</span> : 인문학 심포지엄, 청소년 사회참여·진로 토론, 평화·통일 프로젝트<br>';
		a4Html += '• <span class="txt-bold">과학·융합</span> : 지능형 물리교실, 물리 자율탐구, 지질생태탐사, STEAM 교과융합프로젝트<br>';
		a4Html += '• <span class="txt-bold">글로벌·언어</span> : English Career Research Project(영어 진로연구 발표), 글로벌 언어문화반<br>';
		a4Html += '• <span class="txt-bold">예술·발표</span> : ‘나를 발견하는 시간 3분’ 발표회, 미술 종합발표회, 아트라운지 활동<br>';
		a4Html += '<br><span class="txt-bold">기록 팁</span><br><br>';
		a4Html += '→ <span class="txt-bold">진로의식 변화 + 성과물(논문·발표·보고서)</span> 중심<br>';
		a4Html += '예) “인문학 심포지엄에서 독서 기반 탐구를 통해 발표 자료를 제작하고 토론하며 진로 역량을 심화함.”';
		$('#activity4').html(a4Html);
		
		let a5Html = '';
		a5Html += '<span class="txt-act">✅ 학생 참여 가이드</span><br><br>';
		a5Html += '1. <span class="txt-bold">학급·자율활동</span> → 펜타곤 교육 프로젝트(AI, 인문, 과학, 예술)에 주도적으로 참여<br>';
		a5Html += '2. <span class="txt-bold">동아리 활동</span> → 진로와 직접 연결되는 탐구형·창의형 동아리 선택<br>';
		a5Html += '3. <span class="txt-bold">봉사활동</span> → 또래 멘토링·사제동행·환경 캠페인 등 학급·동아리와 연계<br>';
		a5Html += '4. <span class="txt-bold">진로탐구</span> → 인문학 심포지엄, AI 융합 연구, English Career Project 등 발표 활동으로 기록 강화<br>';
		a5Html += '<br>👉 <span class="txt-bold">핵심 흐름 요약</span><br><br>';
		a5Html += '자율활동(펜타곤 교육) → 동아리 탐구(전공·창의) → 봉사 실천(멘토링·사회참여) → 진로 성찰·발표(성과 공유)<br>';
		a5Html += '이렇게 참여하면 생활기록부가 **‘단순 활동 기록’**이 아닌, **‘성장 스토리형 기록’**으로 완성됩니다.';
		$('#activity5').html(a5Html);
		document.getElementById("subjects").innerText = ``;
	}
	if(arrschool[1] == sorabol){
		document.getElementById("suggestion2").innerText = '서라벌고';
		document.getElementById("suggestionschool2").innerText = '서라벌고';
	}
	if(arrschool[1] == jaehyun){
		document.getElementById("suggestion2").innerText = '재현고';
		document.getElementById("suggestionschool2").innerText = '재현고';
	}
	if(arrschool[1] == daejin){
		document.getElementById("suggestion2").innerText = '대진고';
		document.getElementById("suggestionschool2").innerText = '대진고';
	}
	if(arrschool[1] == cheongwon){
		document.getElementById("suggestion2").innerText = '청원고';
		document.getElementById("suggestionschool2").innerText = '청원고';
	}
	if(arrschool[1] == cheongwongirls){
		document.getElementById("suggestion2").innerText = '청원여고';
		document.getElementById("suggestionschool2").innerText = '청원여고';
	}
	if(arrschool[1] == hyeseonggirls){
		document.getElementById("suggestion2").innerText = '혜성여고';
		document.getElementById("suggestionschool2").innerText = '혜성여고';
	}
	if(arrschool[1] == yonghwa){
		document.getElementById("suggestion2").innerText = '용화여고';
		document.getElementById("suggestionschool2").innerText = '용화여고';
	}
	if(arrschool[1] == daejingirls){
		document.getElementById("suggestion2").innerText = '대진여고';
		document.getElementById("suggestionschool2").innerText = '대진여고';
	}
	if(arrschool[1] == youngsin){
		document.getElementById("suggestion2").innerText = '영신여고';
		document.getElementById("suggestionschool2").innerText = '영신여고';
	}
	if(arrschool[1] == sangmyung){
		document.getElementById("suggestion2").innerText = '상명고';
		document.getElementById("suggestionschool2").innerText = '상명고';
	}
	if(arrschool[1] == buram){
		document.getElementById("suggestion2").innerText = '불암고';
		document.getElementById("suggestionschool2").innerText = '불암고';
	}
	if(arrschool[2] == buram){
		document.getElementById("suggestionschool3").innerText = '불암고';
	}
	if(arrschool[2] == sangmyung){
		document.getElementById("suggestionschool3").innerText = '상명고';
	}
	if(arrschool[2] == youngsin){
		document.getElementById("suggestionschool3").innerText = '영신여고';
	}
	if(arrschool[2] == daejingirls){
		document.getElementById("suggestionschool3").innerText = '대진여고';
	}
	if(arrschool[2] == yonghwa){
		document.getElementById("suggestionschool3").innerText = '용화여고';
	}
	if(arrschool[2] == cheongwongirls){
		document.getElementById("suggestionschool3").innerText = '청원여고';
	}
	if(arrschool[2] == hyeseonggirls){
		document.getElementById("suggestionschool3").innerText = '혜성여고';
	}
	if(arrschool[2] == cheongwon){
		document.getElementById("suggestionschool3").innerText = '청원고';
	}
	if(arrschool[2] == daejin){
		document.getElementById("suggestionschool3").innerText = '대진고';
	}
	if(arrschool[2] == jaehyun){
		document.getElementById("suggestionschool3").innerText = '재현고';
	}
	if(arrschool[2] == sorabol){
		document.getElementById("suggestionschool3").innerText = '서라벌고';
	}
	
	if(youngsin == 0.0){
		// Removes the alpha channel from background colors
		function handleLeave(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = color.length === 9 ? color.slice(0, -2) : color;
		  	});
		  	legend.chart.update();
		}
		// Append '4d' to the colors (alpha channel), except for the hovered index
		function handleHover(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = index === item.index || color.length === 9 ? color : color + '4D';
		  	});
		  	legend.chart.update();
		}
		const piedata = {
			labels : ['불암고', '상명고', '청원고', '대진고', '재현고', '서라벌고'],
		  	datasets : [{
		    	label : '# of Votes',
		    	data : [buram, sangmyung, cheongwon, daejin, jaehyun, sorabol],
		    	borderWidth : 1,
		    	backgroundColor : ['#803A22', '#1F618D', '#F1C40F', '#27AE60', '#884EA0', '#F73505'],
	  		}]
		};
		const piechart = new Chart(document.getElementById('mypieChart'),{
		  	type : 'pie',
		  	data : piedata,
		  	plugins : [ChartDataLabels],
		  	options : {
		  		responsive : false,
				plugins : {
					legend : {
		                labels : {
		                    // This more specific font property overrides the global property
		                    font : {
		                        size : 40
		                    }
		                }
		            },
	            	datalabels:{
	            		color:'black',
						font:{size:50},
	            	}
	        	}
		  	}
		});
	}
	if(daejin == 0.0){
		// Removes the alpha channel from background colors
		function handleLeave(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = color.length === 9 ? color.slice(0, -2) : color;
		  	});
		  	legend.chart.update();
		}
		// Append '4d' to the colors (alpha channel), except for the hovered index
		function handleHover(evt, item, legend) {
		  	legend.chart.data.datasets[0].backgroundColor.forEach((color, index, colors) => {
		    	colors[index] = index === item.index || color.length === 9 ? color : color + '4D';
		  	});
		  	legend.chart.update();
		}
		const piedata = {
			labels : ['불암고', '상명고', '영신여고', '대진여고', '용화여고', '청원여고', '혜성여고'],
		  	datasets : [{
		    	label : '# of Votes',
		    	data : [buram, sangmyung, youngsin, daejingirls, yonghwa, cheongwongirls, hyeseonggirls],
		    	borderWidth : 1,
		    	backgroundColor : ['#803A22', '#1F618D', '#F1C40F', '#27AE60', '#884EA0', '#F73505', '#34495E'],
	  		}]
		};
		const piechart = new Chart(document.getElementById('mypieChart'),{
		  	type : 'pie',
		  	data : piedata,
		  	plugins : [ChartDataLabels],
		  	options : {
		  		responsive : false,
				plugins : {
					legend : {
						position : 'right',
		                labels : {
		                    // This more specific font property overrides the global property
		                    font : {
		                        size : 40
		                    }, padding : 40
		                }
		            },
	            	datalabels:{
	            		color:'black',
						font:{size:50},
	            	}
	        	}
		  	}
		});
	}
	var averageprior = (parseFloat(prior1) + parseFloat(prior2) + parseFloat(prior3) + parseFloat(prior4) + parseFloat(prior5))/5;
	var minprior = Math.min(prior1, prior2, prior3, prior4, prior5);
	if(averageprior >= 80){
		if(minprior < 50){
			document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
		}
		document.getElementById("explanationword2").innerHTML = '<p>현재에도 우수한 상태이지만 고등학교 내신은 상위 4%로만 1등급을 확보할 수 있기에 완벽에 가까운 학습이 진행되어야 합니다. 고3과정까지 선행을 많이 하였겠지만 일단, 1학년과정부터 완벽히 다져서 만점에 가까운 점수를 확보할 수 있도록 해주세요. 과목마다 차이가 있지만 100점을 받아야만 1등급을 받을 수 있는 경우도 있으니까요.  완벽한 학습을 위해서는 오답노트와 암기요약노트는 필수입니다. 고3까지 간직할 수 있도록 사전에 준비해주시고 세부특기사항과 종합평가란에 들어가는 학교프로그램도 철저히 대비해주세요</p>';
	}
	if(averageprior >= 50 && averageprior < 80){
		if(minprior < 50){
			document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
		}
		document.getElementById("explanationword2").innerHTML = '<p>선행도는 전반적으로 잘 갖추어져 있지만 완벽한 상태는 아니므로 이번 방학을 통해 부족한 영역은 100%에 가깝도록 훈련해야 합니다. 시간은 흐르면 다시 돌아오지 않습니다. 예비고1 겨울방학은 최상위권으로 진입할 수 있는 좋은 기회입니다. </p>';
	}
	if(averageprior < 50){
		document.getElementById("explanationword2").innerHTML = '<p>위 영역중 50% 이하 영역의 경우, 이번 겨울방학을 통해 공부량을 늘리는 것이 필요하며 당장 1학년 1학기에 진행되는 내신범위만이라도 집중적으로 학습하여야  1등급 확보가 가능합니다. 1학기가 완성되면 2학기  과정으로 진행하는 것이 바람직합니다.</p>';
	}
	const data1 = {
	  	labels : ['자기주도성','창의성','공부그릿','환경민감도','활동성','가정학습환경도'],
	  	datasets : [{
	  		axis : 'y',
	    	label : '학습성향',
	    	data : [tendency1, tendency2, tendency3, tendency4, tendency5, tendency6],
	    	backgroundColor : [
	      		'rgba(54, 162, 235, 0.9)'
	    	],
	    	borderColor : [
	      		'rgb(54, 162, 235)'
	    	],
	    	borderWidth : 1
	  	}]
	};
	const barchart1 = new Chart(document.getElementById('mybarChart1'),{
	  	type : 'bar',
	  	data : data1,
	  	options : {
	  		maxBarThickness : 60,
	  		responsive : false,
	  		indexAxis : 'y',
	  		plugins : {
            	legend : {
            		display : false
            	}
        	},
	        scales:{
	        	x:{
	        		ticks:{
	        			font:{
	        				size:36
	        			}
	        		},
        			max:100
	        	},
	        	y:{
	        		ticks:{
	        			font:{
	        				size:36
	        			}
	        		}
	        	}
	        }
	  	},
	});
	const data2 = {
	  	labels : ['국어','수학','영어','사탐','과탐'],
	  	datasets : [{
	  		axis : 'y',
	    	label : '학습선행도',
	    	data : [prior1, prior2, prior3, prior4, prior5],
	    	backgroundColor : [
	      		'rgba(54, 162, 235, 0.9)'
	    	],
	    	borderColor : [
	      		'rgb(54, 162, 235)'
	    	],
	    	borderWidth : 1
	  	}]
	};
	const barchart2 = new Chart(document.getElementById('mybarChart2'),{
	  	type : 'bar',
	  	data : data2,
	  	options : {
	  		maxBarThickness : 60,
	  		responsive : false,
	  		indexAxis : 'y',
	  		plugins : {
            	legend : {
            		display : false
            	}
        	},
	        scales:{
	        	x:{
	        		ticks:{
	        			font:{
	        				size:36
	        			}
	        		},
        			max:100
	        	},
	        	y:{
	        		ticks:{
	        			font:{
	        				size:36
	        			}
	        		}
	        	}
	        }
	  	},
	});
	</script>
</body>
</html>