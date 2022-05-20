
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cheque Request</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>

h1
{
text-align: center;
color: white;
}
.abc{
border-left: 6px solid #5F9EA0;
  padding:20px;
  background-color: lightgrey;
  }
  input[type=button], input[type=submit], input[type=reset] {
  background-color: #6495ED;
  border: none;
  color: white;
  padding: 12px 20px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
  <a class="navbar-brand" href="home.jsp">Home</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        
        <li class="nav-item">
          <a class="nav-link active" href="about.jsp">User Details</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="details.jsp">User Account</a>
        </li>
       
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >Logout</a>
        </li>
      </ul>
    
    </div>
  </div>
</nav>
<div
  class="hero-image"
  
>

</div>
<div class="abc">
<form action="request" method="get">
<h2>For which account you want to send cheque book request</h2>
<br>
<input type="radio" id="savings" name="savings" value="savings">
 <label for="savings">Savings</label><br>
 <input type="radio" id="primary" name="savings" value="primary">
 <label for="primary">primary</label><br><br>
Enter Description:<textarea id="w3review" name="nik" rows="4" cols="50"></textarea>

<br>
<input type="submit" value="Request">
</form>
</div>
</body>
</html>