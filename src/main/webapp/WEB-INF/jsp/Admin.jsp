<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin</title>
    <link href="../resources/css/table_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>${admin.fisrtName} ${admin.lastName} Information</h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>fisrtName</th>
            <th>LastName</th>
            <th>phoneNo</th
            <th>emailAdrdress</th>

        </tr>

        </thead>

        <tbody>
        <tr>
            <td>${Admin.ID}</td>
            <td>${Admin.fisrtName}</td>
            <td>${Admin.LastName}</td>
            <td>${Admin.phoneNo}</td>
            <td>${Admin.emailAdrdress}</td>


            <td>
                <a href="/update=<c:out value='${Admin.equipmentID}' />">Update</a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/delete/{id}=<c:out value='${Admin.equipmentID}' />">Delete</a>
            </td>
        </tr>
        </tbody>
    </table>
</div>

</body>
</html>