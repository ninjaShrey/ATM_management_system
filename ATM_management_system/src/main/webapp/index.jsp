<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div class="container">
    <h1>Welcome to ATM Management</h1>
    <p>Please login to continue.</p>
    <form action="login.jsp" method="post">
      <label for="username">Username:</label>
      <input type="text" name="username" id="username" required>
      <br>
      <label for="password">Password:</label>
      <input type="password" name="password" id="password" required>
      <br>
      <button type="submit">Login</button>
    </form>
  </div>
</body>
</html>