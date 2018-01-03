<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" import="java.util.*" language="java" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort()
    + path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basepath%>>">
    <title>用户列表</title>
</head>
<body>
    <table align="center" bgcolor="pink" border="1px">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>password</th>
            <th>role</th>
            <th>properety</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${heroList}" var="l">
            <tr>
                <td>${l.id}</td>
                <td>${l.name}</td>
                <td>${l.password}</td>
                <td>${l.role}</td>
                <td>${l.property}</td>
                <td>
                    <a href="/ssmEdu/hero/id.do?id=${l.id}">修改</a>
                    <a href="/ssmEdu/hero/delete.do?id=${l.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>