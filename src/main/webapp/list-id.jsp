<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false"
	language="java"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>详情信息</title>
</head>
<body>
	<h1>详情信息</h1>
	<form action="/ssmEdu/hero/update.do" method="post">
		<table border="1px">
			<tr>
				<td>id(只读)</td>
				<td><input type="text" name="id" value="${stu_u.stu_id}"
					readonly="true"></td>
			</tr>
			<tr>
				<td>username</td>
				<td><input type="text" name="name" value="${stu_u.stu_name}"></td>
			</tr>
			<tr>
				<td>userpwrd</td>
				<td><input type="text" name="password"
					value="${stu_u.stu_sex}"></td>
			</tr>
			<tr>
				<td>userroel</td>
				<td><input type="text" name="role" value="${stu_u.stu_class}"></td>
			</tr>
			<tr>
				<td>property</td>
				<td><input type="text" name="property"
					value="11"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="修改"></td>
			</tr>
		</table>
	</form>
</body>
</html>