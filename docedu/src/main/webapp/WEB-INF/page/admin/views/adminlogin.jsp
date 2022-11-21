<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/css/admin/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/admin/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="text-center">
        <h1 class="h4 text-gray-900 mb-4">관리자 로그인입니다.</h1>
    </div>
    <form class="user" name="form1" method="post">
        <div class="form-group">
            <input type="text" class="form-control form-control-user"
                name="admin_id" id="admin_id"
                placeholder="아이디를 입력해주세요.">
        </div>
        <div class="form-group">
            <input type="password" class="form-control form-control-user"
                name="admin_password" id="admin_password" placeholder="비밀번호를 입력해주세요.">
        </div>
        <div class="form-group">
            <div class="custom-control custom-checkbox small">
                <input type="checkbox" class="custom-control-input" id="customCheck">
                <label class="custom-control-label" for="customCheck">Remember
                    Me</label>
            </div>
        </div>
        <button type="button" class="btn btn-primary btn-user btn-block" id="btnLogin">
            Login
        </button>
    </form>
    <hr>
    <div class="text-center">
        <a class="small" href="#">비밀번호를 잊어버리셨나요?</a>
    </div>
    <div class="text-center">
        <a class="small" href="${path}/adminsignin.mdo">회원가입하기</a>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/js/admin/jquery.min.js"></script>
    <script src="/resources/js/admin/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/js/admin/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/admin/sb-admin-2.min.js"></script>
	<script>
		$(document).ready(function(){
			$("#btnLogin").click(function(){
				var admin_id = $("#admin_id").val();
				var admin_password = $("#admin_password").val();
				if(admin_id == ""){
					alert("아이디를 입력해주세요.");
					$("#admin_id").focus();
					return;
				}
				if(admin_password == ""){
					alert("비밀번호를 입력해주세요.");
					$("#admin_password").focus();
					return;
				}
				document.form1.action="/adminloginCheck.mdo";
				document.form1.submit();
			});
		});
	</script>
</body>

</html>