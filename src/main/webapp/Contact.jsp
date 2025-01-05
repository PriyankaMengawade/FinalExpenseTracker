<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Expense Tracker</title>
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

        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        label {
            font-size: 1.2em;
            color: #555;
        }

        input[type="text"], input[type="email"], textarea {
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
            color: #333;
            background-color: #f9f9f9;
        }

        textarea {
            resize: vertical;
            min-height: 120px;
        }

        input[type="text"]:focus, input[type="email"]:focus, textarea:focus {
            border-color: #4CAF50;
            outline: none;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #f1c40f;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
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
        <h1>Contact Us</h1>

        <p>If you have any questions or need further assistance, please don't hesitate to reach out. We're here to help!</p>

        <form action="/submitContact" method="post">
            <label for="name">Your Name</label>
            <input type="text" name="name" id="name" placeholder="Enter your name" required>

            <label for="email">Your Email</label>
            <input type="email" name="email" id="email" placeholder="Enter your email" required>

            <label for="message">Your Message</label>
            <textarea name="message" id="message" placeholder="Enter your message" required></textarea>

            <button type="submit">Submit</button>
        </form>

        <div class="footer">
            <p>Thank you for reaching out. We will get back to you as soon as possible.</p>
        </div>

        <a href="welcome.jsp" class="back-button">Back to Home</a> <!-- Link to home page -->
    </div>

</body>
</html>
