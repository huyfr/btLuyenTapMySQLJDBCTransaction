<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24/05/2020
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List All Users</title>
</head>
<body>
<form method="post">
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Email</td>
            <td>Country</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <a href="/users?action=create">Add new user</a><br/>
        <a href="/users?action=search">Search an user</a><br/>
        <c:forEach items="${listUsers}" var="user">
            <tr>
                <td>${user.getId()}</td>
                <td>${user.getName()}</td>
                <td>${user.getEmail()}</td>
                <td>${user.getCountry()}</td>
                <td><a href="/users?action=edit&id=${user.getId()}">Edit</a></td>
                <td><a href="/users?action=delete&id=${user.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>
