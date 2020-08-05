<%--
  Created by IntelliJ IDEA.
  User: Hutei Volodymyr
  Date: 8/5/2020
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Save Customer</title>

    <link type="text/css" rel="stylesheet" href="../resources/style.css">

    <link type="text/css" rel="stylesheet" href="../resources/add-customer-style.css">
</head>
<body>

<div id="wrapper">
    <div id="header">
        <h2>CRM - Customer Relationship Manager</h2>

    </div>
</div>

    <div id="container">
        <h3>Save Customer</h3>

        <%--@elvariable id="customer" type="crm"--%>
        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <table>
                <tbody>
                <tr>
                    <td><label>First name:</label></td>
                    <td><form:input path="firstName"></form:input></td>
                </tr>
                <tr>
                    <td><label>Last name:</label></td>
                    <td><form:input path="lastName"></form:input></td>
                </tr>
                <tr>
                    <td><label>email</label></td>
                    <td><form:input path="email"></form:input></td>
                </tr>
                <tr>
                    <td><label></label></td>
                    <td><input type="submit" value="Save" class="save"/></td>
                </tr>
                </tbody>
            </table>

        </form:form>

       <div style="clear: both"></div>
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
            </p>

    </div>

</body>
</html>
