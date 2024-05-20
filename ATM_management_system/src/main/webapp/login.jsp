

<%@ page import="com.atm.dao.UserDAO" %>
<%@ page import="com.atm.util.DBConnection" %>
<%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  UserDAO userDAO = new UserDAO(DBConnection.getConnection());
  if (userDAO.authenticateUser(username, password)) {
    session.setAttribute("username", username);
    response.sendRedirect("dashboard.jsp");
  } else {
    out.println("Invalid username or password.");
  }
%>
