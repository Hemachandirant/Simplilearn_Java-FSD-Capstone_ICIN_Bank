<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #04AA6D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
<title>Transfer</title>
<body>

<h2 >Enter Account Details</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="Transfer" method="post">
      
        <div class="row">
          <div class="col-50">
            <h3>Your Details</h3>
            <label for="fname"><i class="fa fa-user"></i> User Name</label>
            <input type="text" id="fname" name="firstname" placeholder="John M. Doe" required>
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com" required>

            <label for="city"><i class="fa fa-institution"></i> Branch</label>
            <input type="text" id="city" name="city" placeholder="New York" required>

            
          </div>

          <div class="col-50">
        
           <h3>Account Details</h3>
            <label for="cname">From Account</label>
            <input type="text" id="cname" name="cardname" placeholder="" required>
            <label for="ccnum">To Account </label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="" required>
            <label for="expmonth">Amount</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="Upto &#8377 100000" required>
            <div class="row">
              
            </div>
          </div>
          
        </div>
     
        <input type="submit" value="Transfer" class="btn" onclick="move()">
      </form>
    </div>
  </div>

</div>

</body>
</html>
