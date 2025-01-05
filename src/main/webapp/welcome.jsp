<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Reservation Service</title>
    
</head>
<style>
/* Global Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body Styles */
body {
    font-family: Arial, sans-serif;
    background-image: url('background.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    color: #fff;
    line-height: 1.6;
    padding: 20px;
}

/* Navigation Bar */
nav {
    background-color: rgba(0, 0, 0, 0.7);
    padding: 10px 0;
    text-align: center;
}

nav ul {
    list-style-type: none;
}

nav ul li {
    display: inline;
    margin: 0 15px;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 18px;
}

nav ul li a:hover {
    color: #f1c40f;
}

/* Main Form Container */
form {
    background-color: rgba(0, 0, 0, 0.6);
    padding: 40px;
    margin: 50px auto;
    border-radius: 10px;
    width: 80%;
    max-width: 600px;
    text-align: center;
}

form h1 {
    font-size: 36px;
    margin-bottom: 30px;
}

form a {
    color: #f1c40f;
    text-decoration: none;
    font-size: 18px;
    margin: 10px;
    display: inline-block;
}

form a:hover {
    color: #fff;
}

/* Footer Styles */
footer {
    background-color: rgba(0, 0, 0, 0.7);
    text-align: center;
    padding: 15px;
    position: fixed;
    width: 100%;
    bottom: 0;
}

footer p {
    font-size: 14px;
    color: #fff;
}

footer p a {
    color: #f1c40f;
    text-decoration: none;
}

footer p a:hover {
    color: #fff;
}

/* Media Queries for Responsiveness */
@media (max-width: 768px) {
    form {
        width: 90%;
    }

    nav ul li {
        display: block;
        margin: 10px 0;
    }
}

</style>
<body>
    <!-- Navigation bar -->
    <nav>
        <ul>
            <li><a href="home">Home</a></li>
            <li><a href="About.jsp">About Us</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
            <li><a href="Help.jsp">Help</a></li>
        </ul>
    </nav>

    <!-- Main form container -->
    <form action="welcome" method="post">
        <h1>Welcome to Expense Tracker Page</h1>
        <br><br>
        <a href="registerpage">Register</a>
        <br><br>
        <a href="loginpage"><b>Login Here</b></a>
    </form>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Expense Tracker Tool. All rights reserved.</p>
        <p><a href="Privacy.jsp">Privacy Policy</a> | <a href="Term.jsp">Terms of Service</a></p>
    </footer>
</body>
</html>
