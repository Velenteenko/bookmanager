<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<t:templates>
        <c:if test="${!empty books}">
        <table class="book-list-table">
            <tr>
                <th>Название книги</th>
                <th>Жанр книги</th>
                <sec:authorize access="hasRole('admin')">
                    <th>Удаление</th>
                </sec:authorize>
            </tr>
            <c:forEach items = "${books}" var = "book">
                <tr>
                    <td>${book.name}</td>
                    <td>${book.genre}</td>
                    <sec:authorize access="hasRole('admin')">
                        <td><a href="javascript:BookUtil.deleteBook(${book.iD})">Удалить книгу</a></td>
                    </sec:authorize>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <sec:authorize access="isAuthenticated()">
        <a href="addBook">Добавить новую книгу</a>
    </sec:authorize>
</t:templates>
