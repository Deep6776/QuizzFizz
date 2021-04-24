<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Submit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,700,800" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <a class="navbar-brand" href="index.html">QuizzFizz</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="oi oi-menu"></span> Menu
        </button>
  
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
          <li class="nav-item cta"><a href="login.html" class="nav-link"><span>Log out</span></a></li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

    <div class="hero-wrap js-fullheight">
      <div class="overlay"></div>
      <div id="particles-js"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate text-center" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span>Result</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Result</h1>
          </div>
        </div>
      </div>
    </div>
    
    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container bg-light" style="text-align: center;font-size: 25px;font-weight: bold;color:black;">
            <br><h1 class="text-center text-primary" style="font-size:60px;font-weight: bold;letter-spacing: 10px">Result</h1><br>

        <?php

            session_start();
            if(!isset($_SESSION['Name'])){
               // header('location:login.html');
               // window.alert("Enter Name");
            }
            $con = mysqli_connect("localhost","root","","sessionpractical") or die(mysqli_errno($con));

            if(null!==(filter_input(INPUT_POST, 'submit'))){

                if(empty(filter_input(INPUT_POST,'anscheck'))){

                       $cnt = count($_POST['anscheck']);
                       echo "You select ".$cnt." out of 10 options."; 
                       
                       $selected = $_POST['anscheck'];
                       echo "<br>";
                       //print_r($selected);
                      
                       

                       $result = 0;
                       $i = 1;

                       $query = "select * from que_table";
                       $query_submit = mysqli_query($con, $query)
                               or die(mysqli_error($con));
                        

                       while( $rows = mysqli_fetch_array($query_submit)){
                           //print_r($rows['ans_id']);
                           
                           $ok = $rows['ans_id'] == $selected[$i] ;
                           if($ok){
                               $result++;
                           }
                           $i++;
                       }
                       echo "<br>Your total score is :".$result;               
                }
            }

          //  $email = $_SESSION['lemail'];
            $user_data = "insert into users(total_ques,ans_correct) values('10','$result')";
             $user_data_submit = mysqli_query($con, $user_data) or die(mysqli_result($con));

        ?>  
            <br><br><br><div class="m-auto d-block"><a href="QuizHome.php" class="btn btn-primary">Retest</a></div>
            <br><div class="m-auto d-block"><a href="logout.php" class="btn btn-primary">LOGOUT</a></div>
            

      </div>
    </section>
    

    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">QuizzFizz</h2>
              <p>A global education network that helps connect all learners with the people and resources needed to reach their full potential.</p>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-5">
              <h2 class="ftco-heading-2">Quick Links</h2>
              <ul class="list-unstyled">
                <li><a href="index.html" class="py-2 d-block">Home</a></li>
                <li><a href="about.html" class="py-2 d-block">About Us</a></li>
                <li><a href="#" class="py-2 d-block">Privacy</a></li>
                <li><a href="#" class="py-2 d-block">Terms of Service</a></li>
              </ul>
            </div>
          </div>
      
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Contact Information</h2>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>Made By Chonga Boisss</p>
          </div>
        </div>
      </div>
    </footer>
    
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/particles.min.js"></script>
  <script src="js/particle.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>


<!--
if(null!==(filter_input(INPUT_POST, 'submit'))){
        if(!empty(filter_input(INPUT_POST,'anscheck'))){
               $cnt = count((filter_input(INPUT_POST,'anscheck')));
               echo "You Have selected ".$cnt." options"; 
        }
    }
-->