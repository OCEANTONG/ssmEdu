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
            <th>id</th>
            <th>name</th>
            <th>password</th>
        </tr>
        <c:forEach items="${usersList}" var="l">
            <tr>
                <td>${l.stu_id}</td>
                <td>${l.stu_name}</td>
                <td>${l.stu_sex}</td>
                <td>${l.stu_class}</td>
                <td>${l.cour_name}</td>
                <td>${l.grades}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>