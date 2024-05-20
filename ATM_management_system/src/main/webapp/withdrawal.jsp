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
          String amountStr = request.getParameter("amount");
          if (amountStr == null || amountStr.trim().isEmpty()) {
            response.sendRedirect("withdraw-amount.jsp");
            return;
          }
          double amount = Double.parseDouble(amountStr);
          UserDAO userDAO = new UserDAO(DBConnection.getConnection());
          userDAO.withdraw(username, amount);
          out.println("<p class='output'>Withdrawal successful.</p>");
        }
      %>
    </p>
  </div>
</body>
</html>