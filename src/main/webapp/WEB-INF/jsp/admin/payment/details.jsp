<%--@elvariable id="payment" type="za.ac.cput.entity.Payment"--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1>Payment</h1>
<h3>View details</h3>
<br>
<p>Payment Id: <span>${payment.Id}</span></p>
<p>Payment: <span><a href="${pageContext.request.contextPath}/admin/${payment.paymentID}">${payment.paymentAmount} ${payment.paymentDate}</a></span></p>
<a href="${pageContext.request.contextPath}/payment/update/${payment.id}">Update</a>
<a href="${pageContext.request.contextPath}/payment/delete/${payment.id}" onclick="return confirm('Are you sure you want to delete payment ${admin.paymentAmount} ${admin.paymentDate}\'?');">Delete</a>