<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>Fullscreen Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/supersized.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<body>

<div class="page-container">
    <h1>教务管理系统 - 学生注册</h1>
    <form action="/ssmEdu/student/register.do" method="post">
        <input type="text" name="user_name" class="username" placeholder="Stu No.">
        <input type="text" name="stu_name" class="stu_name" placeholder="Stu Name ">
        <input type="text" name="stu_sex" class="stu_sex" placeholder="Stu Sex">
        <input type="text" name="stu_class" class="stu_class" placeholder="Stu Class">
        <input type="password" name="password" class="password" placeholder="Password">
        <button type="submit">Sign me up</button>
        <button type="reset" class="register-button">Reset</button>
    </form>

</div>


<!-- Javascript -->
<script src="assets/js/jquery-1.8.2.min.js"></script>
<script src="assets/js/supersized.3.2.7.min.js"></script>
<script src="assets/js/supersized-init.js"></script>

</body>

</html>

