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
    <title>log_in</title>
</head>
<body>
       <!-- Container   ---  DONT TOUCH this section!! - DO NOT EDIT ANYTHING -->
    <div class="container-fluid" id="topheader1" style="height:20%;">
     <!-- HEADER  ---  DONT TOUCH this section!! - DO NOT EDIT ANYTHING -->
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
                <a class="nav-link" href="#">Vehicles</a>
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
        <!-- HEADER --- watch out-- if you edit this you will mess the layout  ---  DONT TOUCH this section!! - DO NOT EDIT ANYTHING -->

  
</div>
<!--info content-->

<div class="container-fluid" style="width: 50%;">
  <!--WORK INSIDE THIS SECTION REMOVE html FORM TAg -->
    <!--  every member must work from the line number 72 to line 86 , please remove the  <form class="form-signin"> </form> 
      and create your own content inside the container line 67 to 90 -->

    <!--remove this content -->

    <!-- contact us Form -->
    <form action="contact_us.html" method="post" enctype="multipart/form-data">

      <div class="form-group row">
        <div class="col-md-9 col-md-offset-3">
          <h3>Contact us</h3>
        </div>
      </div>
 
      <!--- contact us - Form --->
      <p></p>
      <div class="form-group row">
        <label class="col-md-3 form-control-label">Send to</label>
        <div class="col-md-9">
          <select name="id_contact" class="form-control form-control-select">
                            <option value="2">info@carrental.com.au</option>
                            <option value="3">sales@carrental.com.au</option>
                            <option value="1">webmaster@carrental.com.au</option>
                        </select>
        </div>
      </div>
      
      <div class="form-group row">
      <label class="col-md-3 form-control-label">Name</label>
      <div class="col-md-9">
      <input class="form-control" name="firstname_contactus" placeholder="Your name" value="">
      </div>
      </div>
      
      <div class="form-group row">
      <label class="col-md-3 form-control-label">Mobile</label>
      <div class="col-md-9">
      <input class="form-control" name="mobile_contactus" placeholder="Mobile" value="">
      </div>
      </div>

      <div class="form-group row">
        <label class="col-md-3 form-control-label">Email address</label>
        <div class="col-md-9">
          <input class="form-control" name="from" type="email" value="" placeholder="your@email.com">
        </div>
      </div>

              <!-- <p>
                <div class="form-group row">
          <label class="col-md-3 form-control-label">Attachment</label>
          <div class="col-md-6">
            <input type="file" name="fileUpload" class="filestyle" data-buttonText="Choose file">
          </div>
          <span class="col-md-3 form-control-comment">
            optional
          </span>
        </div>
      </p> -->

      <div class="form-group row">
        <label class="col-md-3 form-control-label">Message</label>
        <div class="col-md-12">
          <textarea class="form-control" name="message" placeholder="How can we help?" rows="3"></textarea>
        </div>
        <div class="col-md-12" style="margin: 10px 0;">
          <input class="btn btn-primary float-right" type="submit" name="submitMessage" value="Send">
          </div> 
      </div>
  </form>

<!--WORK INSIDE THIS SECTION REMOVE FORM TAg-->

  </div>
<!--info content-->


    <!-- footer --- watch out-- if you edit this you will mess the layout -- DONT TOUCH this section - DONT EDIT ANYTHING -->
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
        <!-- <img class="mb-2" src="../../assets/brand/bootstrap-solid.svg" alt="" width="24" height="24"> -->
        <small class="d-block mb-3 text-white">© 2017-2018</small>
      </div>
    </div>
  </footer>
     <!-- footer    DONT TOUCH - DONT EDIT ANYTHING -->
        
</body>
</html>