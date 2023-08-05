<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>진도계획표</title>
<style>
    * {
        margin: 0;
        padding: 0;
        font-family: 'Noto Sans KR', sans-serif;
        box-sizing: border-box;
    }
    input {
        text-align: center;
    }
    .imgarea {
        height: 100vh;
        position: relative;
    }
    .mainimg {
        text-align: center;
    }
    img {
        max-height: 100vh;
    }
    .bookarea {
        position: absolute;
        top: 6.55%;
        left: 43%;
    }
    input {
        background-color: transparent;
        border: none;
        outline: none;
    }
    input:focus {
        background-color: yellow;
    }
    th {
        text-align: center;
        border: 1px solid #D3D3D3;
    }
    td {
        height: 4.3vh;
        text-align: center;
        border: 1px solid #D3D3D3;
    }
    table {
        border: 1px solid #777777;
    }
    .book_name {
        font-weight: bold;
        width: 75%;
        color: #09A841;
        text-align: left;
    }
    .classarea {
        position: absolute;
        top: 19.5%;
        left: 33.1%;
    }
    .class_table {
        width: 69.5vh;
    }
    .classhead {
        font-size: 13px;
        background-color: #F9F9F9;
        color: #09A841;
    }
    .class_input {
        height: 100%;
        width: 100%;
    }
    .progressarea {
        position: absolute;
        top: 27.2%;
        left: 33.1%;
    }
    .progress_table {
        width: 69.5vh;
    }
    .progresshead {
        font-size: 13px;
        background-color: #F9F9F9;
        color: #09A841;
    }
    .progress_input {
        height: 100%;
        width: 100%;
    }
    .btn_save {
        padding: 2px 5px 2px 5px;
        position: absolute;
        font-size: large;
        top: 84.5%;
        left: 60%;
    }
    .btn_cancel {
        padding: 2px 5px 2px 5px;
        position: absolute;
        font-size: large;
        top: 84.5%;
        left: 64%;
    }
    .teacherarea {
        position: absolute;
        width: 5%;
        top: 91.5%;
        left: 57.5%;
    }
    .curDate {
        position: absolute;
        top: 92%;
        left: 38%;
    }
    .teacher {
        width: 100%;
        padding-left: 15px;
        text-align: left;
    }
</style>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="/resources/jquery.textfill.min.js"></script>
<script>
    let msg = '${msg}';
    if(msg == "saved") {
        alert("저장되었습니다.");
    }
    $(function() {
        // $('.progress_td').textfill({
        // innerTag: "input",
        // maxFontPixels: 100,
        // minFontPixels: 1,

        // success: function() {
        //     console.log("success")
        // },
        // fail: function() {
        //     console.log("fail")
        // }
        // });
    });

