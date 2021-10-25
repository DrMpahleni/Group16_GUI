<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Register</title>
    <link href="../resources/css/form_style.css" rel="stylesheet" type="text/css">


</head>
<body>
<form:form>
    </div>
    <div class="login-form">
        <table>
            <div class="control-group">
                <tr>
                    <th>First Name:</th>
                    <td><form:input type="text" id="firstName" path="firstName" onblur="validateform()"/></td>
                    <form:errors path="firstName" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Last Name:</th>
                    <td><form:input type="text" id="lastName" path="lastName"  onblur="validateform()"/> </td>
                    <form:errors path="lastName" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Age:</th>
                    <td> <form:input type="number" id="age" path="age"  onblur="validateform()"/></td>
                    <form:errors path="age" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Address:</th>
                    <td><form:input type="text" id="address" path="address"  onblur="validateform()"/></td>
                    <form:errors path="address" />
                </tr>
            </div>

            <div class="control-group">
                <tr>
                    <th>Phone No:</th>
                    <td><form:input type="text" id="phoneNo" path="phoneNo"  onblur="validateform()"/></td>
                    <form:errors path="phoneNo" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Status:</th>
                    <td> <form:input type="text" id="status" path="status" onblur="validateform()"/></td>
                    <form:errors path="status" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Email Address:</th>
                    <td><form:input type="text" id="emailAddress" path="emailAddress"  onblur="validateform()"/><td>
                        <form:errors path="emailAddress" />
                </tr>
            </div>
            <div class="control-group">
                <tr>
                    <th>Password:</th>
                    <td><form:input type="text" id="password" path="password" onblur="validateform()"/> <td>
                        <form:errors path="password" />
                </tr>
            </div>

            <tr>
                <td colspan="2" align="center"><input type="submit" class="btn btn-primary btn-large btn-block" value="Save" /> </br>
                    <button type="reset" class="btn btn-primary btn-large btn-block" value="Reset">Reset</button></td>
            </tr>
        </table>
    </div>
    </div>
    </div>
</form:form>

</body>
</html>