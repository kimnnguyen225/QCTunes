<%--
  Created by IntelliJ IDEA.
  User: Kim Nguyen
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="canonical" href="https://ktnguyen.herokuapp.com/"/>
    <meta property="og:locale" content="en_US"/>
    <meta property="og:type" content="website"/>
    <meta property="og:title" content="Kim Nguyen QC-Tunes Music Webpage"/>
    <meta property="og:description" content="Kim Nguyen QC-Tunes Music Webpage"/>
    <meta name="keywords"
          content="web design, web design blog, web dev design, Kim Nguyen, Queen City Cincinnati Ohio OH, Kim Nguyen Portfolio, Kim Nguyen Resume, Resume, Software Developer Resume">

    <!-------------------------------CSS---------------------------------->
    <link rel="stylesheet" href="css/main.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- ---------------------------CDN--------------------------------- -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!----------------------------FONT AWESOME----------------------------->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
          crossorigin="anonymous">

    <!-- -------------------------------Angular JS ------------------------ -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
    <script type="text/javascript">
        var app = angular.module("userApp", []);
        app.controller("userController", function($scope, $http) {

            $scope.searchText = "";
            $http({
                url:'UserControllerServlet',
                method: "GET"
            }).then(function(response){
                $scope.userList = response.data;
                console.log($scope.userList);
            }, function(response){
                console.log(response);
            });
            $scope.search = function(user) {
                if(user.username.toLowerCase().includes($scope.searchText)||user.firstName.toLowerCase().includes($scope.searchText.toLowerCase())||user.lastName.toLowerCase().includes($scope.searchText.toLowerCase())||user.phone.includes($scope.searchText)) {
                    return true;
                } return false;
            }
        });
    </script>

    <title>User DB</title>
</head>
<body ng-app="userApp" ng-controller="userController" id="users-database">
    <!-- -----------------------------Navigation ----------------------------->
    <div id="nav-menu">
        <header>
            <nav class='cf'>
                <ul class='cf'>
                    <li style="box-shadow: none"><img class="nav-logo-responsive"
                                                      src="img/personal-logo-white.png"
                                                      alt="Kim Nguyen brand">
                    </li>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href='https://ktnguyen.herokuapp.com' target="_blank">Contact Me</a></li>
                    <div class="topnav-right hide-on-small">
                        <!--  <input id="log-out" class="login-button" type="button" value="Logout">-->
                        <a href="index.jsp" id="log-out" class="btn btn-light">Logout</a>
                    </div>
                </ul>
                <a href='#' id='openup'>Menu</a>
            </nav>
            <div id="contact-barcode">
                <img src='https://barcode.tec-it.com/barcode.ashx?name=Kim+Nguyen&phonenumber=513-410-4388&phonenumberwork=513-410-4388&email=kimnnguyen225%40gmail.com&organisation=&title=Software+Developer&birthday=02.25.1993+00%3A00%3A00&address=8049+S+Port+Dr+West+Chester%2C+OH+45069&url=https%3A%2F%2Fktnguyen.herokuapp.com&code=QRCode_Business_vCard&translate-esc=false&data=KIM+DIGITAL+CARD%0D%0AName%3A+Kim+Nguyen%0D%0ATitle%3A+Software+Developer%0D%0ACell+phone%3A+513-410-4388%0D%0AE-mail%3A+kimnnguyen225%40gmail.com%0D%0AB-Day%3A+02-25-1993%0D%0AAddress%3A+West+Chester%2C+OH+45069%0D%0AURL%3A+https%3A%2F%2Fktnguyen.herokuapp.com&unit=Fit&dpi=96&imagetype=Gif&rotation=0&color=%23000000&bgcolor=%23ffffff&qunit=Mm&quiet=0' alt='Kim Nguyen Software Developer'/>
            </div>
        </header>
    </div>
    <!-- -------------------------------User Database--------------------- -->
    <section id="user-db" class="section">
        <div class="container-fluid">
            <div class="row align-items-center justify-content-center">
                <h1 class="section-head">QC-Tunes's Users</h1>
            </div>
            <div class="row align-items-baseline justify-content-center">
                <div class="col-12 col-sm-12 col-md-11 col-lg-9 col-xl-9">
                    <div class="input-group mb-3">
                            <input type="text" class="form-control"
                               aria-label="Text input with segmented dropdown button"
                               placeholder="Search..." ng-model="searchText"/>
                    </div>
                    <table
                            class="table table-hover table-striped table-dark table-responsive{-sm|-md|-lg|-xl}">
                        <thead class="thead-light">
                            <tr>
                                <th scope="col">Username</th>
                                <th scope="col">Password</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Address</th>
                                <th scope="col">Subscription</th>
                                <th scope="col">Phone Number</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- <tr ng-repeat="user in userList | filter:{useId:searchText}"> -->
                            <tr ng-repeat="user in userList | filter:search">
                                <th scope="row">{{user.username}}</th>
                                <td>{{user.password}}</td>
                                <td>{{user.firstName}}</td>
                                <td>{{user.lastName}}</td>
                                <td>{{user.address}}</td>
                                <td>{{user.subscription}}</td>
                                <td>{{user.phone}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <footer>
            Copyright &#169; Kim Nguyen 2019
        </footer>
    </section>


    <!-- ------------ Bootstrap CDN (Content Delivery Network)-------------->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
