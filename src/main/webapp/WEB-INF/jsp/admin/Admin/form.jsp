<%--@elvariable id="admin" type="za.ac.cput.entity.admin"--%>
<%--@elvariable id="subheading" type="java.lang.String"--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>Admin</h1>
<h3>${subheading}</h3>
<form method="POST">
    <input type="hidden" name="id" value="${empty admin ? admin.id : 1}">



    <label for="m_admin">admin</label><br>
    <c:choose>
        <c:when test="${not empty admin}">
            <input type="hidden" name="admin" value="${admin.ID}">
            <input type="text" id="m_admin" value="${admin.fisrtName} ${admin.lastName} [${admin.ID}]" disabled="disabled">
        </c:when>
        <c:otherwise>
            <select name="admin" id="m_admin">
                    <%--@elvariable id="admin" type="java.util.List"--%>
                <c:forEach items="${admin}" var="current">
                    <option value="${current}">${current.fisrtName} ${current.lastName} [${current.ID}]</option>
                </c:forEach>
            </select>
        </c:otherwise>
    </c:choose><br>
    <button type="submit">Submit</button>
</form>