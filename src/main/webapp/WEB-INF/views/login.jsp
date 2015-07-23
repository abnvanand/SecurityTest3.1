<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="author" content="Deepankar Agrawal">
    <link href="<c:url value='/resources/css/materialize.min.css' />" rel="stylesheet">
    <script src="<c:url value='/resources/js/jquery-2.1.1.min.js' />"></script>
    <script src="<c:url value='/resources/js/materialize.min.js' />"></script>
    <link id="page_favicon" href="favicon.ico" rel="icon" type="image/x-icon">
    <title>Registration Page</title>
    <style>
        .register_form {
            margin: 41px 0px 22px 0px;
        }

        body {
            display: flex;
            min-height: 100vh;
            flex-direction: column;
        }

        main {
            flex: 1 0 auto;
        }
    </style>
</head>
<body>

<!--Begin header-->
<nav>
    <div class="nav-wrapper">
        <a href="#!" class="brand-logo">Online Quiz</a>
        <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="mdi-navigation-menu"></i></a>
        <ul class="right hide-on-med-and-down">
            <li><a href="index.html">Home</a></li>
            <li><a href="#login" class="modal-trigger">Login</a></li>
            <li class="active"><a href="register.html">Register</a></li>
            <li><a href="about.html">About</a></li>
        </ul>
        <ul class="side-nav" id="mobile-demo">
            <li><a href="index.html">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li class="active"><a href="register.html">Register</a></li>
            <li><a href="about.html">About</a></li>
        </ul>
    </div>
</nav>
<!--end Header-->
<% if (request.getParameter("error") != null) {
    out.println("Incorrect Input.");
}
%>

<main>
    <div class="row register_form">
        <div class="col m4 s2 card-panel"></div>
        <form class="col m4 s8 card-panel teal" action="<c:url value="/j_spring_security_check"></c:url>" method="post"
              role="form">
            <div class="row">
                <div class="col m10 s10 white-text"><h4>Login</h4></div>
                <div class="col m1 s1"></div>
                <div class="col m1 s1"></div>
            </div>

            <div class="row">
                <div class="input-field col m1 s1"></div>
                <div class="input-field col m10 s10 white-text">
                    <i class="mdi-communication-email prefix white-text"></i>
                    <input id="email_id" type="text" class="validate" name="user_param">
                    <label for="email_id" class="white-text">Email id</label>
                </div>
                <div class="input-field col m1 s1"></div>
            </div>

            <div class="row">
                <div class="input-field col m1 s1"></div>
                <div class="input-field col m10 s10 white-text">
                    <i class="mdi-action-lock prefix white-text"></i>
                    <input id="password" type="password" class="validate" name="pass_param">
                    <label for="password" class="white-text">Password</label>
                </div>
                <div class="input-field col m1 s1"></div>
            </div>
            <div class="row">
                <div class="col m12 s12" align="center">
                    <%
                        ReCaptcha c = ReCaptchaFactory.newSecureReCaptcha("6LfGGQoTAAAAAA_yx6KG83-15mntFYoUDVbSEXDd", "6LfGGQoTAAAAAFt8xbCLmgSQUhsCcXh6kFJtG6fk", false);
                        out.print(c.createRecaptchaHtml(null, null));
                    %>
                    <button class="btn waves-effect waves-light pink" type="submit">Login
                        <i class="mdi-content-send right"></i>
                    </button>
                </div>
            </div>
        </form>
        <div class="col m4 s2 card-panel"></div>
    </div>
</main>


<!--Begin Footer-->
<footer class="page-footer">
    <div class="container">
        <div class="row">
            <div class="col l6 s12">
                <h5 class="white-text">UPES-CSI Student Chapter</h5>

                <p class="grey-text text-lighten-4">Hello world the content goes in here in rows and columns</p>
            </div>
            <div class="col l4 s12" style="overflow: hidden;">
                <h5 class="white-text">Connect with us</h5>

                <a href="https://twitter.com/upescsi" class="twitter-follow-button" data-show-count="true"
                   data-size="large">Follow @upescsi</a>


            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            Developed and Maintained by UPES-CSI Student Chapter &copy; 2015-2016
            <a class="grey-text text-lighten-4 right" href="http://materializecss.com/" target="_blank">Developed using
                materializecss</a>
        </div>
    </div>
</footer>
<!--end Footer-->

<!-- Login Modal Structure -->
<div id="login" class="modal">
    <div class="modal-content">
        <h4>Login</h4>

        <div class="row">
            <form class="col s12">
                <div class="row">
                    <div class="input-field col s6">
                        <i class="mdi-action-account-circle prefix"></i>
                        <input id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Email ID</label>
                    </div>
                    <div class="input-field col s6">
                        <i class="mdi-action-lock prefix"></i>
                        <input id="icon_telephone" type="password" class="validate">
                        <label for="icon_telephone">Password</label>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cancel</a>
        <a href="index.html" class=" modal-action modal-close waves-effect waves-green btn-flat">Login</a>
    </div>
</div>
<!--end of modal-->

</body>
<!--Begin of Script Section-->
<script>
    //responsive initialization
    $(".button-collapse").sideNav();
    //Tooltip initialization
    $(document).ready(function () {
        $('.tooltipped').tooltip({delay: 50});
    });
    //Modal Initialization
    $(document).ready(function () {
        // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
        $('.modal-trigger').leanModal();
    });
</script>
<script>!function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0], p = /^http:/.test(d.location) ? 'http' : 'https';
    if (!d.getElementById(id)) {
        js = d.createElement(s);
        js.id = id;
        js.src = p + '://platform.twitter.com/widgets.js';
        fjs.parentNode.insertBefore(js, fjs);
    }
}(document, 'script', 'twitter-wjs');</script>
<!--End of Script Section-->
</html>