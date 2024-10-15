<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            padding: 20px;
            flex-direction: column; /* Added to allow vertical centering */
        }

        h1 {
            color: #333;
            text-align: center; /* Center the text horizontally */
            margin-top: 0; /* Remove default margin */
            margin-bottom: 20px; /* Add some space between heading and form */
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        button {
            width: 100%;
            padding: 12px 15px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #5cb85c;
            outline: none;
            box-shadow: 0 0 5px rgba(92, 184, 92, 0.5);
        }

        button {
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
        }

        button:hover {
            background-color: #4cae4c;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            body {
                padding: 10px;
            }

            form {
                padding: 15px;
            }

            h1 {
                font-size: 24px;
            }

            input[type="text"],
            input[type="number"],
            button {
                font-size: 14px;
                padding: 10px;
            }
        }

        @media (max-width: 400px) {
            h1 {
                font-size: 20px;
            }

            input[type="text"],
            input[type="number"],
            button {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>

<h1>Login</h1>
<form action="login" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="text" id="email" name="email" required>

    <label for="password">Password:</label>
    <input type="number" id="password" name="password" required>

    <button type="submit">Login</button>
</form>

</body>
</html>
