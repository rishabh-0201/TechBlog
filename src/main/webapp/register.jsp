<%--
  Created by IntelliJ IDEA.
  User: Nice
  Date: 1/1/2024
  Time: 2:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>

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

<%@include file="navbar.jsp"%>

<div class="container primary-background">

    <div class="col-md-6 offset-md-3">
        <div class="card">

            <div class="card-header text-center">
                <span class="fa fa-3x fa-user-circle"></span>
                <br>
                Register here

            </div>
            <div class="card-body">
                <form action="register" method="post" id="regform">

                    <div class="form-group">
                        <label for="user_name">Username</label>
                        <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter username">

                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>

                    <div class="form-group">
                        <label for="gender">Select gender</label>
                        <br>

                        <input type="radio"  id="gender" name="gender" value="male">Male
                        <input type="radio"   id="gender1" name="gender" value="female">Female
                    </div>

                    <div class="form-group">

                        <textarea name="about" class="form-control" id="" cols="30" rows="5" placeholder="Enter something here"></textarea>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" name="check" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                    </div>
                    <br>

                    <div class="container text-center" id="loader" style="display: none">

                        <span class="fa fa-refresh fa-spin fa-4x"></span>
                        <h4>Please wait...</h4>
                    </div>
                    <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                </form>


            </div>
            <div class="card-footer">

            </div>
        </div>
    </div>

</div>


<%--js--%>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script>

    $(document).ready(function (){

        console.log("loaded...");

        $('#regform').on('submit', function (event){

            event.preventDefault();
            let form = new FormData(this);
            $('#submit-btn').hide();
            $('#loader').show();

            // send register servlet

            $.ajax({

                url: "register",
                type: 'post',
                data: form,
                success: function (data, textStatus, jqXHR){

                    console.log(data);
                    $('#submit-btn').show();
                    $('#loader').hide();


                    if (data.trim()==='done'){


                        swal("registered successfully... we are redirecting to login page")
                            .then((value) => {
                                window.location = "login.jsp";
                            });
                    }
                    else {
                        swal(data);
                    }
                },
                error: function (jqXHR, textStatus, errorThrown){

                    $('#submit-btn').show();
                    $('#loader').hide();
                    swal("something went wrong...");


                },
                processData: false,
                contentType: false
            });
        })
    });
</script>

</body>
</html>
