<?php
include("connection.php");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title></title>
    <script>
    function titulo(e){
      document.title = e;
    }
    titulo('index')</script>
</head>
<body>
    
    <!-- <div class="container-fluid" id="container"> -->
      <div class="container-fluid">
   
<header id="cabezera">
  <nav class="navbar navbar-expand-sm navbar-light bg-light fixed-top">
    <div id='topHeader'>
      <div id="CLeft">
        <ul>
        <li><a href="#">Call us</a></li>
        <li><a href="#">Email us</a></li>
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
          <a class="nav-link active" href="index.html">Home</a>
        </li>
        <li class="nav-item">
        <div class="btn-group">
          <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Vehicles</a>
          <ul class="dropdown-menu"> 
          <?php
          $query = "SELECT * FROM categories";
          $selectCategories = mysqli_query($connection,$query);
          while ($row = mysqli_fetch_assoc($selectCategories)) {
          $cat_title =  $row['cat_title'];
          echo "<li><a href='#'>{$cat_title}</a></li>";
          }
          ?> 
        </ul>
        </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Locations</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Car Gallery</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact us</a>
        </li>
      </ul>
      <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
</header>
<!-- banner slider -->
<div id="demo" class="container-fluid">
  <div id='bannerIMG'>
    <img src="img/carBanner.png" alt="banner" />
    <div class="container" style="position: absolute;top: 100px;background-color: #131212a3;padding: 30px; margin: 10px;">
      <h3 class="text-white" >Alpha Car Hire Rental Vehicles</h3>
      <form>
        <div class="row" style="padding: 5px;">
          <div class="col">
            <input type="text" class="form-control" placeholder="Make">
          </div>
          <div class="col">
            <input type="text" class="form-control" placeholder="Model">
          </div>
        </div>
        <div class="row" style="padding: 5px;">
          <div class="col">
            <input type="text" class="form-control" placeholder="Capacity">
          </div>
          <div class="col">
            <input type="text" class="form-control" placeholder="Color">
          </div>
        </div>
        <div class="row" style="padding: 5px;">
          <div class="col">
            <div class="input-group">
              <input type="text" class="form-control" aria-label="" placeholder="pick up location">
              <div class="input-group-btn">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 100%;"><span class="caret"></span></button>
                <ul class="dropdown-menu dropdown-menu-right bg-dark">
                  <li><a href="#" class="text-white">Queensland</a></li>
                  <li><a href="#" class="text-white">New south wales</a></li>
                  <li><a href="#" class="text-white">Victoria</a></li>
                  <li><a href="#" class="text-white">South australia</a></li>
                  <li><a href="#" class="text-white">Western Australia</a></li>
                  <!-- <li role="separator" class="divider"></li>
                  <li><a href="#" class="text-white">Separated link</a></li> -->
                </ul>
              </div><!-- /btn-group -->
            </div>
          </div>
           <div class="col">
            <div class="input-group">
              <input type="text" class="form-control" aria-label="" placeholder="Drop off Location">
              <div class="input-group-btn">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="height: 100%;"><span class="caret"></span></button>
                <ul class="dropdown-menu dropdown-menu-right bg-dark">
                  <li><a href="#" class="text-white">Queensland</a></li>
                  <li><a href="#" class="text-white">New south wales</a></li>
                  <li><a href="#" class="text-white">Victoria</a></li>
                  <li><a href="#" class="text-white">South australia</a></li>
                  <li><a href="#" class="text-white">Western Australia</a></li>
                  <!-- <li role="separator" class="divider"></li>
                  <li><a href="#" class="text-white">Separated link</a></li> -->
                </ul>
              </div><!-- /btn-group -->
            </div>
          </div>
        </div>
        <div class="row" style="padding: 5px;">
          <div class="col">
            <input type="text" class="form-control" placeholder="Pick up date">
          </div>
          <div class="col">
            <input type="text" class="form-control" placeholder="Drop off Date">
          </div>
        </div>
        <button type="submit" class="btn btn-primary float-right">Search</button>
        </form>
      </div>
      

    </div>
    
</div>
  </div>
    