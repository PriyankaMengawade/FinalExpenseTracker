<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help - Expense Tracker</title>
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
        <h1>Help</h1>

        <h2>Welcome to the Expense Tracker Help Page</h2>

        <p>If you're new to our Expense Tracker tool, here's how you can get started:</p>
        
        <h2>How to Add an Expense</h2>
        <p>To add a new expense, go to the "Add Expense" page, fill in the necessary details like description, amount, and date, then click "Add Expense" to save it to your account.</p>

        <h2>How to View Your Expenses</h2>
        <p>To view your expenses, click on the "View All Records" button, where you'll be able to see a table of all the expenses you’ve added.</p>

        <h2>How to Edit an Expense</h2>
        <p>If you need to edit an existing expense, simply click on the "Update" link next to the expense in the list and update the details as necessary.</p>

        <h2>How to Delete an Expense</h2>
        <p>To remove an expense, click on the "Delete" link next to the expense you want to delete. A confirmation will appear to make sure you want to proceed.</p>

        <div class="footer">
            <p>If you need further assistance, feel free to <a href="Contact.jsp">contact us</a>.</p>
        </div>

        <a href="welcome.jsp" class="back-button">Back to Home</a> <!-- Link to home page -->
    </div>

</body>
</html>
