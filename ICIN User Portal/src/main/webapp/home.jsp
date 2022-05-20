<!doctype html>
<html lang="en">
  <head>
  <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<style>

.bg-image
{
padding: 20px;}
.hero-image {
  background-image: url("https://github.com/Hemachandirant/image/blob/main/Untitled%20Photo.jpg?raw=true"); /* The image used */
  background-color: #cccccc; /* Used if the image is unavailable */
  height: 710px; /* You must set a specified height */
  background-position: center; /* Center the image */
  background-repeat: no-repeat; /* Do not repeat the image */
  background-size: cover; /* Resize the background image to cover the entire container */
}
h1
{
text-align: center;
color: white;
}
</style>
<% String un=(String) session.getAttribute("username");
%>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="about.jsp">User Details</a>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="request.jsp">Cheque Request</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="details.jsp">Deposit  </a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="details.jsp">Withdraw  </a>
        </li>
     
          <li class="nav-item">
          <a class="nav-link active" href="transfer.jsp"  >  Transfer    </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
         <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
         <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
         <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
         <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
         <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" >      </a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp" tabindex="-1" ></a>
          
        </li>	
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp"  ></a>
          
        </li>	
      	
        <li class="nav-item">
            <a class="nav-link active" href="aboutbank.jsp">About</a>
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
</body>