<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Membership</h1>
<table>
    <tr>
        <th>Payment</th>
        <th>paymentAmount</th>
        <th>paymentDate</th>
        <th>View</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <%--@elvariable id="allMemberships" type="java.util.List"--%>
    <c:forEach items="${allPayments}" var="current">
        <tr>
            <td>${current.payment.paymentAmount} ${current.payment.paymentDate}</td>
            <td><a href="${pageContext.request.contextPath}/payment/${current.id}">view</a></td>
            <td><a href="${pageContext.request.contextPath}/payment/update/${current.id}">update</a></td>
            <td><a href="${pageContext.request.contextPath}/payment/delete/${current.id}" onclick="return confirm('Are you sure you want to delete payment ${current.payment.paymentAmount} ${current.payment.paymentDate}\'?');">delete</a></td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/payment/create">Add new</a>