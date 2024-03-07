<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.techblog.helper.ConnectionProvider" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
<%--    css--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/mystyle.css">
    <style>
        .banner-background{
            clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 73% 92%, 34% 100%, 0 93%, 0 0);
        }
    </style>
</head>
<body>

<%--navbar--%>
<%@include file="navbar.jsp"%>

<%--banner--%>

<div class="container-fluid p-0 m-0">

    <div class="jumbotron primary-background text-white banner-background">

        <div class="container">

            <h3 class="display-3">Welcome to Techblog</h3>
            <p>Welcome to technical blog, world of technology
                A programming language is a formal langauge, which comprises a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.</p>
            <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of of specific instructions rather than general programming language.</p>

            <button class="btn btn-outline-light btn-lg"><span class="fa fa-user-plus"></span>Start It's free</button>
            <a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span>Login</a>
        </div>

    </div>

</div>

<%--    cards--%>

<div class="container">
    <div class="row mb-2">
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mb-2">
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card" >

                <div class="card-body">
                    <h5 class="card-title">Java Programming</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn primary-background text-white">Read more</a>
                </div>
            </div>
        </div>
    </div>
</div>

<%--js--%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>