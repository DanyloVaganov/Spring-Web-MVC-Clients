<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Client List</title>
    <%@ include file="./base.jsp"%>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .panel {
            width: 800px;
        }

        .table {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="panel panel-info">
    <div class="panel-body">
        <h2 class="text-center">Client List</h2>
        <hr />
        <div class="text-center">
            <input type="button" value="Add Client"
                   onclick="window.location.href='showForm'; return false;"
                   class="btn btn-primary" />
        </div>
        <br/><br/>
        <table class="table table-striped table-bordered">
            <tr>
                <th>First name</th>
                <th>Last name</th>
                <th>Phone</th>
                <th>Action</th>
            </tr>

            <!-- loop to get clients -->
            <c:forEach var="tempClient" items="${clients}">

                <!-- make an "update" link with client id -->
                <c:url var="updateLink" value="/clients/updateForm">
                    <c:param name="clientId" value="${tempClient.id}" />
                </c:url>

                <!-- make a "delete" link with client id -->
                <c:url var="deleteLink" value="/clients/delete">
                    <c:param name="clientId" value="${tempClient.id}" />
                </c:url>
                <tr>
                    <td>${tempClient.firstName}</td>
                    <td>${tempClient.lastName}</td>
                    <td>${tempClient.phone}</td>
                    <td>
                        <!-- display the update link -->
                        <a class="btn btn-warning" href="${updateLink}">Update</a>&nbsp;&nbsp;
                        <a class="btn btn-danger" href="${deleteLink}"
                           onclick="return confirm('Are you sure to delete?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
