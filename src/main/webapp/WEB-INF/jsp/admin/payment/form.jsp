<%--@elvariable id="payment" type="za.ac.cput.entity.Payment"--%>
<%--@elvariable id="subheading" type="java.lang.String"--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>Payment</h1>
<h3>${subheading}</h3>
<form method="POST">
    <input type="hidden" name="id" value="${empty payment ? payment.id : 1}">



    <label for="m_payment">Payment</label><br>
    <c:choose>
        <c:when test="${not empty payment}">
            <input type="hidden" name="payment" value="${payment.PaymentID}">
            <input type="text" id="m_payment" value="${payment.paymentAmount} ${payment.paymentDate} [${payment.PaymentID}]" disabled="disabled">
        </c:when>
        <c:otherwise>
            <select name="payment" id="m_payment">
                    <%--@elvariable id="payment" type="java.util.List"--%>
                <c:forEach items="${payment}" var="current">
                    <option value="${current}">${current.paymentAmount} ${current.paymentDat} [${current.PaymentID}]</option>
                </c:forEach>
            </select>
        </c:otherwise>
    </c:choose><br>
    <button type="submit">Submit</button>
</form>