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
    <h1>Withdraw Amount</h1>
    <form action="withdrawal.jsp" method="post">
        <label for="amount">Amount:</label>
        <input type="text" name="amount" id="amount" required>
        <br>
        <input type="submit" value="Withdraw">
    </form>
</body>
</html>