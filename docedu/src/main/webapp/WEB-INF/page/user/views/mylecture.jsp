<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="https://kit.fontawesome.com/4054601d2a.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <style>
            body {
                background-color: black;
            }
            video {
                display: none;
                width: 65%;
                margin-left: 20%;
                margin-top: 20px;
                border: 2px solid white;
            }
            .sidemenu{
                text-align: center;
                position: fixed;
                top: 0;
                left : 0;
                background-color: aqua;
                width: 100px;
                height: 100%;
            }
            .sideindex{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .takenotes{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .wrongnotes{
                display: grid;
                grid-template-rows: 1fr auto;
                margin-bottom: 40px;
            }
            .indextool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                text-align: center;
            }
            .taketool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                text-align: center;
            }
            .taketext{
                width: 95%;
                height: 500px;
                resize: none;
            }
            .wrongtool{
                padding-top: 10px;
                display: none;
                background-color:cornflowerblue;
                position: fixed;
                top: 0;
                left : 100px;
                width : 400px;
                height : 100%;
                z-index: 1;
                overflow-y: scroll;
                text-align: center;
            }
            ul{
                list-style:none;
                padding-left: 0px;
            }
            .buttonarea{
                position:fixed;
                top:37%;
                left:18%;
                width: 69%;
                display: flex;
                justify-content: space-between;
            }
            .prevideo{
                display: none;
            }
            .nextvideo{
                display: none;
            }
            .onevideo{
                display: block;
            }
            .fa-circle-chevron-left{
                color:blueviolet;
                background-color: white;
                border-radius: 30px;
            }
            .fa-circle-chevron-right{
                color:blueviolet;
                background-color: white;
                border-radius: 30px;
            }
            .subtitle{
                background-color: azure;
                position:fixed;
                left:17.5%;
                top:80%;
                border-radius: 3px;
                width:70%;
                height:140px;
            }
        </style>
    </head>
    <body>
        <div class="sidemenu">
            <div class="sideheader">
                로고
            </div>
            <hr>
            <div class="sidebody">
                <div class="sideindex">
                    <i class="fa-solid fa-indent fa-4x"></i>
                    목차
                </div>
                <div class="takenotes">
                    <i class="fa-regular fa-note-sticky fa-4x"></i>
                    필기
                </div>
                <div class="wrongnotes">
                    <i class="fa-regular fa-circle-xmark fa-4x"></i>
                    오답
                </div>
            </div>
        </div>
        <div class="indextool">
            목차 상세보기
            <hr>
            <ul>
                <li onclick="videochange1()">동영상 1</li>
                <li onclick="videochange2()">동영상 2</li>
                <li onclick="videochange3()">동영상 3</li>
                <li onclick="videochange4()">동영상 4</li>
                <li onclick="videochange5()">동영상 5</li>
                <li onclick="videochange6()">동영상 6</li>
                <li onclick="videochange7()">동영상 7</li>
                <li onclick="videochange8()">동영상 8</li>
                <li onclick="videochange9()">동영상 9</li>
                <li onclick="videochange10()">동영상 10</li>
            </ul>
        </div>
        <div class="taketool">
            필기
            <hr>
            <textarea class="taketext"></textarea>
        </div>
        <div class="wrongtool">
            오답노트
            <hr>
        </div>
        <div>
            <section class="testplayer">
                <video class="video" id="video1" style="display:block" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 1of10.mp4"/>
                </video>
                <video class="video" id="video2" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 2of10.mp4"/>
                </video>
                <video class="video" id="video3" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 3of10.mp4"/>
                </video>
                <video class="video" id="video4" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 4of10.mp4"/>
                </video>
                <video class="video" id="video5" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 5of10.mp4"/>
                </video>
                <video class="video" id="video6" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 6of10.mp4"/>
                </video>
                <video class="video" id="video7" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 7of10.mp4"/>
                </video>
                <video class="video" id="video8" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 8of10.mp4"/>
                </video>
                <video class="video" id="video9" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 9of10.mp4"/>
                </video>
                <video class="video" id="video10" controls>
                    <source type="video/mp4" src="/resources//testmovie/testmovie - 10of10.mp4"/>
                </video>
            </section>
            <br><br>
            <div class="buttonarea">
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo onevideo" type="button"  id="prebtn1" onclick="prevideo1()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo onevideo" type="button" id="nextbtn1" onclick="nextvideo1()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo twovideo" type="button"  id="prebtn2" onclick="prevideo2()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo twovideo" type="button" id="nextbtn2" onclick="nextvideo2()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo threevideo" type="button"  id="prebtn3" onclick="prevideo3()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo threevideo" type="button" id="nextbtn3" onclick="nextvideo3()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo fourvideo" type="button"  id="prebtn4" onclick="prevideo4()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo fourvideo" type="button" id="nextbtn4" onclick="nextvideo4()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo fivevideo" type="button"  id="prebtn5" onclick="prevideo5()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo fivevideo" type="button" id="nextbtn5" onclick="nextvideo5()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo sixvideo" type="button"  id="prebtn6" onclick="prevideo6()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo sixvideo" type="button" id="nextbtn6" onclick="nextvideo6()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo sevenvideo" type="button"  id="prebtn7" onclick="prevideo7()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo sevenvideo" type="button" id="nextbtn7" onclick="nextvideo7()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo eightvideo" type="button"  id="prebtn8" onclick="prevideo8()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo eightvideo" type="button" id="nextbtn8" onclick="nextvideo8()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo ninevideo" type="button"  id="prebtn9" onclick="prevideo9()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo ninevideo" type="button" id="nextbtn9" onclick="nextvideo9()"></i>
                <i class="fa-solid fa-circle-chevron-left fa-3x prevideo tenvideo" type="button"  id="prebtn10" onclick="prevideo10()"></i>
                <i class="fa-solid fa-circle-chevron-right fa-3x nextvideo tenvideo" type="button" id="nextbtn10" onclick="nextvideo10()"></i>
            </div>
            <div class="subtitle">
                <div class="jamak">
                    자막입니다.
                </div>
            </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 1번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn1()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn1()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 2번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn2()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn2()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop3" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 3번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn3()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn3()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop4" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 4번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn4()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn4()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop5" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 5번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn5()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn5()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop6" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 6번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn6()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn6()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop7" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 7번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn7()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn7()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop8" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 8번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn8()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn8()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop9" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 9번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtn9()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtn9()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop10" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">중간 문제 10번</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="wrongbtnresult()">오답 테스트</button>
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="answerbtnresult()">정답 테스트</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop11" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">최종 정리 문제</h5>
                    </div>
                    <div class="modal-body">
                    ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">최종 정답 제출</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(function(){ 
                $("#video1").bind("ended", function() {
                    $("#staticBackdrop1").modal("show");
                    document.getElementById("video1").style.display = 'none';
                    document.getElementById("video2").style.display = 'block';
                    document.getElementById("prebtn1").style.display = 'none';
                    document.getElementById("nextbtn1").style.display = 'none';
                    document.getElementById("prebtn2").style.display = 'block';
                    document.getElementById("nextbtn2").style.display = 'block';
                });
                $("#video2").bind("ended", function() {
                    $("#staticBackdrop2").modal("show");
                    document.getElementById("video2").style.display = 'none';
                    document.getElementById("video3").style.display = 'block';
                    document.getElementById("prebtn2").style.display = 'none';
                    document.getElementById("nextbtn2").style.display = 'none';
                    document.getElementById("prebtn3").style.display = 'block';
                    document.getElementById("nextbtn3").style.display = 'block';
                });
                $("#video3").bind("ended", function() {
                    $("#staticBackdrop3").modal("show");
                    document.getElementById("video3").style.display = 'none';
                    document.getElementById("video4").style.display = 'block';
                    document.getElementById("prebtn3").style.display = 'none';
                    document.getElementById("nextbtn3").style.display = 'none';
                    document.getElementById("prebtn4").style.display = 'block';
                    document.getElementById("nextbtn4").style.display = 'block';
                });
                $("#video4").bind("ended", function() {
                    $("#staticBackdrop4").modal("show");
                    document.getElementById("video4").style.display = 'none';
                    document.getElementById("video5").style.display = 'block';
                    document.getElementById("prebtn4").style.display = 'none';
                    document.getElementById("nextbtn4").style.display = 'none';
                    document.getElementById("prebtn5").style.display = 'block';
                    document.getElementById("nextbtn5").style.display = 'block';
                });
                $("#video5").bind("ended", function() {
                    $("#staticBackdrop5").modal("show");
                    document.getElementById("video5").style.display = 'none';
                    document.getElementById("video6").style.display = 'block';
                    document.getElementById("prebtn5").style.display = 'none';
                    document.getElementById("nextbtn5").style.display = 'none';
                    document.getElementById("prebtn6").style.display = 'block';
                    document.getElementById("nextbtn6").style.display = 'block';
                });
                $("#video6").bind("ended", function() {
                    $("#staticBackdrop6").modal("show");
                    document.getElementById("video6").style.display = 'none';
                    document.getElementById("video7").style.display = 'block';
                    document.getElementById("prebtn6").style.display = 'none';
                    document.getElementById("nextbtn6").style.display = 'none';
                    document.getElementById("prebtn7").style.display = 'block';
                    document.getElementById("nextbtn7").style.display = 'block';
                });
                $("#video7").bind("ended", function() {
                    $("#staticBackdrop7").modal("show");
                    document.getElementById("video7").style.display = 'none';
                    document.getElementById("video8").style.display = 'block';
                    document.getElementById("prebtn7").style.display = 'none';
                    document.getElementById("nextbtn7").style.display = 'none';
                    document.getElementById("prebtn8").style.display = 'block';
                    document.getElementById("nextbtn8").style.display = 'block';
                });
                $("#video8").bind("ended", function() {
                    $("#staticBackdrop8").modal("show");
                    document.getElementById("video8").style.display = 'none';
                    document.getElementById("video9").style.display = 'block';
                    document.getElementById("prebtn8").style.display = 'none';
                    document.getElementById("nextbtn8").style.display = 'none';
                    document.getElementById("prebtn9").style.display = 'block';
                    document.getElementById("nextbtn9").style.display = 'block';
                });
                $("#video9").bind("ended", function() {
                    $("#staticBackdrop9").modal("show");
                    document.getElementById("video9").style.display = 'none';
                    document.getElementById("video10").style.display = 'block';
                    document.getElementById("prebtn9").style.display = 'none';
                    document.getElementById("nextbtn9").style.display = 'none';
                    document.getElementById("prebtn10").style.display = 'block';
                    document.getElementById("nextbtn10").style.display = 'block';
                });
                $("#video10").bind("ended", function() {
                    $("#staticBackdrop10").modal("show");
                });
            }); 
            function prevideo1(){
                Swal.fire({
                    icon:'error',
                    title : '처음 챕터입니다.',
                    confirmButtonText: '닫기'
                });
            }
            function nextvideo1(){
                document.getElementById("video1").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'block';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'block';
                document.getElementById("nextbtn2").style.display = 'block';
            }
            function prevideo2(){
                document.getElementById("video2").pause();
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video1").style.display = 'block';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'block';
                document.getElementById("nextbtn1").style.display = 'block';
            }
            function nextvideo2(){
                document.getElementById("video2").pause();
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'block';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'block';
                document.getElementById("nextbtn3").style.display = 'block';
            }
            function prevideo3(){
                document.getElementById("video3").pause();
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video2").style.display = 'block';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'block';
                document.getElementById("nextbtn2").style.display = 'block';
            }
            function nextvideo3(){
                document.getElementById("video3").pause();
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'block';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'block';
                document.getElementById("nextbtn4").style.display = 'block';
            }
            function prevideo4(){
                document.getElementById("video4").pause();
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video3").style.display = 'block';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'block';
                document.getElementById("nextbtn3").style.display = 'block';
            }
            function nextvideo4(){
                document.getElementById("video4").pause();
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'block';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'block';
                document.getElementById("nextbtn5").style.display = 'block';
            }
            function prevideo5(){
                document.getElementById("video5").pause();
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video4").style.display = 'block';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'block';
                document.getElementById("nextbtn4").style.display = 'block';
            }
            function nextvideo5(){
                document.getElementById("video5").pause();
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'block';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'block';
                document.getElementById("nextbtn6").style.display = 'block';
            }
            function prevideo6(){
                document.getElementById("video6").pause();
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video5").style.display = 'block';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'block';
                document.getElementById("nextbtn5").style.display = 'block';
            }
            function nextvideo6(){
                document.getElementById("video6").pause();
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'block';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'block';
                document.getElementById("nextbtn7").style.display = 'block';
            }
            function prevideo7(){
                document.getElementById("video7").pause();
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video6").style.display = 'block';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'block';
                document.getElementById("nextbtn6").style.display = 'block';
            }
            function nextvideo7(){
                document.getElementById("video7").pause();
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'block';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'block';
                document.getElementById("nextbtn8").style.display = 'block';
            }
            function prevideo8(){
                document.getElementById("video8").pause();
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video7").style.display = 'block';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'block';
                document.getElementById("nextbtn7").style.display = 'block';
            }
            function nextvideo8(){
                document.getElementById("video8").pause();
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'block';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'block';
                document.getElementById("nextbtn9").style.display = 'block';
            }
            function prevideo9(){
                document.getElementById("video9").pause();
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video8").style.display = 'block';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'block';
                document.getElementById("nextbtn8").style.display = 'block';
            }
            function nextvideo9(){
                document.getElementById("video9").pause();
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'block';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'block';
                document.getElementById("nextbtn10").style.display = 'block';
            }
            function prevideo10(){
                document.getElementById("video10").pause();
                document.getElementById("video10").style.display = 'none';
                document.getElementById("video9").style.display = 'block';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'block';
                document.getElementById("nextbtn9").style.display = 'block';
            }
            function nextvideo10(){
                Swal.fire({
                    icon:'error',
                    title : '마지막 챕터입니다.',
                    confirmButtonText: '닫기'
                });
            }
            function videochange1(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'block';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'block';
                document.getElementById("nextbtn1").style.display = 'block';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange2(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'block';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'block';
                document.getElementById("nextbtn2").style.display = 'block';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange3(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'block';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'block';
                document.getElementById("nextbtn3").style.display = 'block';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange4(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'block';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'block';
                document.getElementById("nextbtn4").style.display = 'block';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange5(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'block';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'block';
                document.getElementById("nextbtn5").style.display = 'block';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange6(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'block';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'block';
                document.getElementById("nextbtn6").style.display = 'block';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange7(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'block';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'block';
                document.getElementById("nextbtn7").style.display = 'block';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange8(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'block';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'block';
                document.getElementById("nextbtn8").style.display = 'block';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange9(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'block';
                document.getElementById("video10").style.display = 'none';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'block';
                document.getElementById("nextbtn9").style.display = 'block';
                document.getElementById("prebtn10").style.display = 'none';
                document.getElementById("nextbtn10").style.display = 'none';
            }
            function videochange10(){
                document.getElementById("video1").pause();
                document.getElementById("video2").pause();
                document.getElementById("video3").pause();
                document.getElementById("video4").pause();
                document.getElementById("video5").pause();
                document.getElementById("video6").pause();
                document.getElementById("video7").pause();
                document.getElementById("video8").pause();
                document.getElementById("video9").pause();
                document.getElementById("video10").pause();
                document.getElementById("video1").style.display = 'none';
                document.getElementById("video2").style.display = 'none';
                document.getElementById("video3").style.display = 'none';
                document.getElementById("video4").style.display = 'none';
                document.getElementById("video5").style.display = 'none';
                document.getElementById("video6").style.display = 'none';
                document.getElementById("video7").style.display = 'none';
                document.getElementById("video8").style.display = 'none';
                document.getElementById("video9").style.display = 'none';
                document.getElementById("video10").style.display = 'block';
                document.getElementById("prebtn1").style.display = 'none';
                document.getElementById("nextbtn1").style.display = 'none';
                document.getElementById("prebtn2").style.display = 'none';
                document.getElementById("nextbtn2").style.display = 'none';
                document.getElementById("prebtn3").style.display = 'none';
                document.getElementById("nextbtn3").style.display = 'none';
                document.getElementById("prebtn4").style.display = 'none';
                document.getElementById("nextbtn4").style.display = 'none';
                document.getElementById("prebtn5").style.display = 'none';
                document.getElementById("nextbtn5").style.display = 'none';
                document.getElementById("prebtn6").style.display = 'none';
                document.getElementById("nextbtn6").style.display = 'none';
                document.getElementById("prebtn7").style.display = 'none';
                document.getElementById("nextbtn7").style.display = 'none';
                document.getElementById("prebtn8").style.display = 'none';
                document.getElementById("nextbtn8").style.display = 'none';
                document.getElementById("prebtn9").style.display = 'none';
                document.getElementById("nextbtn9").style.display = 'none';
                document.getElementById("prebtn10").style.display = 'block';
                document.getElementById("nextbtn10").style.display = 'block';
            }
            var a1 = 0;
            var b1 = 0;
            var a2 = 0;
            var b2 = 0;
            var a3 = 0;
            var b3 = 0;
            var a4 = 0;
            var b4 = 0;
            var a5 = 0;
            var b5 = 0;
            var a6 = 0;
            var b6 = 0;
            var a7 = 0;
            var b7 = 0;
            var a8 = 0;
            var b8 = 0;
            var a9 = 0;
            var b9 = 0;
            var a10 = 0;
            var b10 = 0;
            function answerbtn1(){
                if(a1==0 && b1==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a1++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn1(){
                if(a1==0 && b1==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b1++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답1');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn2(){
                if(a2==0 && b2==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a2++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn2(){
                if(a2==0 && b2==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b2++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답2');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn3(){
                if(a3==0 && b3==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a3++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn3(){
                if(a3==0 && b3==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b3++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답3');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn4(){
                if(a4==0 && b4==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a4++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn4(){
                if(a4==0 && b4==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b4++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답4');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn5(){
                if(a5==0 && b5==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a5++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn5(){
                if(a5==0 && b5==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b5++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답5');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn6(){
                if(a6==0 && b6==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a6++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn6(){
                if(a6==0 && b6==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b6++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답6');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn7(){
                if(a7==0 && b7==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a7++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn7(){
                if(a7==0 && b7==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b7++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답7');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn8(){
                if(a8==0 && b8==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a8++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn8(){
                if(a8==0 && b8==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b8++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답8');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtn9(){
                if(a9==0 && b9==0){
                    Swal.fire({
                        icon:'success',
                        title : '정답입니다!',
                        confirmButtonText: '다음 강의로'
                    });
                    a9++;
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function wrongbtn9(){
                if(a9==0 && b9==0){
                    Swal.fire({
                        icon:'error',
                        title : '오답입니다...',
                        confirmButtonText: '다음 강의로'
                    });
                    b9++;
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답5');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                } else {
                    Swal.fire({
                        icon:'error',
                        title : '이미 문제를 완료했습니다',
                        confirmButtonText: '강의로'
                    });
                }
            }
            function answerbtnresult(){
                var c = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10;
                var d = b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10;
                if(a10==0 && b10==0){
                    a10++;
                    c = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10;
                    d = b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10;
                    if(c + d != 10){
                        Swal.fire({
                            icon:'success',
                            title : '정답입니다!',
                            text : '모든 문제가 완료되지 않았습니다.',
                            confirmButtonText: '돌아가기'
                        });
                    } else {
                        Swal.fire({
                            icon:'success',
                            title : '정답입니다!',
                            text : '정답 : ' + c +'개, 오답 : ' + d + '개',
                            confirmButtonText: '최종 문제로'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $("#staticBackdrop11").modal("show");
                            }
                        });
                    }
                } else{
                    if(c + d != 10){
                        Swal.fire({
                            icon:'error',
                            title : '이미 문제를 완료했습니다.',
                            text : '모든 문제가 완료되지 않았습니다.',
                            confirmButtonText: '돌아가기'
                        });
                    } else {
                        Swal.fire({
                            icon:'success',
                            title : '중간 문제 풀이 완료',
                            text : '정답 : ' + c  +'개, 오답 : ' + d + '개',
                            confirmButtonText: '최종 문제로'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $("#staticBackdrop11").modal("show");
                            }
                        });
                    }
                }
            }    
            function wrongbtnresult(){
                var c = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10;
                var d = b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10;
                if(a10==0 && b10==0){
                    b10++;
                    c = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10;
                    d = b1 + b2 + b3 + b4 + b5 + b6 + b7 + b8 + b9 + b10;
                    if(c + d != 10){
                        Swal.fire({
                            icon:'error',
                            title : '오답입니다...',
                            text : '모든 문제가 완료되지 않았습니다.',
                            confirmButtonText: '돌아가기'
                        });
                    } else {
                        Swal.fire({
                            icon:'error',
                            title : '오답입니다...',
                            text : '정답 : ' + c +'개, 오답 : ' + d + '개',
                            confirmButtonText: '최종 문제로'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $("#staticBackdrop11").modal("show");
                            }
                        });
                    const wronganswer = document.createElement('div');
                    const wrongtext = document.createTextNode('오답10');
                    wronganswer.appendChild(wrongtext);
                    document.getElementsByClassName('wrongtool')[0].appendChild(wronganswer);
                    }
                } else{
                    if(c + d != 10){
                        Swal.fire({
                            icon:'error',
                            title : '이미 문제를 완료했습니다.',
                            text : '모든 문제가 완료되지 않았습니다.',
                            confirmButtonText: '돌아가기'
                        });
                    } else {
                        Swal.fire({
                            icon:'success',
                            title : '중간 문제 풀이 완료',
                            text : '정답 : ' + c  +'개, 오답 : ' + d + '개',
                            confirmButtonText: '최종 문제로'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                $("#staticBackdrop11").modal("show");
                            }
                        });
                    }
                }
            }
            $('.sideindex').click(function(event){
                event.stopPropagation();
                $('.indextool').toggle();
                $('.wrongtool').hide();
                $('.taketool').hide();
            });
            $('.takenotes').click(function(event){
                event.stopPropagation();
                $('.taketool').toggle();
                $('.wrongtool').hide();
                $('.indextool').hide();
            });
            $('.wrongnotes').click(function(event){
                event.stopPropagation();
                $('.wrongtool').toggle();
                $('.indextool').hide();
                $('.taketool').hide();
            });
        </script>
    </body>
</html>