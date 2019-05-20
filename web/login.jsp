<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 5/18/2019
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <title>Login</title>

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
                    <li><a href='register.jsp' target="_blank">Register</a></li>
                    <li><a href='https://ktnguyen.herokuapp.com' target="_blank">Contact Me</a></li>
                </ul>
                <a href='#' id='openup'>Menu</a>
            </nav>
        </header>
    </div>
<!-- ------------------------------LOGIN --------------------------- -->
    <div class="container-fluid">
        <form id="login" action="loginRegisterUrl" method="post">
            <div class="row align-items-center justify-content-center">
                <div class="col-10 col-sm-10 col-md-5 col-lg-4 col-xl-4">
                    <div>
                        <h3 class="red-alert">${dataNotFoundMessage}</h3>
                        <h3 class="green-alert">${successMessage}</h3>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="text" placeholder="QC-Tunes ID" required="required" name="un"/>
                        <div class="input-icon"><i class="fa fa-key"></i></div>
                    </div>
                    <div class="input-group input-group-icon">
                        <input type="password" placeholder="Password" required="required" name="pw"/>
                        <div class="input-icon"><i class="fa fa-key"></i></div>
                    </div>
                    <div>
                        <input type="submit" name="submit" value="Login" class="btn btn-primary">
                        <a href="register.jsp" target="_blank">Don't have an account? Register</a>
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
