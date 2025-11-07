<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.docedu.web.user.vo.ReadingCastleVO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    <style>
        @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
        * {
            margin: 0;
            padding: 0;
            font-family: 'Noto Sans KR', sans-serif;
            box-sizing: border-box;
        }
        .imgarea {
            width: 100%;
            position: relative;
        }
        img {
            width: 100%;
            vertical-align: middle;
        }
        .title {
            position: absolute;
            top: 21.5%;
            left: 83%;
            font-size: 2.3em;
            font-weight: 600;
            color: #00665a;
        }
        .category {
            position: absolute;
            top: 10.7%;
            left: 40%;
            font-size: 1.5em;
            font-style: italic;
        }
        .bodyarea {
            position: absolute;
            top: 26.5%;
            left: 4.8%;
            width: 56.8%;
            line-height: 1.8em;
        }
        .head {
            font-size: 0.8em;
            font-weight: bold;
            padding-left: 3%;
            line-height: 1.8em;
        }
        .body {
            font-size: 0.9em;
            padding: 1% 3% 1% 3%;
            text-align: justify;
            text-indent: 1em;
            line-height: 1.8em;
        }
        .choice {
            font-size: 0.9em;
            line-height: 1.5em;
            padding-left: 3%;
            line-height: 1.8em;
        }
        .words {
            color: transparent;
            position: absolute;
        }
        .wordarea {
            position: absolute;
            top: 26%;
            left: 5%;
            width: 25%;
            height: 30%;
        }
        .wordarea1 {
            width: 50%;
            float: left;
            height: 100%;
            font-size: 0.6em;
            overflow: hidden;
        }
        .wordarea2 {
            width: 50%;
            float: left;
            height: 100%;
            font-size: 0.6em;
            overflow: hidden;
        }
        .transarea {
            position: absolute;
            top: 26%;
            left: 34%;
            width: 61%;
            height: 30%;
            font-size: 0.9em;
        }
        .trans1 {
            height: 45%;
        }
        .trans2 {
            height: 45%;
        }
        .test_wordarea {
            position: absolute;
            top: 28%;
            left: 5%;
            width: 30%;
            height: 65%;
            font-size: 0.85em;
        }
        .test_word1 {
            width: 50%;
            height: 100%;
            line-height: 2.5em;
            overflow: hidden;
        }
        .test_transarea {
            position: absolute;
            top: 28%;
            left: 37%;
            width: 57%;
            height: 65%;
            font-size: 0.9em;
        }
        .test_trans1 {
            height: 45%;
            padding-left: 3%;
            padding-right: 2%;
        }
        .test_trans2 {
            height: 45%;
            padding-left: 3%;
            padding-right: 2%;
        }
        .trans_title {
            font-size: 0.9em;
        }
        </style>
