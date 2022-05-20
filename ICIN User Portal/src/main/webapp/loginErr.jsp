<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
 border-color: blue;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color:  #008CBA;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border-radius: 50px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
}

/* Add a hover effect for buttons */
button:hover {
  opacity: 0.8;
}

/* Extra style for the cancel button (red) */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}



/* Add padding to containers */
.container {
  padding: 16px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbtn {
    width: 100%;
  }
  
}
h1 {text-align: center;}
</style>
</head>
<body>
<form action="Login" method="post">

  <div class="container">
  <h1>Welcome to ICIN Banking Portal</h1>
  <h2 style="color:red;">Invalid credientials!!</h2>
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>

    <button type="submit">Login</button>
  </div>
</form>
<br>
<br>
<form action="Register.jsp" method="post">
<h3>New Customer?</h3>
<button type="submit">Register</button>
</form>

</body>
</html>