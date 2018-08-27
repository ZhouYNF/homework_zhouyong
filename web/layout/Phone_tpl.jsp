    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <!DOCTYPE html>
        <html lang="en" >

        <head>

        <meta charset="UTF-8">
        <link rel="shortcut icon" type="image/x-icon"
        href="https://static.codepen.io/assets/favicon/favicon-8ea04875e70c4b0bb41da869e81236e54394d63638a1ef12fa558a4a835f1164.ico"
        />
        <link rel="mask-icon" type=""
        href="https://static.codepen.io/assets/favicon/logo-pin-f2d2b6d2c61838f7e76325261b7195c27224080bc099486ddd6dccb469b8e8e6.svg"
        color="#111" />
        <title><sitemesh:title/></title>
            <%@include file="Phone_res_pre.jsp"%>
            <%--引入相关的js等--%>
            <%@include file="Phone_res_post.jsp"%>

        <link rel='stylesheet' href='//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css'>

        <style>
        @import url(https://fonts.googleapis.com/css?family=Pompiere);

        .container {
        margin-top: 20px;
        }

        .center {
        margin: 0 auto;
        }

        nav div, h1, h2, h3, h4, h5, h6 {
        font-family: 'Pompiere';
        text-transform: uppercase;
        }

        .nav li {
        margin-top: 12px;
        font-size: 24px;
        text-transform: uppercase;
        }

        .nav li a {
        color: #000;
        }

        .nav li:last-child {
        margin-bottom: 10px;
        }

        .nav-pills>li.active>a, .nav-pills>li.active>a:focus {
        color: #000;
        background-color: transparent;
        }

        .nav-pills>li.active>a:hover {
        background-color: #eee;
        color: #000;
        }

        .carousel-control.left, .carousel-control.right {
        top: 40%;
        background: none;
        font-size: 50px;
        }

        .carousel-caption {
        font-size: 28px;
        bottom: 0;
        }

        .post {
        margin-bottom: 30px;
        }

        a.thumbnail:hover, a.thumbnail:focus{
        border: 1px solid black;
        }

        footer p {
        text-align: center;
        }

        @media (max-width: 992px){
        .carousel-caption {
        font-size: 18px;
        }
        .nav li {
        font-size: 20px;
        }
        }

        @media (max-width: 768px){
        .thumbnail {
        border: none;
        }
        a.thumbnail:hover, a.thumbnail:focus{
        border: none;
        }
        }
        </style>

        <script>
        window.console = window.console || function(t) {};
        </script>


        <script>
        if (document.location.search.match(/type=embed/gi)) {
        window.parent.postMessage("resize", "*");
        }
        </script>


        </head>

        <body translate="no" >

        <div class="container">

        <div class="row">

        <nav class="col-sm-2"><!--nav-->
        <div class="row">
        <div class="col-sm-12"><!--logo-->
        <img src="https://placehold.it/200&text=Logo" alt="test" class="img-circle img-responsive center" />
        </div><!--/logo-->
        <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;&nbsp;Home</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-cutlery"></span>&nbsp;&nbsp;Recipes</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;About</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;Contact</a></li>

        </ul>

        <!--/nav-->

        <div class="col-sm-10">

        <div id="this-carousel-id" class="carousel slide hidden-xs"><!-- class of slide for animation -->
        <div class="carousel-inner">
        <div class="item active"><!-- class of active since it's the first item -->
        <img src="https://placehold.it/1200x480" alt="" />
        <div class="carousel-caption">
        <p>Caption text here</p>
        </div>
        </div>
        <div class="item">
        <img src="https://placehold.it/1200x480" alt="" />
        <div class="carousel-caption">
        <p>Caption text here</p>
        </div>
        </div>
        <div class="item">
        <img src="https://placehold.it/1200x480" alt="" />
        <div class="carousel-caption">
        <p>Caption text here</p>
        </div>
        </div>
        <div class="item">
        <img src="https://placehold.it/1200x480" alt="" />
        <div class="carousel-caption">
        <p>Caption text here</p>
        </div>
        </div>
        </div><!-- /.carousel-inner -->
        <!-- Next and Previous controls below
        href values must reference the id for this carousel -->
        <a class="carousel-control left" href="#this-carousel-id" data-slide="prev">&lsaquo;</a>
        <a class="carousel-control right" href="#this-carousel-id" data-slide="next">&rsaquo;</a>
        </div><!-- /.carousel -->
        </div>
        </div>

            <sitemesh:body></sitemesh:body>
        <footer class="row footer">
        <div class="panel-footer"><p>&copy; 2018</p></div>
        </footer>

        <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js'></script>


        </body>
        </html>
