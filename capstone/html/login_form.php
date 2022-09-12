<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Login Form</title>
</head>
<body>
    
    <div class="container-fluid" id="topheader1" style="height:20%;">
   
<header id="cabezera">
  <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
     <div id='topHeader'>
      <div id="CLeft">
        <ul>
        <li><a href="#">Call us</a></li>
        <li><a href="#">Email us</a></li>
        <li><a href="#">Australia | English</a></li> 
        </ul>   
    </div>
     <div id="cRight" style="width: 100px;"> 
        <ul>
            <li><a href="login.html">Login in</a></li>
         </ul>
    </div>
 </div>
    <div class="container-fluid">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="index.html">Index</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="education.html">Education</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="experience.html">Experience</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="projects.html">Projects</a>
        </li>
      </ul>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
</header>


  
</div>
<!--Form sign in-->

<div class="container" style="width: 30%;height: 45%;">
<?php 
          
        ?>
    <form action="loginpage.php" method="post">
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" class="form-control" placeholder="Username">
                
            </div>    
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter password">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" name="login" type="submit">Submit</button>
            </div>
            <p>Don't have an account? <a href="register.php">Sign up now</a>.</p>
        </form>

  </div>
  <!-- footer -->
  <footer class="pt-4 my-md-5 pt-md-5 border-top">
        <div class="row">
          <div class="col-6 col-md">
            <h5 class="text-white">Services</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-white" href="#">Vehicles</a></li>
              <li><a class="text-white" href="#">Locations</a></li>
              <li><a class="text-white" href="#">Team feature</a></li>
              <li><a class="text-white" href="#">Rent Cars</a></li>
              <li><a class="text-white" href="#">Rent Vans</a></li>
              <li><a class="text-white" href="#">faq</a></li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5 class="text-white">Our company</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-white" href="#">Resource</a></li>
              <li><a class="text-white" href="#">Resource name</a></li>
              <li><a class="text-white" href="#">Another resource</a></li>
              <li><a class="text-white" href="#">Final resource</a></li>
            </ul>
          </div>
          <div class="col-6 col-md">
            <h5 class="text-white">About</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-white" href="#">Team</a></li>
              <li><a class="text-white" href="#">Locations</a></li>
              <li><a class="text-white" href="#">Privacy</a></li>
              <li><a class="text-white" href="#">Terms</a></li>
            </ul>
          </div>
          <div class="col-12 col-md">
            <img class="mb-2" src="../../assets/brand/bootstrap-solid.svg" alt="" width="24" height="24">
            <small class="d-block mb-3 text-white">© 2017-2018</small>
          </div>
        </div>
      </footer>
        
</body>
</html>