<%@tag description="Templates Tag" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE>
<html>
<head>
    <link href="<c:url value="/res/cs/css/main.css"/>" rel="stylesheet">
    <script src="<c:url value="/res/cs/scripts/BookUtil.js"/>"></script>
    <title>Book Manager</title>
</head>
<body>
<div class="content">
    <h1>Book Manager</h1>
    <div class="login-link-container">
        <sec:authorize access="isAnonymous()">
            <p>
                <a href="spring_security_login">Авторизоваться</a>
            </p>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
            <a href="j_spring_security_logout">Выйти</a>
        </sec:authorize>
    </div>

    <jsp:doBody/>
</div>
</body>

</html>