</script>
</head>
<body>
<div class="imgarea">
    <div class="mainimg">
        <img class="mainimg1" alt="mainimg1" src="/resources/image/teacherReport_1.png">
    </div>
    <form class="progressForm" action="/teacherReport" method="post">
        <div class="bookarea">
            <input type="text" class="book_name" name="book_name" value="${tRvo.book_name}">
        </div>
        <div class="classarea">
            <table class="class_table">
                <tr class="classhead">
                    <th style="width: 25%;">반명</th>
                    <th style="width: 75%;">해당학생</th>
                </tr>
                <tr>
                    <td><input class="class_input" name="c_name" type="text" value="${tRvo.c_name}" readonly></td>
                    <td><input class="class_input" name="c_student" type="text" value="${tRvo.c_student}"></td>
                </tr>
            </table>
        </div>
        <div class="progressarea">
            <table class="progress_table">
                <tr class="progresshead">
                    <th style="width: 5%;">차시</th>
                    <th style="width: 12%;">날짜</th>
                    <th style="width: 5%;">요일</th>
                    <th style="width: auto;">해당진도</th>
                    <th style="width: 25%">과제</th>
                    <th style="width: 15%;">확인 및 비고</th>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_1" type="text" value="${tRvo.p_no_1}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_1" type="date" value="${tRvo.p_date_1}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_1" type="text" value="${tRvo.p_day_1}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_1" type="text" value="${tRvo.p_progress_1}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_1" type="text" value="${tRvo.p_assignment_1}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_1" type="text" value="${tRvo.p_check_1}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_2" type="text" value="${tRvo.p_no_2}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_2" type="date" value="${tRvo.p_date_2}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_2" type="text" value="${tRvo.p_day_2}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_2" type="text" value="${tRvo.p_progress_2}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_2" type="text" value="${tRvo.p_assignment_2}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_2" type="text" value="${tRvo.p_check_2}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_3" type="text" value="${tRvo.p_no_3}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_3" type="date" value="${tRvo.p_date_3}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_3" type="text" value="${tRvo.p_day_3}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_3" type="text" value="${tRvo.p_progress_3}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_3" type="text" value="${tRvo.p_assignment_3}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_3" type="text" value="${tRvo.p_check_3}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_4" type="text" value="${tRvo.p_no_4}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_4" type="date" value="${tRvo.p_date_4}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_4" type="text" value="${tRvo.p_day_4}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_4" type="text" value="${tRvo.p_progress_4}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_4" type="text" value="${tRvo.p_assignment_4}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_4" type="text" value="${tRvo.p_check_4}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_5" type="text" value="${tRvo.p_no_5}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_5" type="date" value="${tRvo.p_date_5}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_5" type="text" value="${tRvo.p_day_5}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_5" type="text" value="${tRvo.p_progress_5}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_5" type="text" value="${tRvo.p_assignment_5}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_5" type="text" value="${tRvo.p_check_5}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_6" type="text" value="${tRvo.p_no_6}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_6" type="date" value="${tRvo.p_date_6}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_6" type="text" value="${tRvo.p_day_6}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_6" type="text" value="${tRvo.p_progress_6}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_6" type="text" value="${tRvo.p_assignment_6}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_6" type="text" value="${tRvo.p_check_6}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_7" type="text" value="${tRvo.p_no_7}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_7" type="date" value="${tRvo.p_date_7}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_7" type="text" value="${tRvo.p_day_7}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_7" type="text" value="${tRvo.p_progress_7}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_7" type="text" value="${tRvo.p_assignment_7}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_7" type="text" value="${tRvo.p_check_7}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_8" type="text" value="${tRvo.p_no_8}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_8" type="date" value="${tRvo.p_date_8}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_8" type="text" value="${tRvo.p_day_8}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_8" type="text" value="${tRvo.p_progress_8}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_8" type="text" value="${tRvo.p_assignment_8}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_8" type="text" value="${tRvo.p_check_8}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_9" type="text" value="${tRvo.p_no_9}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_9" type="date" value="${tRvo.p_date_9}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_9" type="text" value="${tRvo.p_day_9}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_9" type="text" value="${tRvo.p_progress_9}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_9" type="text" value="${tRvo.p_assignment_9}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_9" type="text" value="${tRvo.p_check_9}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_10" type="text" value="${tRvo.p_no_10}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_10" type="date" value="${tRvo.p_date_10}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_10" type="text" value="${tRvo.p_day_10}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_10" type="text" value="${tRvo.p_progress_10}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_10" type="text" value="${tRvo.p_assignment_10}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_10" type="text" value="${tRvo.p_check_10}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_11" type="text" value="${tRvo.p_no_11}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_11" type="date" value="${tRvo.p_date_11}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_11" type="text" value="${tRvo.p_day_11}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_11" type="text" value="${tRvo.p_progress_11}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_11" type="text" value="${tRvo.p_assignment_11}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_11" type="text" value="${tRvo.p_check_11}"></td>
                </tr>
                <tr>
                    <td class="progress_td"><input class="progress_input" name="p_no_12" type="text" value="${tRvo.p_no_12}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_date_12" type="date" value="${tRvo.p_date_12}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_day_12" type="text" value="${tRvo.p_day_12}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_progress_12" type="text" value="${tRvo.p_progress_12}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_assignment_12" type="text" value="${tRvo.p_assignment_12}"></td>
                    <td class="progress_td"><input class="progress_input" name="p_check_12" type="text" value="${tRvo.p_check_12}"></td>
                </tr>
            </table>
        </div>
        <div class="teacherarea">
            <input class="teacher" name="teacher" type="text" value="${tRvo.teacher}" readonly>
        </div>
        <button class="btn_save" id="btn_save" type="submit">저장</button>
        <button class="btn_cancel" id="btn_cancel" type="button">취소</button>
    </form>
    <div class="curDate">
        <c:set var="ymd" value="<%=new java.util.Date()%>" />
        <fmt:formatDate value="${ymd}" pattern="yyyy년 MM월 dd일" />
    </div>
</div>
</body>
<script>
    $("#btn_cancel").click(function() {
        location.href = "teacher?teacher=${tRvo.teacher}";
    });
</script>
</html>