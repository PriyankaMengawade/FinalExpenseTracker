<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terms of Service - Expense Tracker</title>
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
            text-align: justify;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            line-height: 1.6;
            color: #555;
        }

        h2 {
            font-size: 1.8em;
            margin-top: 30px;
            color: #4CAF50;
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
        <h1>Terms of Service</h1>

        <p>Welcome to the Expense Tracker tool! By using this service, you agree to the following terms and conditions:</p>

        <h2>1. Acceptance of Terms</h2>
        <p>By accessing or using the Expense Tracker tool, you agree to comply with these terms of service. If you do not agree, please do not use the service.</p>

        <h2>2. Use of the Service</h2>
        <p>You agree to use the Expense Tracker tool only for lawful purposes. You are responsible for all activity occurring under your account, and for maintaining the confidentiality of your account credentials.</p>

        <h2>3. Account Security</h2>
        <p>We take reasonable steps to protect your personal information, but it is your responsibility to ensure the security of your account. You must notify us immediately if you suspect any unauthorized activity.</p>

        <h2>4. Data Privacy</h2>
        <p>Your privacy is important to us. Please refer to our <a href="Privacy.jsp">Privacy Policy</a> for details on how we collect, use, and protect your personal information.</p>

        <h2>5. Service Availability</h2>
        <p>We aim to provide uninterrupted service; however, the tool may be temporarily unavailable due to maintenance or other unforeseen circumstances.</p>

        <h2>6. Changes to Terms</h2>
        <p>We reserve the right to update these terms at any time. Any changes will be posted on this page with an updated revision date. Your continued use of the service after such changes constitutes your acceptance of the new terms.</p>

        <h2>7. Limitation of Liability</h2>
        <p>We are not responsible for any damages or losses arising from the use of this service, including but not limited to direct, indirect, incidental, or consequential damages.</p>

        <h2>8. Contact Us</h2>
        <p>If you have any questions regarding these terms of service, please contact us through our <a href="Contact.jsp">Contact Us</a> page.</p>

        <div class="footer">
            <p>Thank you for using Expense Tracker! We hope our tool helps you manage your finances effectively.</p>
        </div>

        <a href="welcome.jsp" class="back-button">Back to Home</a> <!-- Link to home page -->
    </div>

</body>
</html>
