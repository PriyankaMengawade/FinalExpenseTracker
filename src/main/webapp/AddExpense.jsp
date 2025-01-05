<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Expense</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('your-background-image.jpg'); /* Set your background image */
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        h1 {
            text-align: center;
            color: #fff;
            font-size: 36px;

        }
        .form-container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 10px;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        form {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        label {
            font-size: 16px;
            color: #fff;
        }
        input[type="text"], input[type="number"], input[type="date"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
            color: #333;
        }
        button {
            background-color: #f1c40f; /* Updated to match registration/login style */
            color: white;
            padding: 12px 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049; /* Subtle hover effect */
        }
        input[type="text"]::placeholder {
            color: #ccc;
        }
        .form-container form:nth-child(2) {
            margin-top: 30px; /* Add spacing between the forms */
        }
        .form-container p {
            text-align: center;
            color: #fff;
        }
        .form-container a {
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>

    <div class="form-container">
      <h1>Add Expense</h1>
        <form action="addexpense" method="post">
        
            <label for="description">Description:</label>
            <input type="text" name="description" id="description" required>
            
            <label for="amount">Amount:</label>
            <input type="number" name="amount" id="amount" required>

            <label for="date">Date:</label>
            <input type="date" name="date" id="date" value="2024-10-01" required>

            <button type="submit">Add Expense</button>
        </form>

        <form action="fetch">
            <button type="submit">View all records</button>
        </form>

        <form action="/search">
            <input type="text" name="description" placeholder="Enter your description" required>
            <button type="submit">Search</button>
        </form>
    </div>

</body>
</html>
