<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Expense Tracker</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 900px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
            font-size: 2em;
            margin-bottom: 15px;
        }

        p {
            font-size: 1.2em;
            line-height: 1.6;
            color: #555;
        }

        .features {
            list-style-type: none;
            padding: 0;
        }

        .features li {
            background: #f1f1f1;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            font-size: 1.1em;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            font-size: 1.1em;
            color: #333;
        }

        .footer a {
            color: #4CAF50;
            text-decoration: none;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        .back-button {
            display: inline-block;
            padding: 12px 20px;
            background-color: #f1c40f;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            text-align: center;
            font-size: 1.1em;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>About Us</h1>

        <p>Welcome to the Expense Tracker Tool! We understand how important it is to manage personal finances efficiently. Our goal is to help you keep track of your expenses and save money by providing you with a simple yet powerful tool.</p>

        <h2>Our Mission</h2>
        <p>Our mission is to offer a user-friendly platform for individuals to log, categorize, and analyze their spending. By keeping track of your expenses, you can identify spending habits, set budgets, and make informed financial decisions.</p>

        <h2>Features of the Expense Tracker Tool</h2>
        <ul class="features">
            <li><strong>Expense Logging:</strong> Add and track all your expenses in one place.</li>
            <li><strong>Category Management:</strong> Categorize your expenses for better insights.</li>
            <li><strong>Budget Tracking:</strong> Set budgets and monitor your spending habits.</li>
            <li><strong>Reports and Visualizations:</strong> View detailed reports and visualizations of your spending trends over time.</li>
            <li><strong>Easy-to-use Interface:</strong> A clean and intuitive user interface to make expense management simple and efficient.</li>
        </ul>

        <h2>Why Choose Us?</h2>
        <p>With a strong focus on simplicity and usability, our Expense Tracker Tool helps you take control of your finances. Whether you're a student, professional, or business owner, our tool offers all the features you need to manage your expenses effectively.</p>

        <div class="footer">
            <p>Want to get started? <a href="register.jsp">Sign Up</a> now and start tracking your expenses today!</p>
        </div>

        <a href="welcome.jsp" class="back-button">Back to Home</a> <!-- Link to home page -->
    </div>

</body>
</html>
