<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">


    <title>Bootstrap Design</title>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <!--link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"-->
    <link rel="stylesheet" href="static/css/fontawesome-all.min.css">
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

<c:choose>
    <c:when test="${mode=='MODE_HOME'}">
        <div class="container" id="homediv">
            <div class="jumbotron text-center">
                <h1>Welcome to Tecno-tab</h1>
                <h3>Subscribe my channel to support me</h3>
            </div>
        </div>
    </c:when>

    <c:when test="${mode=='MODE_REGISTER'}">
        <div class="container text-center">
            <h3>New Registration</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id}" />
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">First Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="firstname"
                               value="${user.firstname}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Last Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="lastname"
                               value="${user.lastname}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Age </label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="age"
                               value="${user.age}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password}" />
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Register"/>
                </div>
            </form>
        </div>
    </c:when>
    <c:when test="${mode=='ALL_USERS'}">
        <div class="container text-center" id="tasksDiv">
            <h3>All Users</h3>
            <hr>
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>UserName</th>
                        <th>First Name</th>
                        <th>LastName</th>
                        <th>Age</th>
                        <th>Delete</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.firstname}</td>
                            <td>${user.lastname}</td>
                            <td>${user.age}</td>
                            <td><a href="/delete-user?id= ${user.id}">
                                <span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                            <td><a href="/edit-user?id= ${user.id}">
                                <span class="ghlypicon glyphicon-pencil"></span></a>
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </c:when>

    <c:when test="${mode=='MODE_UPDATE'}">
        <div class="container text-center">
            <h3>Update User</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-user">
                <input type="hidden" name="id" value="${user.id}" />
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">First Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="firstname"
                               value="${user.firstname}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Last Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="lastname"
                               value="${user.lastname}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Age </label>
                    <div class="col-md-3">
                        <input type="text" class="form-control" name="age"
                               value="${user.age}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password}" />
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Update" />
                </div>
            </form>
        </div>
    </c:when>

    <c:when test="${mode=='MODE_LOGIN'}">
        <div class="container text-center">
            <h3>User Login</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="/login-user">
                <c:if test="${not empty error}">
                    <div class= "alert alert-danger">
                        <c:out value="${error}"></c:out>
                    </div>
                </c:if>
                <div class="form-group">
                    <label class="control-label col-md-3">Username</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" name="username"
                               value="${user.username}" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3">Password</label>
                    <div class="col-md-7">
                        <input type="password" class="form-control" name="password"
                               value="${user.password}" />
                    </div>
                </div>
                <div class="form-group ">
                    <input type="submit" class="btn btn-primary" value="Login" />
                </div>
            </form>
        </div>
    </c:when>
</c:choose>

<script src="static/js/jquery-1.12.4.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/main.js"></script>
</body>
</html>
