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

    <!-- 地图 -->
    <style type="text/css">
        html,body{margin:0;padding:0;}
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word;float: left}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>



    <title>教务管理系统-首页</title>

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
        <a href="/ssmEdu/zhuye_student.jsp" class="logo">教务 <span class="lite">管理系统</span></a>
        <!--logo end-->


        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="/ssmEdu/img/avatar1_small.jpg">
                            </span>
                        <span class="username">您好，${Student.stu_name}同学</span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="/ssmEdu/student/profile.do"><i class="icon_profile"></i>个人信息</a>
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
                    <a class="" href="/ssmEdu/student/query.do">
                        <i class="icon_house_alt"></i>
                        <!--<span>Dashboard</span>-->
                        <span>查看个人成绩</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                </li>
                <li class="active">
                    <a class="" href="/ssmEdu/ditu.jsp">
                        <i class="icon_house_alt"></i>
                        <!--<span>Dashboard</span>-->
                        <span>查看学校地址</span>
                        <span class="menu-arrow arrow_carrot-right"></span>

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

            <!--百度地图容器-->
            <div style="width:1200px;height:550px;border:#ccc solid 1px;" id="dituContent"></div>
</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(120.434913,36.074318);//定义一个中心点坐标
        map.centerAndZoom(point,16);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }

    //标注点数组
    var markerArr = [{title:"青岛大学",content:"我的备注",point:"120.430763|36.075251",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
    ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor:"#808080",
                color:"#333",
                cursor:"pointer"
            });

            (function(){
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click",function(){
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open",function(){
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close",function(){
                    _marker.getLabel().show();
                })
                label.addEventListener("click",function(){
                    _marker.openInfoWindow(_iw);
                })
                if(!!json.isOpen){
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }

    initMap();//创建和初始化地图
</script>
            <div style="width: 1200px">
                <iframe frameborder=0 width=1200px height=1200px marginheight=0 marginwidth=0 scrolling=no src=https://baike.baidu.com/item/%E9%9D%92%E5%B2%9B%E5%A4%A7%E5%AD%A6/232405?fr=aladdin></iframe>
            </div>



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
