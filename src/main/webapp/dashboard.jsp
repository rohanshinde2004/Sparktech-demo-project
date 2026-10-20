
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession loginSession = request.getSession(false);

    if (loginSession == null ||
        loginSession.getAttribute("username") == null) {
        response.sendRedirect(
            request.getContextPath() + "/login.jsp");
        return;
    }

    String username =
        (String) loginSession.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sparktech Dashboard</title>
</head>
<body>
    <h1>Welcome to Sparktech!</h1>
    <p>You are logged in as <%= username %>.</p>
    <p>Your login session is active.</p>
    <a href="<%= request.getContextPath() %>/logout">Logout</a>
</body>
</html>
