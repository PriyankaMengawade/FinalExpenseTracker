<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" type="text/css" href="styles.css"> <!-- Link to the CSS file -->
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
    background-image: url('background.jpg'); /* Add your background image file here */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    color: #fff;
    padding: 20px;
}

/* Registration Form Container */
.form-container {
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
    padding: 40px;
    margin: 50px auto;
    border-radius: 10px;
    width: 80%;
    max-width: 500px;
    text-align: center;
}

.form-container h1 {
    font-size: 36px;
    color: #f1c40f;
    margin-bottom: 20px;
}

/* Form Labels and Inputs */
label {
    display: block;
    font-size: 18px;
    margin: 15px 0 5px;
    text-align: left;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"] {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    color: #333;
}

input[type="submit"] {
    background-color: #f1c40f;
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    width: 100%;
}

input[type="submit"]:hover {
    background-color: #e67e22;
}

/* Login Link */
p {
    color: #fff;
    font-size: 16px;
}

p a {
    color: #f1c40f;
    text-decoration: none;
}

p a:hover {
    color: #fff;
}

/* Responsive Design */
@media (max-width: 768px) {
    .form-container {
        width: 90%;
    }
}

</style>
<body>
   
    <div class="form-container">
        <h1>Create an Account</h1>
        <form action="registerpage" method="post">
        <h1>REGISTRATION</h1>
            <label for="username">Username:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            
            
            <label for="phone">Phone Number:</label>
           <input type="tel" id="phonenumber" name="phonenumber" required>
            
            
            <input type="submit" value="Register">
        </form>
        <br>
        <p>Already have an account? <a href="loginpage">Login here</a></p>
    </div>

    
</body>
</html>
