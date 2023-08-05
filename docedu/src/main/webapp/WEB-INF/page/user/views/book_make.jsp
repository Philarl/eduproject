<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교재 편집</title>
<script src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<style>
  @media print {
    .button {display: none;}
  }
</style>
</head>
<body>
<!-- 첫 페이지 : 소개문, 머릿말 등등 -->
<button class="button" name="btn_print">인쇄</button>
<button class="button" id="ch01">챕터01 메모리 코스</button>
<button class="button" id="ch02">챕터02 서술 코스</button>
<button class="button" id="ch03">챕터03 영작 코스</button>
    <label>페이지 선택</label><br>
    <select name="select_chapter" id="select_chapter">
      <option>----- 선택하세요 -----</option>
      <option value="ch01">챕터01 메모리 코스</option>
      <option value="ch02">챕터02 서술 코스</option>
      <option value="ch03">챕터03 영작 코스</option>
    </select>
<div style="page-break-before:always;" >
</div>
<!-- 메인 페이지 시작 -->
<div id="main">
test
</div>
<button class="button" name="btn_print">인쇄</button>
</body>

<script>
let main = document.getElementById("main");
let ch01 = "<div>챕터01 이미지 틀</div>";
let ch02 = "<div>챕터02 이미지 틀</div>";
let ch03 = "<div>챕터03 이미지 틀</div>";
let ch01_qno = 0;
let ch02_qno = 0;
let ch03_qno = 0;

  $("[name='btn_print']").on("click", function() {
    // console.log("print");
    window.print();
  });

  $("[name='select_chapter']").change(function() {
    let option = this.value;

    console.log(option + " 선택");
    if(option == "ch01") {
      console.log("test");
      ch01_qno = ch01_qno + 1;
      console.log(ch01_qno);
      main.append(ch01);
    }

    if(option == "ch02") {
      console.log("test");
      ch02_qno = ch02_qno + 1;
      console.log(ch02_qno);
      main.append(ch02);
    }

    if(option == "ch03") {
      console.log("test");
      ch03_qno = ch03_qno + 1;
      console.log(ch03_qno);
      main.append(ch03);
    }
    
  });
</script>
</html>