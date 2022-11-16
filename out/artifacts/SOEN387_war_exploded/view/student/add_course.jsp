<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/15/2022
  Time: 3:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="student_header.jsp" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container theme-showcase" role="main">
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron" style="padding: 50px 50px 250px 50px;">
        <h3>Student Home Page</h3>

        <c:if test="${requestScope.success_msg != null}">
            <c:out value="${requestScope.success_msg}" escapeXml="false"/>
        </c:if>

        <c:if test="${requestScope.error_msg != null}">
            <c:out value="${requestScope.error_msg}" escapeXml="false"/>
        </c:if>

        <div class="form-row">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th class="text-center">Code</th>
                    <th class="text-center">Title</th>
                    <th class="text-center">Semester</th>
                </tr>
                </thead>
                <tbody>
                <jsp:useBean id="available_course" scope="request" type="java.util.List"/>
                <c:forEach items="${available_course}" var="course">
                    <tr>
                        <td class="text-center">${course.code}</td>
                        <td class="text-center">${course.title}</td>
                        <td class="text-center">${course.semester}</td>
                        <td class="text-center"><a href="${pageContext.request.contextPath}/add_course?course_id=${course.id}" class="btn btn-primary btn-sm">Add</a></td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>
</div>
</body>
</html>
