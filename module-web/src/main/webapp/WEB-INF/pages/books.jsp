<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css" type="text/css">
    <title>
        Book shells
    </title>
</head>
<body>

<div class="dataFrame largeFrame">
    <h1>
        <p>Book shells</p>
    </h1>

    <spring:form action="search.html" method="get">
        Title:
        <input type="text" id ="txt" name="searchText" >
        <br />
        <br />
        <input type="submit" name="login_btn" value="Search" />
    </spring:form>

    <c:url value="bookList.html" var="bookList_url">
    </c:url>
    <a href="${bookList_url}">Back to book list</a>

    <div>
        <c:set var="pageListHolder" value="${booksList}" scope="session" />
        <table cellspacing="0">
            <thead><tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Description</th>
                <th>ISBN</th>
                <th>Print Year</th>
                <th>Read Already</th>
                <th></th>
                <th></th>
            </tr></thead>
            <tbody>
            <c:forEach var="book" items="${pageListHolder.pageList}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.description}</td>
                    <td>${book.isbn}</td>
                    <td style="text-align:center;">${book.printYear}</td>
                    <td style="text-align:center;">
                        <c:choose>
                            <c:when test="${book.readAlready}">Yes</c:when>
                            <c:otherwise>No
                                <br />
                                <br />
                                <c:url value="/read-book.html" var="read_url">
                                    <c:param name="book_id" value="${book.id}" />
                                </c:url>
                                <a href="${read_url}">Take for reading</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <c:url value="update-book.html" var="update_url">
                            <c:param name="book_id" value="${book.id}" />
                        </c:url>
                        <a href="${update_url}">Update</a>
                    </td>
                    <td>
                        <c:url value="delete-book.html" var="delete_url">
                            <c:param name="book_id" value="${book.id}" />
                        </c:url>
                        <a href="${delete_url}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
    <span style="float:left;">
    <c:choose>
        <c:when test="${pageListHolder.firstPage}">Prev</c:when>
        <c:otherwise><a href="${pageurl}/prev">Prev</a></c:otherwise>
    </c:choose>
    </span>
        <span>
    <c:forEach begin="0" end="${pageListHolder.pageCount-1}" varStatus="loop">
        &nbsp;&nbsp;
        <c:choose>
            <c:when test="${loop.index == pageListHolder.page}">${loop.index+1}</c:when>
            <c:otherwise><a href="${pageurl}/${loop.index}">${loop.index+1}</a></c:otherwise>
        </c:choose>
        &nbsp;&nbsp;
    </c:forEach>
    </span>
        <span>
    <c:choose>
        <c:when test="${pageListHolder.lastPage}">Next</c:when>
        <c:otherwise><a href="${pageurl}/next">Next</a></c:otherwise>
    </c:choose>
    </span>
    </div>

    <br />
    <hr />
    <br />

    <div class="dataFrame shortFrame">
        <h1>
            <p>Save book</p>
        </h1>

        <spring:form action="save-book.html" method="post" modelAttribute="book">
            <spring:hidden path="id" />
            Title:
            <spring:input path="title" size="112" />
            <br />
            <br />
            <c:choose>
                <c:when test="${!empty book.title}">
                    Author:
                    <spring:input path="author" readonly="true" size="70" disabled="true" />
                    <spring:hidden path="author"/>
                    <br />
                    <br />
                </c:when>
                <c:otherwise>
                    Author:
                    <spring:input path="author" size="70" />
                    <br />
                    <br />
                </c:otherwise>
            </c:choose>
            Description:
            <spring:input path="description" size="105" />
            <br />
            <br />
            ISBN:
            <spring:input path="isbn" size="15"/>
            <br />
            <br />
            Print Year:
            <spring:input path="printYear" size="10"/>
            <br />
            <br />
            <input type="submit" name="login_btn" value="Save" />
        </spring:form>
    </div>
</div>
</body>
</html>
