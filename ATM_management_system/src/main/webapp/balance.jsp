<%@ page import="com.atm.dao.UserDAO" %>
<%@ page import="com.atm.util.DBConnection" %>
<%@ page import="java.sql.Connection" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="container">
    <h1>ATM</h1>
    <p>
      <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
          response.sendRedirect("index.jsp");
        } else {
          UserDAO userDAO = new UserDAO(DBConnection.getConnection());
          double balance = userDAO.getBalance(username);
          out.println("<p class='output'>Your current balance is: <span class='balance'>" + balance + "</span></p>");
        }
      %>
    </p>
  </div>
</body>
</html>