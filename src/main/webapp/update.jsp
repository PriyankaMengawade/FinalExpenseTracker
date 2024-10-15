<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Page</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
            color: #333;
            position: relative; /* To enable absolute positioning for h1 */
        }

        h1 {
            position: absolute;
            top: 20px; /* Position it at the top */
            left: 50%;
            transform: translateX(-50%);
            text-align: center;
            color: #4CAF50;
            width: 100%;
            font-size: 2em;
            padding-top: 5%;
        }

        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            margin-top: 80px; /* Space for the h1 tag at the top */
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"], input[type="number"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            form {
                padding: 20px;
            }

            h1 {
                font-size: 1.8em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                font-size: 0.95em;
            }

            button {
                font-size: 1em;
            }
        }

        @media screen and (max-width: 480px) {
            form {
                padding: 15px;
            }

            h1 {
                font-size: 1.6em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                padding: 8px;
                font-size: 0.85em;
            }

            button {
                font-size: 0.9em;
            }
        }

        @media screen and (max-width: 360px) {
            h1 {
                font-size: 1.4em;
            }

            input[type="text"], input[type="number"], input[type="date"] {
                padding: 7px;
                font-size: 0.8em;
            }

            button {
                font-size: 0.85em;
            }
        }
    </style>
</head>
<body>

<h1>Edit Page</h1>

<form action="/edit/${data.id}" method="post">

    <input type="hidden" name="id" value="${data.id}">

    Description: <input type="text" name="description" value="${data.description}">
    <br><br>

    Amount: <input type="number" name="amount" value="${data.amount}">
    <br><br>

    Date: <input type="date" name="date" value="${data.date}">
    <br><br>

    <button type="submit">Update</button>
</form>

</body>
</html>
