<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
    <title>Users</title>
</head>
<body>
<h2>Users</h2>
<br>

<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Age</th>
        <th>Email</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="user" items="${users}">

        <c:url var="updateButton" value="/updateInfo">
            <c:param name="userId" value="${user.id}"/>
        </c:url>

        <tr>
            <td>${user.firstName}</td>
            <td>${user.lastName}</td>
            <td>${user.age}</td>
            <td>${user.email}</td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '${updateButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>
<br>

<input type="submit" value="Add"
       onclick="window.location.href = 'new'">

</body>
</html>