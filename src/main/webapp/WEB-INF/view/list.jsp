<%--
  Created by IntelliJ IDEA.
  User: Hutei Volodymyr
  Date: 8/5/2020
  Time: 1:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="cc" %>
<%@taglib prefix="ccc" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="customerController" class="crm.controllers.CustomerController" scope="session"/>
<html>
<head>
    <title>list</title>

    <link type="text/css" rel="stylesheet" href="../resources/style.css">
</head>
<body>

    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>

        </div>

    </div>
    <div id="container">
        <div id="content">

            <input type="button" value="Add Customer"
            onclick="window.location.href='showFormForAdd'; return false" class="add-button">

            <table>
                <tr>
                    <th>first name</th>
                    <th>last name</th>
                    <th>email</th>
                    <th>Action</th>
                </tr>
             <c:forEach var="tempCustomer" items="${customers}">
                 <c:url var="updateLink" value="/customer/showFormForUpdate"></c:url>

                 <tr>
                     <td>${tempCustomer.firstName}</td>
                     <td>${tempCustomer.lastName}</td>
                     <td>${tempCustomer.email}</td>
                 </tr>
             </c:forEach>
            </table>

        </div>
    </div>



</body>
</html>
