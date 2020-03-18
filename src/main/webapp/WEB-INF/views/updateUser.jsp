<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改学生信息</title>
</head>
<body>
<h1>修改用户信息</h1>
<form action="/user/updateUser" method="post" name="userForm">
    <input value="${user.id}" name="id" type="hidden"/>
    name:<input type="text" name="name" value="${user.name}"><br>
    sex:<input type="text" name="sex" value="${user.sex}"><br>
    age:<input type="text" name="age" value="${user.age}"><br>
    <input type="submit" value="确认修改"> </input>
</form>
</body>
</html>

