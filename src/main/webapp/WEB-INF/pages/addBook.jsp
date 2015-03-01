<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<t:templates>
    <form:form method="post" action="addBook" commandName="addbook">
        <table>
            <tr>
                <td>
                    <form:label path="name">
                        Название книги
                    </form:label></td>
                <td>
                    <form:input path="name"/>
                </td>
                <td><form:errors path="name" cssClass="error"></form:errors></td>
            </tr>
            <tr>
                <td>
                    <form:label path="genre">Жанр книги</form:label>
                </td>
                <td>
                    <form:input path="genre"/>
                </td>
                <td><form:errors path="genre" cssClass="error"></form:errors></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Добавить книгу"/>
                </td>
            </tr>
        </table>
    </form:form>
</t:templates>

<%--<html>--%>
<%--<head>--%>
    <%--<title>Добавление книги</title>--%>
<%--</head>--%>
<%--<body>--%>
    <%--<form:form method="post" action="addBook" commandName="addbook">--%>
        <%--<table>--%>
          <%--<tr>--%>
              <%--<td>--%>
              <%--<form:label path="name">--%>
                  <%--Название книги--%>
              <%--</form:label></td>--%>
              <%--<td>--%>
                  <%--<form:input path="name"/>--%>
              <%--</td>--%>
              <%--<td><form:errors path="name"></form:errors></td>--%>
          <%--</tr>--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="genre">Жанр книги</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="genre"/>--%>
                <%--</td>--%>
                <%--<td><form:errors path="genre"></form:errors></td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td colspan="2">--%>
                    <%--<input type="submit" value="Добавить книгу"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
    <%--</form:form>--%>
<%--</body>--%>
<%--</html>--%>
