<%--
  Created by IntelliJ IDEA.
  User: Kim Nguyen
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="canonical" href="https://ktnguyen.herokuapp.com/"/>
  <meta property="og:locale" content="en_US"/>
  <meta property="og:type" content="website"/>
  <meta property="og:title" content="Kim Nguyen QC-Tunes Music Webpage"/>
  <meta property="og:description" content="Kim Nguyen QC-Tunes Music Webpage"/>
  <meta name="keywords"
        content="web design, web design blog, web dev design, Kim Nguyen, Queen City Cincinnati Ohio OH, Kim Nguyen Portfolio, Kim Nguyen Resume, Resume, Software Developer Resume">

  <!---------------------------------CSS------------------------------------>
  <link rel="stylesheet" href="css/main.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

  <!----------------------------FONT AWESOME----------------------------->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
        integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
        crossorigin="anonymous">

  <!---------------------------- favicon - page logo ----------------------->
  <!--<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">-->

  <title>Welcome to QC-Tunes</title>
</head>
<body>
  <!-- -----------------------------Navigation ----------------------------->
  <div id="nav-menu">
    <header>
      <nav class='cf'>
        <ul class='cf'>
          <li style="box-shadow: none"><img class="nav-logo-responsive"
                                         src="img/personal-logo-white.png"
                  alt="Kim Nguyen brand">
          </li>
          <li><a href='https://ktnguyen.herokuapp.com' target="_blank">Contact
            Me</a></li>
          <li><a href="index.jsp">Home</a></li>
          <li><a href='#music'>Music</a></li>
          <li><a href='#video'>Video</a></li>
          <li><a href='#gift-cards'>Gift Cards</a></li>
          <li><a href='users-database.jsp' target="_blank">Users</a></li>
          <li><a href='login.jsp' target="_blank">Login</a></li>
          <li><a href='register.jsp' target="_blank">Register</a></li>
        </ul>
        <a href='#' id='openup'>Menu</a>
      </nav>
        <div id="contact-barcode">
          <img src='https://barcode.tec-it.com/barcode.ashx?name=Kim+Nguyen&phonenumber=513-410-4388&phonenumberwork=513-410-4388&email=kimnnguyen225%40gmail.com&organisation=&title=Software+Developer&birthday=02.25.1993+00%3A00%3A00&address=8049+S+Port+Dr+West+Chester%2C+OH+45069&url=https%3A%2F%2Fktnguyen.herokuapp.com&code=QRCode_Business_vCard&translate-esc=false&data=KIM+DIGITAL+CARD%0D%0AName%3A+Kim+Nguyen%0D%0ATitle%3A+Software+Developer%0D%0ACell+phone%3A+513-410-4388%0D%0AE-mail%3A+kimnnguyen225%40gmail.com%0D%0AB-Day%3A+02-25-1993%0D%0AAddress%3A+West+Chester%2C+OH+45069%0D%0AURL%3A+https%3A%2F%2Fktnguyen.herokuapp.com&unit=Fit&dpi=96&imagetype=Gif&rotation=0&color=%23000000&bgcolor=%23ffffff&qunit=Mm&quiet=0' alt='Kim Nguyen Software Developer'/>
        </div>
    </header>
  </div>
  <!-- ------------------------Show Case Section-------------------------->
  <section id="showcase" class="section">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-center">
        <div class="col-12 col-sm-12 col-md-8 col-lg-6 col-xl-6 text-center">
          <h1>Queen City Tunes</h1>
          <p class="lead hide-on-small">
            Queen City Tunes is the best way to organize and enjoy
            your music and videos. Enjoy all the entertainment it has to offer on your devices.
          </p>
        </div>
      </div>
    </div>
  </section>
  <!-- ---------------------------Music Section ---------------------------->
  <section id="music" class="section">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-center">
        <div class="col-12 col-sm-12 col-md-8 col-lg-7 col-xl-7">
          <h2 class="section-head">
            <i class="fas fa-music mb"></i> Music
          </h2>
          <p class="hide-on-small mb">
            Stream over 50 million songs. All the music in your personal QC-Tunes
            library — no matter where it came from — lives right alongside the
            Cincy Music catalog.
          </p>
          <div class="text-center">
            <a href="#" class="btn btn-primary btn-lg mb">Start Now</a>
          </div>
          <p class="mb">
            Monthly subscription now only $15.00/user or $50.00/family-bundle
          </p>
          <div class="text-center">
            <img src="img/mockup1.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-------------------------------- Video Section ------------------------------>
  <section id="video" class="section">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-center">
        <div class="col-12 col-sm-12 col-md-8 col-lg-6 col-xl-6">
          <h2 class="section-head">
            <i class="fas fa-video mb"></i> Videos
          </h2>
          <p class="hide-on-small mb">
            With over 100,000 videos to choose from, there’s always something
            great to watch on QC-Tunes. So get ready to enjoy your favorite
            videos you’ve been waiting to see — anytime, anywhere.
          </p>
          <div class="text-center">
            <a href="#" class="btn btn-primary btn-lg mb">Start Now</a>
          </div>
          <p class="mb">
            Monthly subscription now only $15.00/user or $50.00/family-bundle
          </p>
          <div class="text-center">
            <img src="img/mockup2.png" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ----------------------Gift Card Section ----------------------------->
  <section id="gift-cards" class="section">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-center">
        <div class="col-10 col-sm-10 col-md-10 col-lg-4 col-xl-4">
          <img src="img/MockUpGiftCard.png" alt="">
        </div>
        <div class="col-10 col-sm-10 col-md-10 col-lg-6 col-xl-6">
          <h2 class="section-head mb">
            <i class="fas fa-gift"></i> Gift Cards
          </h2>
          <p class="hide-on-small text-left">
            Give friends and family QC-Tunes Gift Card(s) and they
            can choose anything from the QC-Tunes Store, or put it
            toward Cincy Music subscriptions. Available at https://qctunes.herokuapp.com
          </p>
          <hr>
          <p class="text-left mb">
            Already have a QC-Tunes Store Gift Card?
            <a href="#">
              <i class="fas fa-chevron-right text-secondary"></i>
              <b>Redeem</b>
            </a>
          </p>
        </div>
      </div>
    </div>
  </section>

  <!------------------------------------ Footer ------------------------------------>
  <footer id="footer">
    <div class="container-fluid">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-2 col-lg-2 col-xl-2">
          <ul>
            <li>QC-Tunes Store</li>
            <li>
              <a href="#">Music</a> <!--  -->
            </li>
            <li>
              <a href="#">Videos</a>
            </li>
            <li>
              <a href="#">Gift Cards</a>
            </li>
            <li>
              <a href="#">Find a Store</a> <!-- Google map -->
            </li>
          </ul>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2">
          <ul>
            <li>Account</li>
            <li>
              <a href="#">Manage Your QC-Tunes ID</a> <!-- Login -->
            </li>
            <li>
              <a href="#">Order Status</a>
            </li>
            <li>
              <a href="#">Register Account</a> <!-- Sign-up -->
            </li>
            <li>
              <a href="#">Privacy</a> <!-- empty -->
            </li>
          </ul>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2">
          <ul>
            <li>Career / Business</li>
            <li>
              <a href="#">Job Opportunities</a> <!-- Job list -->
            </li><li>
            <a href="#">Our Partners</a> <!-- empty -->
          </li><li>
            <a href="#">Business with QC-Tunes</a> <!-- empty -->
          </li><li>
            <a href="#">Investors</a> <!-- empty -->
          </li>
          </ul>
        </div>
        <div class="col-md-2 col-lg-2 col-xl-2">
          <ul>
            <li>About QC-Tunes Store</li>
            <li>
              <a href="#">About Us</a>
            </li>
            <li>
              <a href="#">Contact Us</a>
            </li>
            <li>
              <a href="#">Events</a> <!-- empty -->
            </li>
            <li>
              <a href="#">QC-Cloud</a> <!-- empty -->
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- copy right -->
    <div class="footer-copyright text-center">
      Copyright &copy; Kim Nguyen 2019 QC-Tunes. All rights reserved.
    </div>
  </footer>

  <!-- ------------ Bootstrap CDN (Content Delivery Network)-------------->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

  <!-- ------------------CDNJS jQuery library------------------------- -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
