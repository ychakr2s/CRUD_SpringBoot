<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">


    <title>Bootstrap Design</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!--link rel="stylesheet" href="static/css/fontawesome-all.min.css"-->
    <link rel="stylesheet" href="static/css/main.css">
</head>

<body>
<!-- This is th Navigationbar -->
<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/welcome" class="navbar-brand">Tecno-Tab</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/login">Login</a></li>
                <li><a href="/register">New Registration</a></li>
                <li><a href="/show-users">All Users</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container" id="homediv">
    <div class="jumbotron text-center">
        <h1>Welcome to Tecno-tab</h1>
        <h3>Spring Boot Videos</h3>
    </div>
</div>

<div class="container text-centered">
    <div class="alert alert-success">
        <h4>Session 1: Spring Boot Tutorial</h4>
    </div>
    <iframe width="400" height="200"
            src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
            allow="autoplay; encrypted-media" allowfullscreen></iframe>

    <p> This is 1st Session of the tutorial..... </p>
    <div class="alert alert-success">
        <h4>Session 1: Spring Boot Tutorial</h4>
    </div>
    <iframe width="400" height="200"
            src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
            allow="autoplay; encrypted-media" allowfullscreen></iframe>

    <p> This is 1st Session of the tutorial..... </p>
    <div class="alert alert-success">
        <h4>Session 1: Spring Boot Tutorial</h4>
    </div>
    <iframe width="400" height="200"
            src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
            allow="autoplay; encrypted-media" allowfullscreen></iframe>

    <p> This is 1st Session of the tutorial..... </p>
    <div class="alert alert-success">
        <h4>Session 1: Spring Boot Tutorial</h4>
    </div>
    <iframe width="400" height="200"
            src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
            allow="autoplay; encrypted-media" allowfullscreen></iframe>

    <p> This is 1st Session of the tutorial..... </p>
</div>


<script src="static/js/jquery-1.12.4.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/main.js"></script>
</body>
</html>