<%--
  Created by IntelliJ IDEA.
  User: abhin
  Date: 7/16/2015
  Time: 1:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
<%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>
<html>
<head>
    <title>Terror Movies</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<% if (request.getParameter("error") != null) {
    out.println("Invalid Username Or Password");
}
%>
<form action="<c:url value="/j_spring_security_check"></c:url>" method="post" role="form">
    <%
        ReCaptcha c = ReCaptchaFactory.newSecureReCaptcha("6LfGGQoTAAAAAA_yx6KG83-15mntFYoUDVbSEXDd", "6LfGGQoTAAAAAFt8xbCLmgSQUhsCcXh6kFJtG6fk", false);
        out.print(c.createRecaptchaHtml(null, null));
    %>
    Username<input type="text" name="user_param"/><br/>
    Password<input type="password" name="pass_param"/><br/>
    <input type="submit">
</form>
</body>
</html>
