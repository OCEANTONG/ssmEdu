<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="/ssmEdu/img/favicon.png">

    <title>个人信息</title>

    <!-- Bootstrap CSS -->
    <link href="/ssmEdu/css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="/ssmEdu/css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="/ssmEdu/css/elegant-icons-style.css" rel="stylesheet"/>
    <link href="/ssmEdu/css/font-awesome.min.css" rel="stylesheet"/>
    <!-- full calendar css-->
    <link href="/ssmEdu/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet"/>
    <link href="/ssmEdu/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet"/>
    <!-- easy pie chart-->
    <link href="/ssmEdu/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css"
          media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="/ssmEdu/css/owl.carousel.css" type="text/css">
    <link href="/ssmEdu/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="/ssmEdu/css/fullcalendar.css">
    <link href="/ssmEdu/css/widgets.css" rel="stylesheet">
    <link href="/ssmEdu/css/style.css" rel="stylesheet">
    <link href="/ssmEdu/css/style-responsive.css" rel="stylesheet"/>
    <link href="/ssmEdu/css/xcharts.min.css" rel=" stylesheet">
    <link href="/ssmEdu/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>

<body>
<!-- container section start -->
<section id="container" class="">


    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <a href="/ssmEdu/zhuye.jsp" class="logo">教务 <span class="lite">管理系统</span></a>
        <!--logo end-->

        <div class="nav search-row" id="top_menu">
            <!--  search form start -->
            <ul class="nav top-menu">
                <li>
                    <form action="/ssmEdu/users/sel_stu.do" class="navbar-form" method="post">
                        <input class="form-control" placeholder="请输入学生姓名或者班级" type="text" name="stu_name">
                        <input class="btn btn-success" type="submit" value="搜索">
                    </form>
                </li>
            </ul>
            <!--  search form end -->
        </div>

        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="/ssmEdu/img/avatar1_small.jpg">
                            </span>
                        <span class="username">您好，${Users.user_name}老师</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="/ssmEdu/users/profile.do"><i class="icon_profile"></i>个人信息</a>
                        </li>
                        <li class="eborder-top">
                            <a href="/ssmEdu/users/to_exit.do"><i class="icon_profile"></i>退出</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="active">
                    <a class="" href="/ssmEdu/users/list2.do">
                        <i class="icon_house_alt"></i>
                        <!--<span>Dashboard</span>-->
                        <span>查看总学生成绩</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_document_alt"></i>
                        <!--<span>Forms</span>-->
                        <span>查看班级</span>

                    </a>
                    <ul class="sub">
                        <li><a class="" href="/ssmEdu/users/sel_class.do?stu_class=软件一班">软件一班</a></li>
                        <li><a class="" href="/ssmEdu/users/sel_class.do?stu_class=软件二班">软件二班</a></li>
                        <li><a class="" href="/ssmEdu/users/sel_class.do?stu_class=软件三班">软件三班</a></li>
                        <li><a class="" href="/ssmEdu/users/sel_class.do?stu_class=软件四班">软件四班</a></li>
                    </ul>
                </li>
                <li>
                    <a class="" href="/ssmEdu/add_stu.jsp">
                        <i class="icon_document_alt"></i>
                        <!--<span>UI Fitures</span>-->
                        <span>添加学生</span>
                    </a>
                </li>
                <li>
                    <a class="" href="/ssmEdu/add_grade.jsp">
                        <i class="icon_document_alt"></i>
                        <!--<span>Widgets</span>-->
                        <span>添加成绩</span>
                    </a>
                </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
        <section class="wrapper">

            <!-- Form validations -->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            个人信息
                        </header>
                        <div class="panel-body">
                            <div class="form">
                                <form class="form-validate form-horizontal" id="feedback_form" method="post"
                                      action="/ssmEdu/users/update_profile.do">

                                    <div class="form-group ">
                                        <label for="user_id" class="control-label col-lg-2">账号 <span
                                                class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="user_id" type="text" name="user_id"
                                                   disabled value="${Users.user_id}"/>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="user_name" class="control-label col-lg-2">姓名 <span
                                                class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="user_name" type="text" name="user_name"
                                                   required value="${Users.user_name}"/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="password" class="control-label col-lg-2">密码 <span
                                                class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="password" type="password" name="password"
                                                   required/>
                                        </div>
                                    </div>
                                    <div class="form-group ">
                                        <label for="password2" class="control-label col-lg-2">确认密码 <span
                                                class="required">*</span></label>
                                        <div class="col-lg-10">
                                            <input class="form-control " id="password2" type="password" name="password2"
                                                   required/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button class="btn btn-primary" type="submit">更新</button>
                                            <button class="btn btn-default" type="button" onclick="history.go(-1);">取消
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </section>
                </div>
            </div>

            <!-- page end-->

        </section>
    </section>
    <!--main content end-->
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="/ssmEdu/js/jquery.js"></script>
<script src="/ssmEdu/js/jquery-ui-1.10.4.min.js"></script>
<script src="/ssmEdu/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/ssmEdu/js/jquery-ui-1.9.2.custom.min.js"></script>
<!-- bootstrap -->
<script src="/ssmEdu/js/bootstrap.min.js"></script>
<!-- nice scroll -->
<script src="/ssmEdu/js/jquery.scrollTo.min.js"></script>
<script src="/ssmEdu/js/jquery.nicescroll.js" type="text/javascript"></script>
<!-- charts scripts -->
<script src="/ssmEdu/assets/jquery-knob/js/jquery.knob.js"></script>
<script src="/ssmEdu/js/jquery.sparkline.js" type="text/javascript"></script>
<script src="/ssmEdu/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="/ssmEdu/js/owl.carousel.js"></script>
<!-- jQuery full calendar -->
<
<script src="/ssmEdu/js/fullcalendar.min.js"></script> <!-- Full Google Calendar - Calendar -->
<script src="/ssmEdu/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
<!--script for this page only-->
<script src="/ssmEdu/js/calendar-custom.js"></script>
<script src="/ssmEdu/js/jquery.rateit.min.js"></script>
<!-- custom select -->
<script src="/ssmEdu/js/jquery.customSelect.min.js"></script>
<script src="/ssmEdu/assets/chart-master/Chart.js"></script>

<!--custome script for all page-->
<script src="/ssmEdu/js/scripts.js"></script>
<!-- custom script for this page-->
<script src="/ssmEdu/js/sparkline-chart.js"></script>
<script src="/ssmEdu/js/easy-pie-chart.js"></script>
<script src="/ssmEdu/js/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/ssmEdu/js/jquery-jvectormap-world-mill-en.js"></script>
<script src="/ssmEdu/js/xcharts.min.js"></script>
<script src="/ssmEdu/js/jquery.autosize.min.js"></script>
<script src="/ssmEdu/js/jquery.placeholder.min.js"></script>
<script src="/ssmEdu/js/gdp-data.js"></script>
<script src="/ssmEdu/js/morris.min.js"></script>
<script src="/ssmEdu/js/sparklines.js"></script>
<script src="/ssmEdu/js/charts.js"></script>
<script src="/ssmEdu/js/jquery.slimscroll.min.js"></script>
<script>

    //knob
    $(function () {
        $(".knob").knob({
            'draw': function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function () {
        $("#owl-slider").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true

        });
    });

    //custom select box

    $(function () {
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function () {
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function (e, el, code) {
                el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
            }
        });
    });


</script>

</body>
</html>
