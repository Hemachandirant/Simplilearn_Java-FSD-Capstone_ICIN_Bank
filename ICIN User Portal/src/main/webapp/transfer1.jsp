<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {background-color: #555555;} /* Black */
</style>
<body>
<title>Enter Password</title>

<h1>Enter your Password</h1>
<form >
<label for="fname"><i class="fa fa-user"></i> Password</label>
            <input type="text" id="fname" name="password" placeholder="" required>
</form>
<br>
<br>
<div id="myProgress">
  <div id="myBar"></div>
</div>

<br>
<button class="button button5"onclick="window.location.href='b.php'">Transfer</button> 

<script>
var i = 0;
function move() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar");
    var width = 1;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
      }
    }
  }
}
</script>

</body>
</html>
