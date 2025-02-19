<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
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
    background-image: url('background.jpg'); /* Replace with your background image */
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    color: #fff;
    padding: 20px;
}

/* Container for Form */
.container {
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
    padding: 40px;
    margin: 50px auto;
    border-radius: 10px;
    width: 80%;
    max-width: 400px;
    text-align: center;
}

.container h1 {
    font-size: 36px;
    color: #f1c40f;
    margin-bottom: 20px;
}

.container h4 {
    color: #ff6347; /* Error message color */
    font-size: 16px;
    margin-bottom: 20px;
}

/* Form Styling */
form {
    margin: 0;
}

form label {
    display: block;
    font-size: 18px;
    margin: 15px 0 5px;
    text-align: left;
}

form input {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fff;
    color: #333;
}

form button {
    background-color: #f1c40f;
    color: #fff;
    border: none;
    padding: 10px 20px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 5px;
    width: 100%;
}

form button:hover {
    background-color: #e67e22;
}

/* Link Styling */
a {
    color: #f1c40f;
    text-decoration: none;
}

a:hover {
    color: #fff;
}

/* Responsive Design */
@media (max-width: 768px) {
    .container {
        width: 90%;
    }
}
    
    </style>
</head>
<body>

<h1>Login</h1>
 <div class="container">
        <h1>Login Here</h1>
        <d:if test="${not empty errorMsg}">
            <h4>${errorMsg}</h4>
        </d:if>
        <form action="processLogin" method="post">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <button type="submit">Login</button>
        </form>
        <br><br>
        If not registered....<a href="registerpage"><b>Click Here</b></a>
    </div>

</body>
</html>
