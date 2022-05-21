<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cheque Requests</title>
</head>
<style>
.button {
background-color: #4CAF50; /* Green */
  border: none;
  color: White;
  padding: 8px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin: 4px 2px;
  cursor: pointer;
}
.center {
  display: flex;
  justify-content: center;
  align-items: center;
 
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

.button1 {background-color: #e7e7e7; color: black;}
.button2 {background-color: #f44336;} 

.button3 {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {background-color: #555555;}
</style>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/bank"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM request;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="10">
            <caption><h2>Cheque Book Request Details</h2></caption>
            <tr>
                <th>User Name</th>
                <th>Savings Account</th>
                <th>Description</th>
                <th>Cheque Needed</th>
                <th>Primary Account</th>
                <th>Mobile</th>
                <th>Approve Request</th>
            </tr>
            <c:forEach var="request" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${request.user_name}" /></td>
                    <td><c:out value="${request.saving_account}" /></td>
                    <td><c:out value="${request.description}" /></td>
                    <td><c:out value="${request.check_needed}" /></td>
                    <td><c:out value="${request.primary_account}" /></td>
                    <td><c:out value="${request.r1}" /></td>
                    <td> <button type="button" class="button " id="btn"onclick="';">Approve</button><button type="button" id="btn1"class="button button2 ";">Deny</button> </td>
                    
                    
                </tr>
            </c:forEach>
        </table>
        

    <script src="index.js"></script>
<script>
const btn = document.getElementById('btn');

//✅ Change button text on click
btn.addEventListener('click', function handleClick() {
btn.textContent = 'Approved';
});
</script>
<script>
const btn = document.getElementById('btn1');

//✅ Change button text on click
btn.addEventListener('click', function handleClick() {
btn.textContent = 'Denied';
});
</script>
    </div>
    
</body>
<br>
<br>
<br>
<br>
<div class="center ">
 <button onclick="window.print()" class="button3 button5">Print Request Details</button>
</div>
</html>