<%--
  Created by IntelliJ IDEA.
  User: Kim Nguyen
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <!-- Credit to https://codepen.io/josemc/pen/Kwbapp -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="canonical" href="https://ktnguyen.herokuapp.com/"/>
    <meta property="og:locale" content="en_US"/>
    <meta property="og:type" content="website"/>
    <meta property="og:title" content="Kim Nguyen QC-Tunes Music Webpage"/>
    <meta property="og:description" content="Kim Nguyen QC-Tunes Music Webpage"/>
    <meta name="keywords"
          content="web design, web design blog, web dev design, Kim Nguyen, Queen City Cincinnati Ohio OH, Kim Nguyen Portfolio, Kim Nguyen Resume, Resume, Software Developer Resume">

    <!------------------------ Title Page--------------------------->
    <title>Register Form</title>

    <!--------------------------- Main CSS-------------------------->
    <link href="css/main.css" rel="stylesheet" media="all">
    <link href="css/login-register.css" rel="stylesheet" media="all">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!----------------------------FONT AWESOME----------------------------->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
          crossorigin="anonymous">
</head>
<body class="bg-gra">
    <!-- -----------------------------Navigation ----------------------------->
    <div id="nav-menu">
        <header>
            <nav class='cf'>
                <ul class='cf'>
                    <li style="box-shadow: none"><img class="nav-logo-responsive"
                                                      src="img/personal-logo-white.png"
                                                      alt="Kim Nguyen brand">
                    </li>
                    <li><a href="index.jsp">QC-Tunes</a></li>
                    <li><a href='login.jsp' target="_blank">Login</a></li>
                    <li><a href='https://ktnguyen.herokuapp.com' target="_blank">Contact Me</a></li>
                </ul>
                <a href='#' id='openup'>Menu</a>
            </nav>
        </header>
    </div>
    <!-- ------------------------------REGISTER --------------------------- -->
    <div class="container-fluid">
        <form id="register" action="loginRegisterUrl" method="post">
            <div class="row align-items-center justify-content-center">
                <div class="col-10 col-sm-10 col-md-5 col-lg-4 col-xl-4">
                    <h4>Register New Account</h4>
                    <div class="col-half">
                    <div class="input-group input-group-icon">
                        <input type="text" placeholder="First Name" required="required" name="firstName"/>
                        <div class="input-icon"><i class="fa fa-user"></i></div>
                    </div>
                    </div>
                    <div class="col-half">
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Last Name" required="required" name="lastName"/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                    </div>
                    <div class="col-half">
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Username" required="required" name="un"/>
                            <div class="input-icon"><i class="fa fa-key"></i></div>
                        </div>
                    </div>
                    <div class="col-half">
                        <div class="input-group input-group-icon">
                            <input type="password" placeholder="Password" required="required" name="pw"/>
                            <div class="input-icon"><i class="fa fa-key"></i></div>
                        </div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" placeholder="Phone" name="phone"/>
                        <div class="input-icon"><i class="fas fa-phone"></i></div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" placeholder="Address" name="address"/>
                        <div class="input-icon"><i class="fas fa-map-marker-alt"></i></div>
                    </div>
                    <div class="col-half">
                        <input type="submit" name="submit" value="Register"
                               class="btn btn-primary">
                    </div>
                    <div class="col-half">
                        <a href="login.jsp" target="_blank" class="btn btn-primary">Already have an account?
                            Login</a>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-center">
                <div class="col-10 col-sm-10 col-md-5 col-lg-4 col-xl-4">
                    <h4 id="payment">Subscribe to QC-Tunes</h4>
                    <div class="input-group">
                        <input type="radio" name="payment-method" value="card" id="payment-method-card" checked="true"/>
                        <label for="payment-method-card"><span><i
                                class="fab fa-cc-visa"></i>Credit Card</span></label>
                        <input type="radio" name="payment-method" value="paypal" id="payment-method-paypal"/>
                        <label for="payment-method-paypal"> <span><i
                                class="fab fa-cc-paypal"></i>Paypal</span></label>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" placeholder="Card Number"/>
                        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
                    </div>
                    <div class="col-half">
                        <div class="input-group input-group-icon">
                            <input type="text" placeholder="Card CVC"/>
                            <div class="input-icon"><i class="fa fa-user"></i></div>
                        </div>
                    </div>
                    <div class="col-half">
                        <div class="input-group">
                            <select>
                                <option>01 Jan</option>
                                <option>02 Feb</option>
                                <option>03 Mar</option>
                                <option>04 Apr</option>
                                <option>05 May</option>
                                <option>06 Jun</option>
                                <option>07 Jul</option>
                                <option>08 Aug</option>
                                <option>09 Sep</option>
                                <option>10 Oct</option>
                                <option>11 Nov</option>
                                <option>12 Dec</option>
                            </select>
                            <select>
                                <option>2030</option>
                                <option>2029</option>
                                <option>2028</option>
                                <option>2027</option>
                                <option>2026</option>
                                <option>2025</option>
                                <option>2024</option>
                                <option>2023</option>
                                <option>2022</option>
                                <option>2021</option>
                                <option>2020</option>
                                <option>2019</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center justify-content-center">
                <div class="col-10 col-sm-10 col-md-5 col-lg-4 col-xl-4">
                    <h4>Terms and Conditions</h4>
                    <div class="input-group">
                        <input type="checkbox" id="terms"/>
                        <label for="terms">I accept the terms and conditions for signing up to this service,
                            and hereby confirm I have read the privacy policy.</label>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <footer>
        Copyright &#169; Kim Nguyen 2019
    </footer>

    <!-- ------------ Bootstrap CDN (Content Delivery Network)-------------->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>