</head>
<body>
    <div class="imgarea">
        <div class="mainimg">
            <img class="mainimg1" alt="img1" src="/resources/img/user/gc_00.png">
        </div>
            <div class="title">
                ${address}
            </div>
    </div>
    <c:forEach var="list" items="${list}" varStatus="status">
        <div class="imgarea">
            <div class="mainimg">
                <img class="mainimg1" alt="img1" src="/resources/img/user/gc_01.png">
            </div>
            <div class="category">
                ( ${list.address} : ${list.name} )
            </div>
            <div class="bodyarea">
                <div class="head">
                    <c:out value="${list.head}" />
                </div>
                <div class="body_img">
                    <c:out value="${list.body_img}" />
                </div>
                <div class="body">
                    ${list.body}
                </div>
                <div class="choice_head">
                    <c:out value="${list.choice_head}" />
                </div>
                <div class="choice">
                    ${list.choice}
                </div>
            </div>
        </div>
        <div class="imgarea">
            <div class="mainimg">
                <img class="mainimg2" src="/resources/img/user/gc_02.png">
            </div>
            <div class="category">
                ( ${list.address} : ${list.name} )
            </div>
            <div class="words">
                <c:out value="${list.word}" />
            </div>
            <div class="wordarea">
                <div class="wordarea1">
                </div>
                <div class="wordarea2">
                </div>
            </div>
            <div class="transarea">
                <div class="trans1">
                <span class="trans_title">한글1 > </span><c:out value="${list.kor_1}" /><br>
                <span class="trans_title">영문1 > </span><c:out value="${list.eng_1}" /><br><br>
                </div>
                <div class="trans2">
                <span class="trans_title">한글2 > </span><c:out value="${list.kor_2}" /><br>
                <span class="trans_title">영문2 > </span><c:out value="${list.eng_2}" />
                </div>
            </div>
        </div>
        <div class="imgarea">
            <div class="mainimg">
                <img class="mainimg3" alt="img3" src="/resources/img/user/gc_03.png">
            </div>
            <div class="category">
                ( ${list.address} : ${list.name} )
            </div>
            <div class="test_wordarea">
                <div class="test_word1">
                </div>
                <div class="test_word2">
                </div>

            </div>
            <div class="test_transarea">
                <div class="test_trans1">
                    <span class="trans_title">한글1 > </span><c:out value="${list.kor_1}" /><br>
                    <br><span class="trans_title">영문1 ></span>
                </div>
                <div class="test_trans2">
                    <span class="trans_title">한글2 > </span><c:out value="${list.kor_2}" /><br>
                    <br><span class="trans_title">영문2 ></span>
                </div>
            </div>
        </div>
    </c:forEach>
    <div class="imgarea">
        <div class="mainimg">
            <img class="mainimg1" alt="img1" src="/resources/img/user/gc_05.png">
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
    <script>
        let words = "";
        <c:forEach var="list" items="${list}" varStatus="status">
            words${status.count} = "<c:out value="${list.word}" />"
            let arr${status.count} = words${status.count}.split("/");
            let size${status.count} = arr${status.count}.length;
            let rowSize${status.count} = Math.ceil (size${status.count} / 2);
            let testSize${status.count} = size${status.count} / 4;
            // console.log(arr${status.count});
            // console.log(size${status.count});
            // console.log(rowSize${status.count});
            console.log(testSize${status.count});

            let wordarea${status.count} = document.getElementsByClassName("wordarea")[${status.count} - 1];
            // console.log(wordarea${status.count});

            for (i = 0; i < rowSize${status.count}; i++) {
                if (arr${status.count}[i * 2] != undefined) {
                document.getElementsByClassName("wordarea1")[${status.count} - 1].innerHTML += "□ ";
                document.getElementsByClassName("wordarea1")[${status.count} - 1].innerHTML += arr${status.count}[i * 2];
                document.getElementsByClassName("wordarea1")[${status.count} - 1].innerHTML += "<br>";
                }
                if (arr${status.count}[i * 2 + 1] != undefined) {
                document.getElementsByClassName("wordarea2")[${status.count} - 1].innerHTML += arr${status.count}[i * 2 + 1];
                document.getElementsByClassName("wordarea2")[${status.count} - 1].innerHTML += "<br>";
                }

                // console.log("영 : " + arr${status.count}[i * 2]);
                // console.log("한 : " + arr${status.count}[i * 2 + 1]);
            }

            for (j = 0; j < rowSize${status.count}; j++) {
                if (arr${status.count}[j * 2] != undefined) {
                document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += "□ ";
                document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += arr${status.count}[j * 2];
                document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += "<br>";
                }
                // if (arr${status.count}[i * 2 + 1] != undefined) {
                // document.getElementsByClassName("wordarea2")[${status.count} - 1].innerHTML += arr${status.count}[i * 2 + 1];
                // document.getElementsByClassName("wordarea2")[${status.count} - 1].innerHTML += "<br>";
                // }

                // console.log("영 : " + arr${status.count}[i * 2]);
                // console.log("한 : " + arr${status.count}[i * 2 + 1]);
            }

            // for (j = 0; j < testSize${status.count}; j++) {
            //     if (arr${status.count}[j * 4 + 1] != undefined) {
            //     document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += arr${status.count}[j * 4 + 1];
            //     document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += "<br><br>";
            //     }
                
            //     if (arr${status.count}[j * 4 + 4] != undefined) {
            //     document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += arr${status.count}[j * 4 + 4];
            //     document.getElementsByClassName("test_word1")[${status.count} - 1].innerHTML += "<br><br>";
            //     }

            //     console.log(arr${status.count}[j]);
            //     console.log("영 : " + arr${status.count}[j * 4]);
            //     console.log("한 : " + arr${status.count}[j * 4 + 4]);
            // }
        </c:forEach>
    </script>
</body>
</html>
