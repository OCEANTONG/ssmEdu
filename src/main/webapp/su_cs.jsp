<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" import="java.util.*" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort()
    + path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<base href="<%=basepath%>>">
<title>Insert title here</title>
</head>
<body>
<h1>成功${Users.user_id}</h1>
<input type = "button" value = "跳转" onclick = "window.location.href = '/ssmEdu/users/sel_one.do?user_id=${Users.user_id}'"> 
</body>
</html>