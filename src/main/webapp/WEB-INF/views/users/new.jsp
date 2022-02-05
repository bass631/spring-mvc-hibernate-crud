<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<head>
    <title>New user</title>
</head>
<body>
<h2>New Users</h2>
<br>

<form:form action="saveUser" modelAttribute="user">

    <form:hidden path="id"/>

    Name <form:input path="firstName"/>
    <br>
    Surname <form:input path="lastName"/>
    <br>
    Age <form:input path="age"/>
    <br>
    Email <form:input path="email"/>
    <br>

    <input type="submit" value="OK">

</form:form>

</body>
</html>