<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account Details</title>
</head>
<style>
.button {
  border: none;
  color: White;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 8px;
  margin: 4px 2px;
  cursor: pointer;
}
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #D6EEEE;
}

.button1 {background-color: #4CAF50;} /* Green */
.button2 {background-color: #008CBA;} /* Blue */
</style>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/bank"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM customer1;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="10">
            <caption><h2>List of Bank accounts and Details</h2></caption>
            <tr>
                <th>Registration No</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>User Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Primary Account</th>
                <th>Savings Account</th>
                <th>Password</th>
                <th>Block Account</th>
            </tr>
            <c:forEach var="customer1" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${customer1.RegNo}" /></td>
                    <td><c:out value="${customer1.first_name}" /></td>
                    <td><c:out value="${customer1.last_name}" /></td>
                    <td><c:out value="${customer1.user_name}" /></td>
                    <td><c:out value="${customer1.email}" /></td>
                    <td><c:out value="${customer1.mobile}" /></td>
                    <td><c:out value="${customer1.primary_account}" /></td>
                    <td><c:out value="${customer1.savings_account}" /></td>
                    <td><c:out value="${customer1.pass}" /></td>
                    <td> <button type="button" class="button button2"onclick="location.href = 'block.jsp';">Block</button> </td>
                    
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>